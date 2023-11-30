/* Second Lab: 7-segment with decoder
   Inputs: PORTD.RD0 as start switch and MCLR for reset/stop
   Outputs: The first 4 pins of PORTB are connected directly to the decoder (RB0 to pin A, RB1 to pin B,
   RB2 to pin C and RB3 to pin D)


*/




void main() {
TRISD=0b00000001;
PORTD=0;
TRISB=0;
PORTB=0;
while (PORTD.RD0==0);
while(1)
{PORTB++;
delay_ms(1000);
if (PORTB==9) {PORTB=0; delay_ms(1000);}
}


}