/*
 * File:   main.c
 * Author: hirishi
 *
 * Created on 2018/03/01, 17:17
 */


// PIC16F18346 Configuration Bit Settings

// 'C' source line config statements

// CONFIG1
#pragma config FEXTOSC = OFF    // FEXTOSC External Oscillator mode Selection bits (Oscillator not enabled)
#pragma config RSTOSC = HFINT32 // Power-up default value for COSC bits (HFINTOSC with 2x PLL (32MHz))
#pragma config CLKOUTEN = OFF   // Clock Out Enable bit (CLKOUT function is disabled; I/O or oscillator function on OSC2)
#pragma config CSWEN = ON       // Clock Switch Enable bit (Writing to NOSC and NDIV is allowed)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor is enabled)

// CONFIG2
#pragma config MCLRE = OFF      // Master Clear Enable bit (MCLR/VPP pin function is digital input; MCLR internally disabled; Weak pull-up under control of port pin's WPU control bit.)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config WDTE = OFF       // Watchdog Timer Enable bits (WDT disabled; SWDTEN is ignored)
#pragma config LPBOREN = ON     // Low-power BOR enable bit (ULPBOR enabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bits (Brown-out Reset enabled, SBOREN bit ignored)
#pragma config BORV = HIGH      // Brown-out Reset Voltage selection bit (Brown-out voltage (Vbor) set to 2.7V)
#pragma config PPS1WAY = ON     // PPSLOCK bit One-Way Set Enable bit (The PPSLOCK bit can be cleared and set only once; PPS registers remain locked after one clear/set cycle)
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset Enable bit (Stack Overflow or Underflow will cause a Reset)
#pragma config DEBUG = OFF      // Debugger enable bit (Background debugger disabled)

// CONFIG3
#pragma config WRT = OFF        // User NVM self-write protection bits (Write protection off)
#pragma config LVP = OFF        // Low Voltage Programming Enable bit (High Voltage on MCLR/VPP must be used for programming.)

// CONFIG4
#pragma config CP = OFF         // User NVM Program Memory Code Protection bit (User NVM code protection disabled)
#pragma config CPD = OFF        // Data NVM Memory Code Protection bit (Data NVM code protection disabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#define _XTAL_FREQ 32000000

#include "eeprom_header.h"
#include "spi_header.h"
#include "util_header.h"
#include "command_header.h"
#include "struct_header.h"
#include "calibrate_mode.h"
#include "normal_mode_header.h"
#include "comu_type.h"
#include "IO_control_header.h"
#include "cal_position_header.h"
#include "index_header.h"

unsigned char send_data;

unsigned char spi1_Read_data = 0;
unsigned char spi2_Read_data = 0;
bit isreadTrain = 0;
// Method
void read_train(void);
void resetTrainData(void);
bit isTrainSt(unsigned char buf);

bit ra3condision = 0;
void interrupt InterMSSP( void )
{
    if (PIR1bits.SSP1IF) {
        // SPI_recieve
        unsigned char buf = SSP1BUF;
        if(buf > 0){
            spi1_buffer_data[count1] = buf -SPI_OFFSET_BYTE;
            setSPI1sendData();
        count1++;
        }
        if(count1 == 256){
            count1 = 0;
        }
    }
    if (PIR2bits.SSP2IF) {
        isSendSPI2 = 0;
        // SPI_recieve
        PIR2bits.SSP2IF = 0;
    }
    if(IOCAFbits.IOCAF3 == 1){
        //interruptIO
        addAngle();
    }
        PIR1bits.SSP1IF = 0 ;

        IOCAFbits.IOCAF3 = 0;
        PIR0bits.IOCIF = 0;
        PIR0bits.INTF = 0;
}
void initbuffer(void){
    for(int i = 0; i < 256; i++){
        spi1_buffer_data[i] = 0;  // SPI_data_byte
        spi2_buffer_data[i] = 0;  // SPI_data_byte 
    }
}
void init(){
count1 = 0;
count2 = 0;
initbuffer();

OSCFRQbits.HFFRQ =  0b0111; 
OSCTUNEbits.HFTUN = 0b000000;
clear();
WPUC = 0b11111111; //pull-up
WPUB = 0b11111111; //pull-up
WPUA = 0b11111111; //pull-up
TRISBbits.TRISB6 = 1; //CLK1
TRISBbits.TRISB4 = 1; //DI1
TRISCbits.TRISC6 = 1; //celect switch1
INLVLBbits.INLVLB4 = 0; //TTL level
INLVLBbits.INLVLB6 = 0; //TTL level
INLVLCbits.INLVLC5 = 0; //TTL level

TRISBbits.TRISB5 = 1; //DI2
INLVLBbits.INLVLB5 = 0; //TTL level DI2
INLVLBbits.INLVLB7 = 0; //TTL level SCK2
INLVLAbits.INLVLA1 = 0; //TTL level celect switch1
INLVLAbits.INLVLA2 = 0; //TTL level DO2

return;
}

void io_init(){
    PIE0bits.IOCIE = 1;//IO interrupt
    IOCAPbits.IOCAP3 = 1;
    IOCANbits.IOCAN3 = 1;
    PIE0bits.INTE = 1;
    INTCONbits.INTEDG = 1;  
}
int trainPos = 0;
void initTrain(void){
            spi1_Read_data = spi1_buffer_data[read_count1];
            spi2_Send_data = spi1_Read_data;
            read_count1++;
            if(read_count1 == 256){
               read_count1 = 0;
            }
            if(isTrainSt(spi1_Read_data)){
                trainPos = 0;   
                resetTrainData();
                isreadTrain = 0;
                countabuf = 0;
            }else{
                trainPos++;
            }
            if(st_dataLength < trainPos){
                trainPos = 0;   
                resetTrainData();
                isreadTrain = 0;
                countabuf = 0;               
            }
}
void main(void) {
    initComand();
    initIndex();
    initComu_types();
    InitCalibrate();
    init();
    io_init();
    spi_init();
    initCargo();
    initPosition();
    LATAbits.LATA0 = 1;
    while(1){
        if(!isSPI1read()){
            initTrain();
            if(isreadTrain){
                setComunicateMode(st_type);
            }else{
                read_train();               
            }
        setSPI2sendData();
        }
    };
    return;
}
void resetTrainData(void){
    st_dataLength = 0xFFFF;
    st_type = 0;
    restartCargo();
}
unsigned long startTrainBytes = 0;
bit isTrainSt(unsigned char buf){
  startTrainBytes = startTrainBytes << 8 | (buf +SPI_OFFSET_BYTE); 
  if(startTrainBytes == 0xFFFFFFFF){
      return 1;
  }else{
      return 0;
  }
}


int counta2 = 0;

void read_train(void){
    unsigned int bufint = spi1_Read_data;    
    switch(trainPos){
        case 1:
            st_dataLength = (bufint << 8 | 0x00FF);
            break;
        case 2:
            st_dataLength = st_dataLength & (bufint  | 0xFF00);
            break;
        case 3:
            st_type = spi1_Read_data;
            isreadTrain = 1;
            break;
        default :
            break;
    }
}