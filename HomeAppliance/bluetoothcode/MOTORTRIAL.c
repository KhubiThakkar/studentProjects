#include <reg51.h>

// defining all the pins
sbit p1b0 = P1^0;		// port pin for LIGHT1
sbit p1b1 = P1^1;		// port pin for LIGHT2
sbit mtr = P2^6;		// port pin for motor driver input
sbit enable= P2^7;	// enable pin for motor driver

// pre declaration of 'delay' function
 void delay(unsigned int value);
 // START OF MAIN PROGRAM
 void main(void)
 {
	unsigned char myinstr;
	unsigned char speed;

	// clearing in case of garbage value
	enable =0;
	myinstr = 0;
	speed = 0;
	P2=0x00;
	P1 = 0x00;

	// setting up for serial communication
	TMOD=0x20;
	TH1=0xFD;
	TL1 = TH1;
	SCON=0x50;
	TR1=1;


	while(1){
		while(RI ==0)			// when you have no recieved value
		{
			// maintaining the speed
			if(speed == 'x')
			{	// use of PWM to control the speed: 25%
				mtr = 1;
				delay(25);
				mtr = 0;
				delay(75);
			}
			else if(speed == 'y')
			{	// use of PWM to control the speed: 50%
				mtr =1;
				delay(50);
				mtr = 0;
				delay(50);
			}
			else if(speed == 'z')
			{	// stop the motor
				enable = 0;
				mtr=0;
			}
		}
		if (SBUF < 0x6A)	  // to know if the value recieved is for light or for motor access
			myinstr=SBUF;			// if ascii value is less than 6A it's to control light
		else
			speed = SBUF;			// else it's to control the motor


		if(myinstr == 'a')	// value to turn on LIGHT1
		{
			p1b0=1;	
		}
		else if(myinstr == 'b')		// value to turn off LIGHT1
		{
			p1b0=0;
		}
		else if(myinstr == 'c')		// value to turn on LIGHT2
		{
		 	p1b1=1;
		}
		else if(myinstr == 'd')		// value to turn off LIGHT2
		{
			p1b1=0;
		}


		if(speed == 'x')		// to start the motor at 25% duty cycle
		{
			enable = 1;				  
		 	mtr = 1;
			delay(25);
			mtr = 0;
			delay(75);
		
		}
		else if(speed == 'y')		// to start motor at 75% duty cycle
		{
			enable = 1;
			mtr =1;
			delay(50);
			mtr = 0;
			delay(50);
		}
		else if(speed == 'z')		// to turn off motor
		{
			enable = 0;
			mtr=0;
		}

		// clearing interrupt bit and enabling recieving again
		REN = 1;
		RI = 0;
	}	
}
 // function for generating delay
	void delay(unsigned int value){
		unsigned int x,y;
		for(x=0;x<127;x++)
			for (y=0;y<value;y++);
	}