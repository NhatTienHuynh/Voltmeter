
_look:

;Digital_voltmeter.c,19 :: 		char look(int a)                      //ham look up doi int thanh str
;Digital_voltmeter.c,21 :: 		switch(a)
	GOTO       L_look0
;Digital_voltmeter.c,23 :: 		case 0:
L_look2:
;Digital_voltmeter.c,24 :: 		return '0';
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_look
;Digital_voltmeter.c,25 :: 		case 1:
L_look3:
;Digital_voltmeter.c,26 :: 		return '1';
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_look
;Digital_voltmeter.c,27 :: 		case 2:
L_look4:
;Digital_voltmeter.c,28 :: 		return '2';
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_look
;Digital_voltmeter.c,29 :: 		case 3:
L_look5:
;Digital_voltmeter.c,30 :: 		return '3';
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_look
;Digital_voltmeter.c,31 :: 		case 4:
L_look6:
;Digital_voltmeter.c,32 :: 		return '4';
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_look
;Digital_voltmeter.c,33 :: 		case 5:
L_look7:
;Digital_voltmeter.c,34 :: 		return '5';
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_look
;Digital_voltmeter.c,35 :: 		case 6:
L_look8:
;Digital_voltmeter.c,36 :: 		return '6';
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_look
;Digital_voltmeter.c,37 :: 		case 7:
L_look9:
;Digital_voltmeter.c,38 :: 		return '7';
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_look
;Digital_voltmeter.c,39 :: 		case 8:
L_look10:
;Digital_voltmeter.c,40 :: 		return '8';
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_look
;Digital_voltmeter.c,41 :: 		case 9:
L_look11:
;Digital_voltmeter.c,42 :: 		return '9';
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_look
;Digital_voltmeter.c,43 :: 		default:
L_look12:
;Digital_voltmeter.c,44 :: 		return '.';
	MOVLW      46
	MOVWF      R0+0
	GOTO       L_end_look
;Digital_voltmeter.c,45 :: 		}
L_look0:
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look31
	MOVLW      0
	XORWF      FARG_look_a+0, 0
L__look31:
	BTFSC      STATUS+0, 2
	GOTO       L_look2
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look32
	MOVLW      1
	XORWF      FARG_look_a+0, 0
L__look32:
	BTFSC      STATUS+0, 2
	GOTO       L_look3
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look33
	MOVLW      2
	XORWF      FARG_look_a+0, 0
L__look33:
	BTFSC      STATUS+0, 2
	GOTO       L_look4
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look34
	MOVLW      3
	XORWF      FARG_look_a+0, 0
L__look34:
	BTFSC      STATUS+0, 2
	GOTO       L_look5
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look35
	MOVLW      4
	XORWF      FARG_look_a+0, 0
L__look35:
	BTFSC      STATUS+0, 2
	GOTO       L_look6
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look36
	MOVLW      5
	XORWF      FARG_look_a+0, 0
L__look36:
	BTFSC      STATUS+0, 2
	GOTO       L_look7
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look37
	MOVLW      6
	XORWF      FARG_look_a+0, 0
L__look37:
	BTFSC      STATUS+0, 2
	GOTO       L_look8
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look38
	MOVLW      7
	XORWF      FARG_look_a+0, 0
L__look38:
	BTFSC      STATUS+0, 2
	GOTO       L_look9
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look39
	MOVLW      8
	XORWF      FARG_look_a+0, 0
L__look39:
	BTFSC      STATUS+0, 2
	GOTO       L_look10
	MOVLW      0
	XORWF      FARG_look_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__look40
	MOVLW      9
	XORWF      FARG_look_a+0, 0
L__look40:
	BTFSC      STATUS+0, 2
	GOTO       L_look11
	GOTO       L_look12
;Digital_voltmeter.c,46 :: 		}
L_end_look:
	RETURN
; end of _look

_intToString:

;Digital_voltmeter.c,48 :: 		char intToString(unsigned int value){
;Digital_voltmeter.c,49 :: 		char *valueStr = "00.00";
	MOVLW      ?lstr1_Digital_voltmeter+0
	MOVWF      intToString_valueStr_L0+0
;Digital_voltmeter.c,50 :: 		valueStr[0] = look(value/10000);
	MOVF       intToString_valueStr_L0+0, 0
	MOVWF      FLOC__intToString+0
	MOVLW      16
	MOVWF      R4+0
	MOVLW      39
	MOVWF      R4+1
	MOVF       FARG_intToString_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_intToString_value+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      FARG_look_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_look_a+1
	CALL       _look+0
	MOVF       FLOC__intToString+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Digital_voltmeter.c,51 :: 		valueStr[1] = look((value/1000)%10);
	INCF       intToString_valueStr_L0+0, 0
	MOVWF      FLOC__intToString+0
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_intToString_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_intToString_value+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_look_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_look_a+1
	CALL       _look+0
	MOVF       FLOC__intToString+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Digital_voltmeter.c,52 :: 		valueStr[3] = look((value/100)%10);
	MOVLW      3
	ADDWF      intToString_valueStr_L0+0, 0
	MOVWF      FLOC__intToString+0
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_intToString_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_intToString_value+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_look_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_look_a+1
	CALL       _look+0
	MOVF       FLOC__intToString+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Digital_voltmeter.c,53 :: 		valueStr[4] = look((value/10)%10);
	MOVLW      4
	ADDWF      intToString_valueStr_L0+0, 0
	MOVWF      FLOC__intToString+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_intToString_value+0, 0
	MOVWF      R0+0
	MOVF       FARG_intToString_value+1, 0
	MOVWF      R0+1
	CALL       _Div_16X16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16X16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_look_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_look_a+1
	CALL       _look+0
	MOVF       FLOC__intToString+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Digital_voltmeter.c,54 :: 		return valueStr;
	MOVF       intToString_valueStr_L0+0, 0
	MOVWF      R0+0
;Digital_voltmeter.c,55 :: 		}
L_end_intToString:
	RETURN
; end of _intToString

_xuatGiaTriDo:

;Digital_voltmeter.c,57 :: 		void xuatGiaTriDo(unsigned int v,unsigned int i){           //ham xuat gia tri dang do
;Digital_voltmeter.c,58 :: 		v = ADC_Read(1);                  // RA0 is Analog input
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      FARG_xuatGiaTriDo_v+0
	MOVF       R0+1, 0
	MOVWF      FARG_xuatGiaTriDo_v+1
;Digital_voltmeter.c,59 :: 		v = (v*4.89*6);                    // 4.89 is Resulation
	CALL       _word2double+0
	MOVLW      225
	MOVWF      R4+0
	MOVLW      122
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      64
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2word+0
	MOVF       R0+0, 0
	MOVWF      FARG_xuatGiaTriDo_v+0
	MOVF       R0+1, 0
	MOVWF      FARG_xuatGiaTriDo_v+1
;Digital_voltmeter.c,60 :: 		Lcd_Out(1,1,"Voltage = ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Digital_voltmeter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,61 :: 		Lcd_Out(1,11, intToString(v));
	MOVF       FARG_xuatGiaTriDo_v+0, 0
	MOVWF      FARG_intToString_value+0
	MOVF       FARG_xuatGiaTriDo_v+1, 0
	MOVWF      FARG_intToString_value+1
	CALL       _intToString+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,62 :: 		Lcd_Out(1,16,"V");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Digital_voltmeter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,64 :: 		i = ADC_Read(3);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      FARG_xuatGiaTriDo_i+0
	MOVF       R0+1, 0
	MOVWF      FARG_xuatGiaTriDo_i+1
;Digital_voltmeter.c,65 :: 		i = (i*4.89);                     // mV
	CALL       _word2double+0
	MOVLW      225
	MOVWF      R4+0
	MOVLW      122
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2word+0
	MOVF       R0+0, 0
	MOVWF      FARG_xuatGiaTriDo_i+0
	MOVF       R0+1, 0
	MOVWF      FARG_xuatGiaTriDo_i+1
;Digital_voltmeter.c,66 :: 		i = (2500- i)/0.1 ;               // amp
	MOVF       R0+0, 0
	SUBLW      196
	MOVWF      R0+0
	MOVF       R0+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBLW      9
	MOVWF      R0+1
	CALL       _word2double+0
	MOVLW      205
	MOVWF      R4+0
	MOVLW      204
	MOVWF      R4+1
	MOVLW      76
	MOVWF      R4+2
	MOVLW      123
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	CALL       _double2word+0
	MOVF       R0+0, 0
	MOVWF      FARG_xuatGiaTriDo_i+0
	MOVF       R0+1, 0
	MOVWF      FARG_xuatGiaTriDo_i+1
;Digital_voltmeter.c,68 :: 		Lcd_Out(2,1,"Current = ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_Digital_voltmeter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,69 :: 		Lcd_Out(2,11, intToString(i));
	MOVF       FARG_xuatGiaTriDo_i+0, 0
	MOVWF      FARG_intToString_value+0
	MOVF       FARG_xuatGiaTriDo_i+1, 0
	MOVWF      FARG_intToString_value+1
	CALL       _intToString+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,70 :: 		Lcd_Out(2,16,"A");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_Digital_voltmeter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,71 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_xuatGiaTriDo13:
	DECFSZ     R13+0, 1
	GOTO       L_xuatGiaTriDo13
	DECFSZ     R12+0, 1
	GOTO       L_xuatGiaTriDo13
	DECFSZ     R11+0, 1
	GOTO       L_xuatGiaTriDo13
	NOP
	NOP
;Digital_voltmeter.c,72 :: 		}
L_end_xuatGiaTriDo:
	RETURN
; end of _xuatGiaTriDo

_luuGiaTri:

;Digital_voltmeter.c,74 :: 		void luuGiaTri(){
;Digital_voltmeter.c,75 :: 		store_v = ADC_Read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _store_v+0
	MOVF       R0+1, 0
	MOVWF      _store_v+1
;Digital_voltmeter.c,76 :: 		store_i = ADC_Read(3);
	MOVLW      3
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _store_i+0
	MOVF       R0+1, 0
	MOVWF      _store_i+1
;Digital_voltmeter.c,77 :: 		}
L_end_luuGiaTri:
	RETURN
; end of _luuGiaTri

_check_state:

;Digital_voltmeter.c,79 :: 		void check_state(){
;Digital_voltmeter.c,81 :: 		count = 0;
	CLRF       check_state_count_L0+0
	CLRF       check_state_count_L0+1
;Digital_voltmeter.c,83 :: 		if(Button(&PORTB, 0, 1, 0)){
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_check_state14
;Digital_voltmeter.c,84 :: 		while(1){
L_check_state15:
;Digital_voltmeter.c,85 :: 		count += 1;
	INCF       check_state_count_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       check_state_count_L0+1, 1
;Digital_voltmeter.c,86 :: 		delay_ms(50);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_check_state17:
	DECFSZ     R13+0, 1
	GOTO       L_check_state17
	DECFSZ     R12+0, 1
	GOTO       L_check_state17
	DECFSZ     R11+0, 1
	GOTO       L_check_state17
	NOP
	NOP
;Digital_voltmeter.c,88 :: 		if(count > 20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      check_state_count_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__check_state45
	MOVF       check_state_count_L0+0, 0
	SUBLW      20
L__check_state45:
	BTFSC      STATUS+0, 0
	GOTO       L_check_state18
;Digital_voltmeter.c,89 :: 		mode = (mode ? 0 : 1);
	BTFSS      _mode+0, BitPos(_mode+0)
	GOTO       L_check_state19
	CLRF       ?FLOC___check_stateT44+0
	GOTO       L_check_state20
L_check_state19:
	MOVLW      1
	MOVWF      ?FLOC___check_stateT44+0
L_check_state20:
	BTFSC      ?FLOC___check_stateT44+0, 0
	GOTO       L__check_state46
	BCF        _mode+0, BitPos(_mode+0)
	GOTO       L__check_state47
L__check_state46:
	BSF        _mode+0, BitPos(_mode+0)
L__check_state47:
;Digital_voltmeter.c,90 :: 		break;
	GOTO       L_check_state16
;Digital_voltmeter.c,91 :: 		}
L_check_state18:
;Digital_voltmeter.c,92 :: 		if(!Button(&PORTB, 0, 1, 0)) {
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_check_state21
;Digital_voltmeter.c,93 :: 		press = 1;
	BSF        _press+0, BitPos(_press+0)
;Digital_voltmeter.c,94 :: 		break;
	GOTO       L_check_state16
;Digital_voltmeter.c,95 :: 		}
L_check_state21:
;Digital_voltmeter.c,96 :: 		}
	GOTO       L_check_state15
L_check_state16:
;Digital_voltmeter.c,97 :: 		}
L_check_state14:
;Digital_voltmeter.c,98 :: 		}
L_end_check_state:
	RETURN
; end of _check_state

_xuatGiaTriLuu:

;Digital_voltmeter.c,101 :: 		void xuatGiaTriLuu(unsigned int v, unsigned int i){
;Digital_voltmeter.c,102 :: 		v = (v*4.89*6);
	MOVF       FARG_xuatGiaTriLuu_v+0, 0
	MOVWF      R0+0
	MOVF       FARG_xuatGiaTriLuu_v+1, 0
	MOVWF      R0+1
	CALL       _word2double+0
	MOVLW      225
	MOVWF      R4+0
	MOVLW      122
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      64
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2word+0
	MOVF       R0+0, 0
	MOVWF      FARG_xuatGiaTriLuu_v+0
	MOVF       R0+1, 0
	MOVWF      FARG_xuatGiaTriLuu_v+1
;Digital_voltmeter.c,104 :: 		Lcd_Out(2,1, intToString(v));
	MOVF       R0+0, 0
	MOVWF      FARG_intToString_value+0
	MOVF       R0+1, 0
	MOVWF      FARG_intToString_value+1
	CALL       _intToString+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,105 :: 		Lcd_Out(2,6,"V   ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_Digital_voltmeter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,107 :: 		i = (i*4.89);                     // mV
	MOVF       FARG_xuatGiaTriLuu_i+0, 0
	MOVWF      R0+0
	MOVF       FARG_xuatGiaTriLuu_i+1, 0
	MOVWF      R0+1
	CALL       _word2double+0
	MOVLW      225
	MOVWF      R4+0
	MOVLW      122
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2word+0
	MOVF       R0+0, 0
	MOVWF      FARG_xuatGiaTriLuu_i+0
	MOVF       R0+1, 0
	MOVWF      FARG_xuatGiaTriLuu_i+1
;Digital_voltmeter.c,108 :: 		i = (2500- i)/0.1 ;               // amp
	MOVF       R0+0, 0
	SUBLW      196
	MOVWF      R0+0
	MOVF       R0+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBLW      9
	MOVWF      R0+1
	CALL       _word2double+0
	MOVLW      205
	MOVWF      R4+0
	MOVLW      204
	MOVWF      R4+1
	MOVLW      76
	MOVWF      R4+2
	MOVLW      123
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	CALL       _double2word+0
	MOVF       R0+0, 0
	MOVWF      FARG_xuatGiaTriLuu_i+0
	MOVF       R0+1, 0
	MOVWF      FARG_xuatGiaTriLuu_i+1
;Digital_voltmeter.c,109 :: 		Lcd_Out(2,11, intToString(i));
	MOVF       R0+0, 0
	MOVWF      FARG_intToString_value+0
	MOVF       R0+1, 0
	MOVWF      FARG_intToString_value+1
	CALL       _intToString+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,110 :: 		Lcd_Out(2,16,"A");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_Digital_voltmeter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,111 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_xuatGiaTriLuu22:
	DECFSZ     R13+0, 1
	GOTO       L_xuatGiaTriLuu22
	DECFSZ     R12+0, 1
	GOTO       L_xuatGiaTriLuu22
	DECFSZ     R11+0, 1
	GOTO       L_xuatGiaTriLuu22
	NOP
	NOP
;Digital_voltmeter.c,112 :: 		}
L_end_xuatGiaTriLuu:
	RETURN
; end of _xuatGiaTriLuu

_main:

;Digital_voltmeter.c,114 :: 		void main()
;Digital_voltmeter.c,116 :: 		TRISB.B3 = 0;
	BCF        TRISB+0, 3
;Digital_voltmeter.c,117 :: 		PORTB.B3 = 0;
	BCF        PORTB+0, 3
;Digital_voltmeter.c,118 :: 		CMCON = 0x07;
	MOVLW      7
	MOVWF      CMCON+0
;Digital_voltmeter.c,119 :: 		TRISA = 0xFF;                      // PORTA is Analog input
	MOVLW      255
	MOVWF      TRISA+0
;Digital_voltmeter.c,120 :: 		PORTA = 0X00;                       // PORTA is clear
	CLRF       PORTA+0
;Digital_voltmeter.c,121 :: 		ADCON1 = 0x00;
	CLRF       ADCON1+0
;Digital_voltmeter.c,122 :: 		Lcd_Init();                         // Initialize lcd module
	CALL       _Lcd_Init+0
;Digital_voltmeter.c,123 :: 		ADC_Init();                         // Initialize ADC module
	CALL       _ADC_Init+0
;Digital_voltmeter.c,124 :: 		Lcd_Cmd(_LCD_CLEAR);                // Clear Lcd display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Digital_voltmeter.c,125 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);           // Cursor of the Lcd display
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Digital_voltmeter.c,126 :: 		mode = 0;
	BCF        _mode+0, BitPos(_mode+0)
;Digital_voltmeter.c,127 :: 		press = 0;
	BCF        _press+0, BitPos(_press+0)
;Digital_voltmeter.c,129 :: 		while(1){
L_main23:
;Digital_voltmeter.c,130 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
	NOP
;Digital_voltmeter.c,131 :: 		check_state();
	CALL       _check_state+0
;Digital_voltmeter.c,132 :: 		if(mode){
	BTFSS      _mode+0, BitPos(_mode+0)
	GOTO       L_main26
;Digital_voltmeter.c,133 :: 		Lcd_Out(1,1,"Stored Value:   ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_Digital_voltmeter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,134 :: 		xuatGiaTriLuu(store_v,store_i);
	MOVF       _store_v+0, 0
	MOVWF      FARG_xuatGiaTriLuu_v+0
	MOVF       _store_v+1, 0
	MOVWF      FARG_xuatGiaTriLuu_v+1
	MOVF       _store_i+0, 0
	MOVWF      FARG_xuatGiaTriLuu_i+0
	MOVF       _store_i+1, 0
	MOVWF      FARG_xuatGiaTriLuu_i+1
	CALL       _xuatGiaTriLuu+0
;Digital_voltmeter.c,135 :: 		}
	GOTO       L_main27
L_main26:
;Digital_voltmeter.c,137 :: 		xuatGiaTriDo(v,i);
	MOVF       _v+0, 0
	MOVWF      FARG_xuatGiaTriDo_v+0
	MOVF       _v+1, 0
	MOVWF      FARG_xuatGiaTriDo_v+1
	MOVF       _i+0, 0
	MOVWF      FARG_xuatGiaTriDo_i+0
	MOVF       _i+1, 0
	MOVWF      FARG_xuatGiaTriDo_i+1
	CALL       _xuatGiaTriDo+0
;Digital_voltmeter.c,138 :: 		if(press){
	BTFSS      _press+0, BitPos(_press+0)
	GOTO       L_main28
;Digital_voltmeter.c,139 :: 		luuGiaTri();
	CALL       _luuGiaTri+0
;Digital_voltmeter.c,140 :: 		Lcd_Out(1,1,"Value Stored    ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_Digital_voltmeter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,141 :: 		Lcd_Out(2,1,"                ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_Digital_voltmeter+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Digital_voltmeter.c,142 :: 		press = 0;
	BCF        _press+0, BitPos(_press+0)
;Digital_voltmeter.c,143 :: 		delay_ms(500);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main29:
	DECFSZ     R13+0, 1
	GOTO       L_main29
	DECFSZ     R12+0, 1
	GOTO       L_main29
	DECFSZ     R11+0, 1
	GOTO       L_main29
	NOP
;Digital_voltmeter.c,144 :: 		}
L_main28:
;Digital_voltmeter.c,145 :: 		}
L_main27:
;Digital_voltmeter.c,147 :: 		}
	GOTO       L_main23
;Digital_voltmeter.c,148 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
