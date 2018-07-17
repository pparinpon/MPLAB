#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "index_header.h"
#include "cal_position_header.h"

#define Normal_Drive 0b01111111
#define Reverse_Drive 0b10011111;
unsigned int countabuf;
unsigned char index[18];
void initIndex(void){
index[0] = 0b00111111; 
index[1] = Normal_Drive; // Normal moter forword
index[2] = Reverse_Drive;// Normal moter reverse
index[3] = 0b10101111;
index[4] = 0b10111111;
index[5] = 0b11001111;
index[6] = 0b11010111;
index[7] = 0b11011111;
index[8] = 0b11100111;
index[9] = 0b11101011;
index[10] = 0b11101111;
index[11] = 0b11110001;
index[12] = 0b11110011;
index[13] = 0b11110101;
index[14] = 0b11110111;
index[15] = 0b11111000;
index[16] = 0b11111001;
index[17] = 0b11111010;
}
bit setIndexMode(unsigned char m_index){
        for(int i = 0; i < 18; i++){
        if(index[i] == m_index){
            switch(i){
                case 0: // reserved
                    //TODO                     
                    return 1;               
                case 1://normal
                    setMoter_lotate(0x01);
                    return 1;
                case 2://reverse
                    setMoter_lotate(0x02);
                    return 1;
                case 3:
                    return 1;
                case 6:
                    return 1;   
            }
        }
    }
    return 0;
}

