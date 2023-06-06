void setup() {
  // put your setup code here, to run once:
pinMode(13,OUTPUT);
pinMode(12,OUTPUT);
pinMode(11,OUTPUT);
}
int i=255;
void loop() {
  // put your main code here, to run repeatedly:
digitalWrite(13,LOW);
digitalWrite(12,HIGH);
//for(i=0;i<256;i++)
//{
analogWrite(11,i);
delay(5000);

//}
//for(i=255;i>=0;i--)
//{
//  analogWrite(11,i);
//}

digitalWrite(13,HIGH);
digitalWrite(12,LOW);
delay(5000);

//for(i=0;i<256;i++)
//{
//analogWrite(11,i);
//
//}
//for(i=255;i>=0;i--)
//{
//  analogWrite(11,i);
//}
}
