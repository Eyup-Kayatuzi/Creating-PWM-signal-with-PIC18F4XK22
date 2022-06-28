#line 1 "C:/Users/ARGE/Desktop/MicroC_Folder2/pwm/pwm.c"
void main() {
 OSCCON = 0x62;
 ANSELD = 0;

 PORTD = 0;
 TRISD = 0;
 PWM4_Init(5000);
 PWM4_Set_Duty(50);
 PWM4_Start();
}
