#include <reg5131.h>
// declaring variables
sbit led1 = P2^0;
sbit led2 = P2^1;
sbit led3 = P2^2;
sbit led4 = P2^3;
sbit led5 = P2^4;
sbit led6 = P2^5;
sbit led7 = P2^6;
sbit led8 = P2^7;

sbit input1 = P1^0;
sbit input2 = P1^1;
sbit input3 = P1^2;
sbit input4 = P1^3;

void delay(int i);

void main(){
	input1=1;
	input2=1;
	input3=1;
	input4=1;
	P2 = 0x00;
	P1 = 0x00;
	while(1){
		while(input1==1){	//condition for sequencial led glow
			P2=0x00;
			led1 = 1;
			delay(1000);
			led2 = 1;
			delay(1000);
			led3 = 1;
			delay(1000);
			led4 = 1;
			delay(1000);
			led5 = 1;
			delay(1000);
			led6 = 1;
			delay(1000);
			led7 = 1;
			delay(1000);
			led8 = 1;
			delay(1000);
			led1 = 0;
			delay(1000);
			led2 = 0;
			delay(1000);
			led3 = 0;
			delay(1000);
			led4 = 0;
			delay(1000);
			led5 = 0;
			delay(1000);
			led6 = 0;
			delay(1000);
			led7 = 0;
			delay(1000);
			led8 = 0;
			delay(1000);
		}
		while(input2==1){	//condition for simultaneous led glow
			P2=0x00;
			led1 = 1;
			led2 = 1;
			led3 = 1;
			led4 = 1;
			led5 = 1;
			led6 = 1;
			led7 = 1;
			led8 = 1;
			delay(100);
			led1 = 0;
			led2 = 0;
			led3 = 0;
			led4 = 0;
			led5 = 0;
			led6 = 0;
			led7 = 0;
			led8 = 0;
			delay(100);
		}
		while(input3==1){	//simultaneous blinking of odd leds
			P2=0x00;
			led1 = 1;
			led3 = 1;
			led5 = 1;
			led7 = 1;
			delay(100);
			led1 = 0;
			led3 = 0;
			led5 = 0;
			led7 = 0;
			delay(100);
		}
		while(input4==1){	//simultaneous blinking of even leds
			P2=0x00;
			led2 = 1;
			led4 = 1;
			led6 = 1;
			led8 = 1;
			delay(100);
			led2 = 0;
			led4 = 0;
			led6 = 0;
			led8 = 0;
			delay(100);
		}
	}
}
//funtion for generating delay
void delay(int i){
	int x,y;
	for(x=0;x<i;x++){
		for(y=0;y<=1000;y++);
	}
}