import serial
import time
import cv2
import numpy as np
from multiprocessing import Process
from pynput import keyboard as kb
from opto import Opto
from pyueye import ueye

def list_serial_ports():
    """
    Scans and returns a list of available COM ports.
    """
    ports = ['COM%s' % (i + 1) for i in range(256)]
    found_ports = []
    for port in ports:
        try:
            s = serial.Serial(port)
            s.close()
            found_ports.append(port)
        except (OSError, serial.SerialException):
            pass
    return found_ports

def get_port_id(device_serial):
    """
    Sends an identification signal to a serial device and returns its response.
    """
    time.sleep(1)
    device_serial.write(bytes('0', 'utf-8'))
    time.sleep(1)
    data = device_serial.readline()
    return data

def find_device_port(device_name):
    """
    Identifies the specific COM port for Arduino1, Arduino2, or the ETL 
    based on their unique identification strings.
    """
    available_ports = list_serial_ports()

    for com in available_ports:
        try:
            ser = serial.Serial(port=com, baudrate=115200, timeout=.1)
            time.sleep(1)
            data = get_port_id(ser)
            
            # Logic for identifying each device
            if device_name == 'ard1' and data == b'1':
                ser.close()
                print(f"{device_name} connected on {com}")
                return com
            if device_name == 'ard2' and data == b'2':
                ser.close()
                print(f"{device_name} connected on {com}")
                return com
            if device_name == 'ETL' and data == b'E\x03r\x91\r\n':
                ser.close()
                print(f"{device_name} connected on {com}")
                return com
            ser.close()
        except Exception as e:
            print(f"Error checking port {com}: {e}")
            
    print(f"Device {device_name} not found.")
    return -1

def send_command(command, device_serial):
    """
    Sends a string command to the specified serial device.
    """
    device_serial.write(bytes(command, 'utf-8'))
    time.sleep(0.05)
    return 0

def on_key_press(key, arduino1, arduino2, etl, mem_ptr, width, height, bitspixel, lineinc, directory, index):
    """
    Keyboard listener handler. Controls X, Y, Z movement, ETL current, and system shutdown.
    """
    current_etl_ma = etl.current()

    # System Exit
    if key == kb.KeyCode.from_char('p'):
        arduino1.close()
        arduino2.close()
        etl.close(soft_close=True)
        print("Shutting down system...")
        return False

    # Arduino 1 Controls (typically X-Y Axis)
    mapping_ard1 = {
        'a': '1', 'd': '2', 's': '3', 'w': '4',
        'j': '5', 'l': '6', 'k': '7', 'i': '8'
    }
    
    # Arduino 2 Controls (typically Z-Axis and Illumination)
    mapping_ard2 = {
        'q': '1', 'e': '2', # Z movement
        'u': '5', 'o': '6', # Illumination
        'f': '3', 't': '4'  # Extras
    }

    char = getattr(key, 'char', None)
    
    if char in mapping_ard1:
        send_command(mapping_ard1[char], arduino1)
    
    if char in mapping_ard2:
        send_command(mapping_ard2[char], arduino2)

    # ETL Current Control (Focusing)
    if char == 'x': # Decrease current
        if current_etl_ma > 2:
            current_etl_ma -= 2
            etl.current(current_etl_ma)
            print(f"ETL Current: {current_etl_ma} mA")

    if char == 'z': # Increase current
        if current_etl_ma < 290:
            current_etl_ma += 2
            etl.current(current_etl_ma)
            print(f"ETL Current: {current_etl_ma} mA")

    return True

def run_main_controller():
    """
    Main function to initialize hardware (Arduinos, ETL, and uEye Camera) 
    and start the keyboard control loop.
    """
    # 1. Hardware Discovery
    com_a1 = find_device_port('ard1')
    com_a2 = find_device_port('ard2')
    com_etl = find_device_port('ETL')

    if com_a1 == -1 or com_a2 == -1 or com_etl == -1:
        print("Hardware initialization failed. Check connections.")
        return False

    # 2. Hardware Initialization
    etl = Opto(port=com_etl)
    etl.connect()
    etl.current(0)
    
    arduino1 = serial.Serial(port=com_a1, baudrate=115200, timeout=.1)
    arduino2 = serial.Serial(port=com_a2, baudrate=115200, timeout=.1)
    time.sleep(1)

    # 3. uEye Camera Initialization
    hcam = ueye.HIDS(0)
    ueye.is_InitCamera(hcam, None)
    ueye.is_SetColorMode(hcam, ueye.IS_CM_BGR8_PACKED)

    # Set Region of Interest (ROI)
    width, height = 1280, 1080
    rect_aoi = ueye.IS_RECT()
    rect_aoi.s32X = rect_aoi.s32Y = ueye.int(0)
    rect_aoi.s32Width, rect_aoi.s32Height = ueye.int(width), ueye.int(height)
    ueye.is_AOI(hcam, ueye.IS_AOI_IMAGE_SET_AOI, rect_aoi, ueye.sizeof(rect_aoi))

    # Memory Allocation
    mem_ptr = ueye.c_mem_p()
    mem_id = ueye.int()
    bitspixel = 24
    ueye.is_AllocImageMem(hcam, width, height, bitspixel, mem_ptr, mem_id)
    ueye.is_SetImageMem(hcam, mem_ptr, mem_id)
    ueye.is_CaptureVideo(hcam, ueye.IS_DONT_WAIT)

    lineinc = width * int((bitspixel + 7) / 8)
    save_directory = 'C:\\Users\\aleja\\OneDrive\\Documents\\Doctorado\\Setiembre2022\\'
    img_index = 0

    print('System Ready. Use keyboard to control.')

    # 4. Control Loop
    with kb.Listener(on_press=lambda key: on_key_press(
            key, arduino1, arduino2, etl, mem_ptr, width, height, 
            bitspixel, lineinc, save_directory, img_index)) as listener:
        listener.join()

    return True

def run_ueye_camera_preview():
    """
    Optional process to display the uEye camera live feed in a separate window.
    """
    hcam = ueye.HIDS(0)
    ueye.is_InitCamera(hcam, None)
    ueye.is_SetColorMode(hcam, ueye.IS_CM_BGR8_PACKED)

    width, height = 1280, 1080
    mem_ptr = ueye.c_mem_p()
    mem_id = ueye.int()
    bitspixel = 24
    
    ueye.is_AllocImageMem(hcam, width, height, bitspixel, mem_ptr, mem_id)
    ueye.is_SetImageMem(hcam, mem_ptr, mem_id)
    ueye.is_CaptureVideo(hcam, ueye.IS_DONT_WAIT)
    lineinc = width * int((bitspixel + 7) / 8)

    while True:
        img = ueye.get_data(mem_ptr, width, height, bitspixel, lineinc, copy=True)
        img = np.reshape(img, (height, width, 3))
        cv2.imshow('uEye Live Feed (Press O to exit)', img)
        
        if cv2.waitKey(1) & 0xFF == ord('o'):
            break

    cv2.destroyAllWindows()
    ueye.is_StopLiveVideo(hcam, ueye.IS_FORCE_VIDEO_STOP)
    ueye.is_ExitCamera(hcam)

if __name__ == '__main__':
    # Start the controller as the main process
    main_process = Process(target=run_main_controller)
    main_process.start()
    main_process.join()