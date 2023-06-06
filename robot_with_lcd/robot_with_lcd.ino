int left_in1=13;
int left_in2=12;
int left_en=11;
int right_in1=9;
int right_in2=8;
int right_en=10;
int left=4;
int right=5;
int front=6;
int back=7;

// include the library code:
#include <LiquidCrystal.h>

// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
const int rs = 2, en = 3, d4 =A3 , d5 = A2, d6 = A1, d7 = A0;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

void setup() {
  // put your setup code here, to run once:
  pinMode(left_in1,OUTPUT);
  pinMode(left_in2,OUTPUT);
  pinMode(left_en,OUTPUT);
  //declaration of output terminals for left side wheels
  pinMode(right_in1,OUTPUT);
  pinMode(right_in2,OUTPUT);
  pinMode(right_en,OUTPUT);
  //declaration of output terminals of right side wheels
  pinMode(left,INPUT);
  pinMode(right,INPUT);
  pinMode(front,INPUT);
  pinMode(back,INPUT);
  //input taken from buttons
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  lcd.clear();
  }
int motionL;
int motionR;
int motionF;
int motionB;
//assign variables for taking input from buttons

void loop()
{
  // put your main code here, to run repeatedly:
  //read the input of bottons
  motionL=digitalRead(left);
  motionR=digitalRead(right);
  motionF=digitalRead(front);
  motionB=digitalRead(back);
  //CASE 1: WHEN LEFT BUTTON IS PRESSED, ROBOT WILL MOVE LEFT

  if(motionL==1){
    analogWrite(left_en,0); 
    analogWrite(right_en,255);
    digitalWrite(right_in2,HIGH);
    digitalWrite(right_in1,LOW);
    lcd.print("moving left");
    delay(500);
    lcd.clear();
    }
  //CASE 2: WHEN RIGHT BUTTON IS PRESSED, THE ROBOT SHOULD TAKE A RIGHT TURN
  else if(motionR==1){
    digitalWrite(left_in1,HIGH);
    digitalWrite(left_in2,LOW);
    analogWrite(right_en,0);
    analogWrite(left_en,255);
    lcd.print("moving right");
    delay(500);
    lcd.clear();
    }
  //CASE 3:WHEN FRONT BUTTON IS PRESSED, THE ROBOT SHOULD MOVE FORWARD
  else if(motionF==1){
    digitalWrite(left_in1,HIGH);
    digitalWrite(left_in2,LOW);
    digitalWrite(right_in2,HIGH);
    digitalWrite(right_in1,LOW);
    analogWrite(left_en,255);
    analogWrite(right_en,255);
    lcd.print("moving front");
    delay(500);
    lcd.clear();
    }
  //CASE 4:WHEN BACK  BUTTON IS PRESSED, THE ROBOT SHOULD MOVE BACKWARD
  else if(motionB==1){
    digitalWrite(left_in2,HIGH);
    digitalWrite(left_in1,LOW);
    digitalWrite(right_in1,HIGH);
    digitalWrite(right_in2,LOW);
    analogWrite(left_en,255);
    analogWrite(right_en,255);
    lcd.print("moving back");
    delay(500);
    lcd.clear();
  }
  //CASE 5:WHEN NO BUTTON IS PRESSED
  else{
    analogWrite(right_en,0);
    analogWrite(left_en,0);
    lcd.clear();
  }
}
