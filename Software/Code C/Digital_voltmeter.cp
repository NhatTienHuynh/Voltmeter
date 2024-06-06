#line 1 "C:/Users/TuanTu/OneDrive - hcmut.edu.vn/Desktop/Nhom1_Chude8/Software/Digital_voltmeter.c"

sbit LCD_EN at RB2_bit;
sbit LCD_RS at RB4_bit;
sbit LCD_D4 at RD7_bit;
sbit LCD_D5 at RD6_bit;
sbit LCD_D6 at RD5_bit;
sbit LCD_D7 at RD4_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB2_bit;
sbit LCD_D4_Direction at TRISD7_bit;
sbit LCD_D5_Direction at TRISD6_bit;
sbit LCD_D6_Direction at TRISD5_bit;
sbit LCD_D7_Direction at TRISD4_bit;

 unsigned int v,i;
 bit press, mode;
 unsigned int store_v, store_i;
char look(int a)
{
 switch(a)
 {
 case 0:
 return '0';
 case 1:
 return '1';
 case 2:
 return '2';
 case 3:
 return '3';
 case 4:
 return '4';
 case 5:
 return '5';
 case 6:
 return '6';
 case 7:
 return '7';
 case 8:
 return '8';
 case 9:
 return '9';
 default:
 return '.';
 }
}

char intToString(unsigned int value){
 char *valueStr = "00.00";
 valueStr[0] = look(value/10000);
 valueStr[1] = look((value/1000)%10);
 valueStr[3] = look((value/100)%10);
 valueStr[4] = look((value/10)%10);
 return valueStr;
}

void xuatGiaTriDo(unsigned int v,unsigned int i){
 v = ADC_Read(1);
 v = (v*4.89*6);
 Lcd_Out(1,1,"Voltage = ");
 Lcd_Out(1,11, intToString(v));
 Lcd_Out(1,16,"V");

 i = ADC_Read(3);
 i = (i*4.89);
 i = (2500- i)/0.1 ;

 Lcd_Out(2,1,"Current = ");
 Lcd_Out(2,11, intToString(i));
 Lcd_Out(2,16,"A");
 delay_ms(100);
}

void luuGiaTri(){
 store_v = ADC_Read(1);
 store_i = ADC_Read(3);
}

void check_state(){
 int count;
 count = 0;

 if(Button(&PORTB, 0, 1, 0)){
 while(1){
 count += 1;
 delay_ms(50);

 if(count > 20){
 mode = (mode ? 0 : 1);
 break;
 }
 if(!Button(&PORTB, 0, 1, 0)) {
 press = 1;
 break;
 }
 }
 }
}


void xuatGiaTriLuu(unsigned int v, unsigned int i){
 v = (v*4.89*6);

 Lcd_Out(2,1, intToString(v));
 Lcd_Out(2,6,"V   ");

 i = (i*4.89);
 i = (2500- i)/0.1 ;
 Lcd_Out(2,11, intToString(i));
 Lcd_Out(2,16,"A");
 delay_ms(100);
}

void main()
{
 TRISB.B3 = 0;
 PORTB.B3 = 0;
 CMCON = 0x07;
 TRISA = 0xFF;
 PORTA = 0X00;
 ADCON1 = 0x00;
 Lcd_Init();
 ADC_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 mode = 0;
 press = 0;

 while(1){
 delay_ms(500);
 check_state();
 if(mode){
 Lcd_Out(1,1,"Stored Value:   ");
 xuatGiaTriLuu(store_v,store_i);
 }
 else{
 xuatGiaTriDo(v,i);
 if(press){
 luuGiaTri();
 Lcd_Out(1,1,"Value Stored    ");
 Lcd_Out(2,1,"                ");
 press = 0;
 delay_ms(500);
 }
 }

 }
}
