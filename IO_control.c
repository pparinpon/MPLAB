#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "IO_control_header.h"
#include "struct_header.h" 
#include "cal_position_header.h"

#define ClutchOff_all_code 0b00111111;
#define LinkClutch_code 0b01111111;
#define Hand_Clutch_code 0b10011111;
#define Hand_Arm_Clutch_code 0b10101111;
#define link_Clutch LATA.RA0;
#define Hand_Clutch LATB.RB7;
#define Hand_Arm_Clutch LATB.RB5;


unsigned char IOCode[18];
void initIOCode(void){
IOCode[0] = ClutchOff_all_code; 
IOCode[1] = LinkClutch_code; // link
IOCode[2] = Hand_Clutch_code;// hand_up_down
IOCode[3] = Hand_Arm_Clutch_code; //arm
IOCode[4] = 0b10111111;
IOCode[5] = 0b11001111;
IOCode[6] = 0b11010111;
IOCode[7] = 0b11011111;
IOCode[8] = 0b11100111;
IOCode[9] = 0b11101011;
IOCode[10] = 0b11101111;
IOCode[11] = 0b11110001;
IOCode[12] = 0b11110011;
IOCode[13] = 0b11110101;
IOCode[14] = 0b11110111;
IOCode[15] = 0b11111000;
IOCode[16] = 0b11111001;
IOCode[17] = 0b11111010;
}

int linkAngle = 360;
int direction = 1;
CargoData cargoData;
void setCargo_Angle(void){
    cargoData = getCargoData();
    cargoData.linkAngleTo = linkAngle;
    setCargoData(cargoData);
};
void resetAngle(void){
    linkAngle = 360;
};
bit isOnClutch(void){
    if(LATAbits.LATA0 == 1){
        return 1;
    };
    return 0;
};
void setOnClutch(void){
    LATAbits.LATA0 = 1;  
};
void setOffClutch(void){
    LATAbits.LATA0 = 0;    
};
void addAngle(void){
    linkAngle += getMoter_lotate();
    setCargoAngle(linkAngle);
};
void setDirection(int m_direction){
    direction = m_direction;
}
bit IOCode_Command(unsigned char m_IOCode){
            for(int i = 0; i < 18; i++){
        if(IOCode[i] == m_IOCode){
            switch(i){
                case 0: // off all
                    //TODO
//                    link_Clutch = 0;                   
//                    Hand_Clutch = 0;
//                    Hand_Arm_Clutch = 0;
                    return 1;               
                case 1://link_Clutch
//                    link_Clutch = 1;                   
//                    Hand_Clutch = 0;
//                    Hand_Arm_Clutch = 0;
                    return 1;
                case 2://Hand_Clutch
//                    link_Clutch = 0;                   
//                    Hand_Clutch = 1;
//                    Hand_Arm_Clutch = 0;
                    return 1;
                case 3: //Hand_Arm_Clutch
//                    link_Clutch = 0;                   
//                    Hand_Clutch = 0;
//                    Hand_Arm_Clutch = 1;
                    return 1;
            }
        }
    }
    return 0;
};
