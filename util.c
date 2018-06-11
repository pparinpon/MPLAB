#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "util_header.h"

/**
 * all pin clear
 */
void clear(void){
ANSELA = 0x00;
ANSELB = 0x00;
ANSELC = 0x00;
PORTA = 0x00;
PORTB = 0x00;
PORTC = 0x00;
TRISA = 0x00;
TRISB = 0x00;
TRISC = 0x00;
}
long TransLong256To255(long data)
{
    long buf = 0;
    buf = data;
    long TransData = 0;
    long mod = 0;
    int i = 0;
    while(1){
        if(buf <= 255){
        mod = buf;
        }else{
        mod = buf % 255;
        }
        buf = (int)(buf / 255);
        long pow = 1;
        if(i > 0){
            for(int j = 0; j < i; j++){
                pow = pow * 256;
            }
        }
        TransData += mod * pow;
        if(buf <= 255){
        break;
        }
    i++;
    }
    return TransData;    
};
int  TransInt256To255(int data)
{
    int buf = 0;
    buf = data;
    int TransData = 0;
    int mod = 0;
    int i = 0;
    while(1){
        if(buf <= 255){
        mod = buf;
        }else{
        mod = buf % 255;
        }
        buf = (int)(buf / 255);
        long pow = 1;
        if(i > 0){
            for(int j = 0; j < i; j++){
                pow = pow * 256;
            }
        }
        TransData += mod * pow;
        if(buf <= 255){
        break;
        }
    i++;
    }
    return TransData;
};

bit writeEEPROM(unsigned char *data){
    
    return 1;
}