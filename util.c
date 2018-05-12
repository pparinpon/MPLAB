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

bit writeEEPROM(unsigned char *data){
    
    return 1;
}