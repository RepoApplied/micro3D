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
Adafruit_StepperMotor *myMotorz = AFMS.getStepper(200, 1);

int x ; // for incoming serial data
int speedz = 10;
bool deriv = true;
int  speedmax =70;
bool F = true;
bool FF = true;
  
void setup() {
 Serial.begin(115200);
 Serial.setTimeout(1);
  
  AFMS.begin();  // create with the default frequency 1.6KHz  
  myMotorz->setSpeed(speedz);  // 10 rpm   

  pinMode(8,OUTPUT);
  pinMode(9,OUTPUT);


  digitalWrite(8, LOW);
  digitalWrite(9, F);

  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);

  digitalWrite(12, LOW);
  digitalWrite(13, FF);
}

void loop() {
  //Serial.println("Single coil steps");

  while (!Serial.available());
  x = Serial.readString().toInt();
  Serial.print(x + 2);


  
  if  (x== 1) {
  myMotorz->step(10, FORWARD, SINGLE); 
  };    
  if  (x== 2) {
  myMotorz->step(10, BACKWARD, SINGLE); 
  };    
  if  (x== 3) {
  F = !F;
  digitalWrite(9, F); 
  };    
  if  (x== 4) {
  FF = !FF;
  digitalWrite(13, FF); 
  };      
  if  (x== 5) {
  myMotorz->step(100, FORWARD, SINGLE); 
  };      
  if  (x== 6) {
  myMotorz->step(100, BACKWARD, SINGLE); 
  };      

  delay(5);

}
