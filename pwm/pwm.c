void main() {
      OSCCON = 0x62;
      ANSELD = 0;

      PORTD = 0;
      TRISD = 0;
      PWM4_Init(5000);
      PWM4_Set_Duty(50);
      PWM4_Start();
}
/*
void main() {
      OSCCON = 0x62;
      ANSELE = 0;
      CCP5CON |= 0X00001100;
      PORTE = 0;
      TRISE = 0;
      PWM5_Init(5000);
      PWM5_Set_Duty(6);
      PWM5_Start();
}
*/