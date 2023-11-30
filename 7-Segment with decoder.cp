#line 1 "C:/Users/KarimAyyad28/Desktop/7-Segment with decoder/mikroC/7-Segment with decoder.c"
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
