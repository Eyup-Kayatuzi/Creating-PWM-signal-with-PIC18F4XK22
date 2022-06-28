
_main:

;pwm.c,1 :: 		void main() {
;pwm.c,2 :: 		OSCCON = 0x62;
	MOVLW       98
	MOVWF       OSCCON+0 
;pwm.c,3 :: 		ANSELD = 0;
	CLRF        ANSELD+0 
;pwm.c,5 :: 		PORTD = 0;
	CLRF        PORTD+0 
;pwm.c,6 :: 		TRISD = 0;
	CLRF        TRISD+0 
;pwm.c,7 :: 		PWM4_Init(5000);
	BSF         T2CON+0, 0, 0
	BCF         T2CON+0, 1, 0
	MOVLW       99
	MOVWF       PR2+0, 0
	CALL        _PWM4_Init+0, 0
;pwm.c,8 :: 		PWM4_Set_Duty(50);
	MOVLW       50
	MOVWF       FARG_PWM4_Set_Duty_new_duty+0 
	CALL        _PWM4_Set_Duty+0, 0
;pwm.c,9 :: 		PWM4_Start();
	CALL        _PWM4_Start+0, 0
;pwm.c,10 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
