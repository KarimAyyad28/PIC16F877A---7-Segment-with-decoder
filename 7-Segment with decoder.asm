
_main:

;7-Segment with decoder.c,1 :: 		void main() {
;7-Segment with decoder.c,3 :: 		TRISD=0b00000001;
	MOVLW      1
	MOVWF      TRISD+0
;7-Segment with decoder.c,4 :: 		PORTD=0;
	CLRF       PORTD+0
;7-Segment with decoder.c,5 :: 		TRISB=0;
	CLRF       TRISB+0
;7-Segment with decoder.c,6 :: 		PORTB=0;
	CLRF       PORTB+0
;7-Segment with decoder.c,7 :: 		while (PORTD.RD0==0);
L_main0:
	BTFSC      PORTD+0, 0
	GOTO       L_main1
	GOTO       L_main0
L_main1:
;7-Segment with decoder.c,8 :: 		while(1)
L_main2:
;7-Segment with decoder.c,9 :: 		{PORTB++;
	INCF       PORTB+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;7-Segment with decoder.c,10 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;7-Segment with decoder.c,11 :: 		if (PORTB==9) {PORTB=0; delay_ms(1000);}
	MOVF       PORTB+0, 0
	XORLW      9
	BTFSS      STATUS+0, 2
	GOTO       L_main5
	CLRF       PORTB+0
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
L_main5:
;7-Segment with decoder.c,13 :: 		}
	GOTO       L_main2
;7-Segment with decoder.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
