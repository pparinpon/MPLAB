#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "spi_header.h"
#include "calibrate_mode.h"
#include "struct_header.h"

unsigned char spi1_buffer_data[256];  // SPI_data_read_byte
unsigned char spi2_buffer_data[256];  // SPI_data_read_byte
unsigned char spi1_send_buffer_data[256];
unsigned int read_count1;
unsigned int count1;
unsigned int read_count2;
unsigned int count2;
unsigned int spi1_send_count = 0;
unsigned int send_count1 = 0;
unsigned char spi1_Read_data = 0;
unsigned char spi2_Send_data = 0;
bit isSendSPI2;

void spi_init(void){
    INTCONbits.PEIE = 0;
    INTCONbits.GIE = 0;
    spi1_init();
    spi2_init();
    INTCONbits.PEIE = 1;
    INTCONbits.GIE = 1;

}


void spi1_init(){
    unsigned char dummy;
    SSP1CON3bits.PCIE = 0;
    RC2PPS = 0b11001;//RC2 is SDO1
    SSP1SSPPSbits.SSP1SSPPS = 0b10110;//RC6 SC
    SSP1CON1bits.SSPOV = 1;
    SSP1CON1bits.SSPEN = 1;
    SSP1CON1bits.SSPM = 0b0100;
    SSP1CON3bits.BOEN = 1;
    SSP1STATbits.SMP = 0;
    SSP1STATbits.CKE = 0;
    SSP1CON1bits.CKP = 0;
    PIE1bits.SSP1IE = 1;
    PIR1bits.SSP1IF = 0;
    dummy = SSP1BUF;
}
void spi2_init(){
    unsigned char dummy;
    SSP2CON3bits.PCIE = 0;
    RA2PPS = 0b11011;//RA2 is SDO2
    RB7PPS = 0b11010;//RB7 is SCK2
    SSP2SSPPSbits.SSP2SSPPS = 0b01111; //RB7
    SSP2CON1bits.SSPOV = 0;
    SSP2CON1bits.SSPEN = 1;
    SSP2CON1bits.SSPM = 0b0001;
    SSP2CON3bits.BOEN = 1;
    SSP2STATbits.SMP = 0;
    SSP2STATbits.CKE = 0;
    SSP2CON1bits.CKP = 0;
    PIE2bits.SSP2IE = 1;//1
    PIR2bits.SSP2IF = 0;
    dummy = SSP2BUF;
}

bit isSPI1read(void){
    if(read_count1 == count1){
        return 1;
    }else{
        return 0;
    }
    
}

bit isSPI2read(void){
    if(read_count2 == count2){
        return 1;
    }else{
        return 0;
    }
}

bit isSPI1send(void){
    if(send_count1 == spi1_send_count){
        return 1;
    }else{
        return 0;
    }
}

void setSPI1sendData(void){
    if(!isSPI2read() == 1){
        SSP1BUF = spi2_buffer_data[read_count2];
        read_count2++;
        if(read_count2 == 256){
            read_count2 = 0;
        }
    }else{
        SSP1BUF = 0x00;//set must 0x01
    }
}
void setSPI1sendDataManual(unsigned char data){
    SSP1BUF = data;
}
void setSPI2sendData(void){
    spi2_Send_data = spi2_Send_data + SPI_OFFSET_BYTE;
    if(linkInfo.endpoint == 0){
        SSP2BUF = spi2_Send_data;
                // SPI_recieve
        isSendSPI2 = 1;
        while(isSendSPI2);
        spi2_buffer_data[count2] = SSP2BUF;
        count2++;
        if(count2 == 256){
            count2 = 0;
        }
    }else{
        spi2_buffer_data[count2] = spi2_Send_data;
        count2++;
        if(count2 == 256){
            count2 = 0;
        }
    }   
}
