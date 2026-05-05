/* 
This is a test sketch for the Adafruit assembled Motor Shield for Arduino v2
It won't work with v1.x motor shields! Only for the v2's with built in PWM
control

For use with the Adafruit Motor Shield v2 
---->	http://www.adafruit.com/products/1438
*/


#include <Wire.h>
#include <Adafruit_MotorShield.h>


// Create the motor shield object with the default I2C address
Adafruit_MotorShield AFMS = Adafruit_MotorShield(); 
// Or, create it with a different I2C address (say for stacking)
// Adafruit_MotorShield AFMS = Adafruit_MotorShield(0x61); 

// Connect a stepper motor with 200 steps per revolution (1.8 degree)
// to motor port #2 (M3 and M4)
Adafruit_StepperMotor *myMotorx = AFMS.getStepper(200, 1);
Adafruit_StepperMotor *myMotory = AFMS.getStepper(200, 2);

int x ; // for incoming serial data
int y = 1 ; // for incoming serial data

void setup() {
 Serial.begin(115200);
 Serial.setTimeout(1);

  AFMS.begin();  // create with the default frequency 1.6KHz
  //AFMS.begin(1000);  // OR with a different frequency, say 1KHz
  
  myMotorx->setSpeed(10);  // 10 rpm   
  myMotory->setSpeed(10);  // 10 rpm   


}

void loop() {
  //Serial.println("Single coil steps");

  while (!Serial.available());
  x = Serial.readString().toInt();
  Serial.print(x + 1);

    
  // read the incoming byte:
  if  (x== 1) {
  myMotorx->step(10, FORWARD, SINGLE); 
  };    
  if  (x== 2) {
  myMotorx->step(10, BACKWARD, SINGLE); 
  };    
  if  (x== 3) {
  myMotory->step(10, FORWARD, SINGLE); 
  };    
  if  (x== 4) {
  myMotory->step(10, BACKWARD, SINGLE); 
  };    
  if  (x== 5) {
  myMotorx->setSpeed(50);  // 10 rpm   
  myMotorx->step(1000, FORWARD, SINGLE); 
  myMotorx->setSpeed(10);  // 10 rpm   
  };    
  if  (x== 6) {
  myMotorx->setSpeed(50);  // 10 rpm   
  myMotorx->step(1000, BACKWARD, SINGLE); 
  myMotorx->setSpeed(10);  // 10 rpm   
  };    
  if  (x== 7) {
  myMotory->setSpeed(50);  // 10 rpm   
  myMotory->step(1000, FORWARD, SINGLE); 
  myMotory->setSpeed(10);  // 10 rpm   
  };    
  if  (x== 8) {
  myMotory->setSpeed(50);  // 10 rpm   
  myMotory->step(1000, BACKWARD, SINGLE); 
  myMotory->setSpeed(10);  // 10 rpm   
  };    
  delay(5);

  

}
