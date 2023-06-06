#include<reg5131.h>
sbit LED0 = P1^0;
sbit LED1 = P1^1;
sbit LED2 = P1^2;
sbit LED3 = P1^3;

void delay(void);

void main(){
	while(1){
		LED0 = 1;
		LED1 = 1;
		LED2 = 1;
		LED3 = 1;
		delay();
		LED0 = 0;
		LED1 = 0;
		LED2 = 0;
		LED3 = 0;
		delay();
	}
}

void delay(void){
	int i,j;
	for(i=0; i<10; i++){
		for(j=0; j<10000; j++);
	}
}