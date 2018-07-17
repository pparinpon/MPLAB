#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "cal_position_header.h"

Position position;

void initPosition(void){
    position.moter_lotate = 0;
    position.pos_x = 0;
    position.pos_y = 0;
    position.pos_z = 0;
    position.rotate_x = 0;
    position.rotate_y = 0;
    position.rotate_z = 0;
};
void setMoter_lotate(unsigned char lotate){
    if(lotate == 0x01){
//            LATAbits.LATA0 = 0;  
        position.moter_lotate = 1;// forward
    }else if(lotate == 0x02){
//            LATAbits.LATA0 = 1;  
        position.moter_lotate = -1;// reverse
    }else if(lotate == 0x03){
        position.moter_lotate = 0;// reverse
//                    LATAbits.LATA0 = 1;  
    };    
};
int getMoter_lotate(void){
    return position.moter_lotate;
};