void setup() {
  // put your setup code here, to run once:
pinMode(13,INPUT);
pinMode(6,OUTPUT);
}
int data;
void loop() {
  // put your main code here, to run repeatedly:
data=digitalRead(13);
if(data==1)
{digitalWrite(6,HIGH);
delay(1000);
digitalWrite(6,LOW);
delay(1000);
}
else(data==0);
{digitalWrite(6,LOW);}
}
