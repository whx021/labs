#include <stdio.h>
int main(int argc, char **argv) {
	float a1 = 0x8000000, a2 = 0x8000001, a3 = 0x8000014, a4 = 0x8000017;
	float b1 = 0x8000019, b2 = 0x800000c, b3 = 0x800000d;
	float c1 = 0x8000008, c2 = 0x8000018;
	float g = 0.1;
	printf("a1=%xH,a2=%xH,a3=%xH,a4=%xH\n",(int)a1,(int)a2,(int)a3,(int)a4);
	printf("b1=%xH,b2=%xH,b3=%xH\n",(int)b1,(int)b2,(int)b3);
	printf("c1=%xH,c2=%xH\n",(int)c1,(int)c2);
	printf("g=%.20f\n",g);   

}
