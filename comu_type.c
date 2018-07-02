#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "comu_type.h"
#include "normal_mode_header.h"
#include "spi_header.h"
#include "calibrate_mode.h"
#include "eeprom_header.h"
#define Broad_Cast 0b00111111
#define Auto_Increment 0b01111111
#define Static_Addr 0b10011111
#define Theory_Addr 0b10101111
#define Calibrate_Mode 0b10111111
#define Emergency_Stop 0b10111111
#define EEPROM_Mode 0b11001111 

unsigned char comu_types[18];


void initComu_types(void){
comu_types[0] = Broad_Cast; // for calibration mode
comu_types[1] = Auto_Increment; // Normal
comu_types[2] = Static_Addr; //for mail box
comu_types[3] = Theory_Addr; //for mail box
comu_types[4] = Emergency_Stop;
comu_types[5] = EEPROM_Mode;
comu_types[6] = 0b11010111;
comu_types[7] = 0b11011111;
comu_types[8] = 0b11100111;
comu_types[9] = 0b11101011;
comu_types[10] = 0b11101111;
comu_types[11] = 0b11110001;
comu_types[12] = 0b11110011;
comu_types[13] = 0b11110101;
comu_types[14] = 0b11110111;
comu_types[15] = 0b11111000;
comu_types[16] = 0b11111001;
comu_types[17] = 0b11111010;
}
bit setComunicateMode(unsigned char m_type){
    for(int i = 0; i < 18; i++){
        if(comu_types[i] == m_type){
            switch(i){
                case 0:
                    Calibrate_download(spi1_Read_data);
                    return 1;               
                case 1:
                    readCargo(spi1_Read_data);
                    return 1;
                case 2:
                    return 1;
                case 3:
                    return 1;   
                case 4:
                    return 1;   
                case 5:
                    EEPROM_download(spi1_Read_data);
                    return 1;   
                    
            }
        }
    }
    return 0;
}