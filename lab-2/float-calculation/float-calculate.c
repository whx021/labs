#include <stdio.h>
int main(int argc, char **argv) {
	double xd = 0.1;
	float xf = 0.1;			//32bit / float
	int xi1 = 0x0ccccccd; 	//32bit / fixed point decimal / enter
	int xi2 = 0x0ccccd; 	//24bit / fixed point decimal / enter
	int xi3 = 0x0ccccc;		//24bit / fixed point decimal / abandon
	double yf, yi1, yi2, yi3;	//error
	yf = (xf - xd)*100*60*60*10*2000;
	yi1 = ((double)(xi1)/0x80000000 - xd)*100*60*60*10*2000;
	yi2 = ((double)(xi2)/0x80000000 - xd)*100*60*60*10*2000;
	yi3 = (xd - (double)(xi3)/0x80000000)*100*60*60*10*2000;
	printf("%f //32bit / float\n", yf);
	printf("%f //32bit / fixed point decimal / enter\n", yi1);
	printf("%f //24bit / fixed point decimal / enter\n", yi2);
	printf("%f //24bit / fixed point decimal / abandon\n", yi3);
    return 0;
}
