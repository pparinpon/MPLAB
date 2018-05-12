#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "cargo_index_header.h"
#include "IO_control_header.h"

#define CW 0b01111111
#define CCW 0b10011111
unsigned int countabuf;
unsigned char cargo_index[18];
void initCargo_index(void){
cargo_index[0] = 0b00111111; 
cargo_index[1] = CW; // Normal_CW
cargo_index[2] = CCW;//normal_CCW
cargo_index[3] = 0b10101111;
cargo_index[4] = 0b10111111;
cargo_index[5] = 0b11001111;
cargo_index[6] = 0b11010111;
cargo_index[7] = 0b11011111;
cargo_index[8] = 0b11100111;
cargo_index[9] = 0b11101011;
cargo_index[10] = 0b11101111;
cargo_index[11] = 0b11110001;
cargo_index[12] = 0b11110011;
cargo_index[13] = 0b11110101;
cargo_index[14] = 0b11110111;
cargo_index[15] = 0b11111000;
cargo_index[16] = 0b11111001;
cargo_index[17] = 0b11111010;
}

bit setCargo_indexMode(unsigned char m_cargo_index){
        for(int i = 0; i < 18; i++){
        if(cargo_index[i] == m_cargo_index){
            switch(i){
                case 0: //normal cw
                    //TODO 
                    setDirection(1);
                    return 1;               
                case 1://normal ccw
                    setDirection(-1);
                    return 1;
                case 2:
                    return 1;
                case 3:
                    return 1;
            }
        }
    }
    return 0;
}

