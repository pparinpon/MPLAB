#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "command_header.h"


#define Normal_Drive 0b01111111
#define Read_OK 0b10011111
#define Read_NG 0b10101111
#define Increment_Addr 0b10111111
unsigned int countabuf;
unsigned char command[18];
unsigned char readOK GLOBAL_VAL(Read_OK);
unsigned char readNG GLOBAL_VAL(Read_NG);
void initComand(void){
command[0] = 0b00111111; 
command[1] = Normal_Drive; // Normal
command[2] = Read_OK;
command[3] = Read_NG;
command[4] = Increment_Addr;
command[5] = 0b11001111;
command[6] = 0b11010111;
command[7] = 0b11011111;
command[8] = 0b11100111;
command[9] = 0b11101011;
command[10] = 0b11101111;
command[11] = 0b11110001;
command[12] = 0b11110011;
command[13] = 0b11110101;
command[14] = 0b11110111;
command[15] = 0b11111000;
command[16] = 0b11111001;
command[17] = 0b11111010;
}
bit action(unsigned char inputComannd){
    for(int i = 0; i < 18; i++){
        if(command[i] == inputComannd){
            switch(i){
                case 2:
                    LATAbits.LATA0 = 1;
                    return 1;
                case 3:
                    LATAbits.LATA0 = 0;
                    return 1;   
            }
        }
    }
    return 0;
}
bit clutchaction(unsigned char comannd){
    if(comannd == 1){
        LATAbits.LATA0 = 1;
    }else{
        LATAbits.LATA0 = 0;
    }
};
