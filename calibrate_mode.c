#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "spi_header.h"
#include "calibrate_mode.h"
#include "command_header.h"

const unsigned int VENDER_ID = 0x01;
const unsigned int MACHINE_ID = 0x01;
typedef struct {
    unsigned char My_address;
    unsigned long WorkingCount;
    unsigned char endpoint;        
}LinkInfo;

typedef struct {
    unsigned int cargoLength;
    unsigned char command;
    unsigned char index;
    unsigned long WorkingCount;
}Clalibdata;

LinkInfo linkInfo;
Clalibdata calibdata;
//unsigned int countabuf = 0;
bit isMycargo;
bit isEndPointTrig;


bit isEndpoint(void){
    unsigned char spi2data = 0;
    if(count2 > 1){
        spi2data = spi2_buffer_data[count2 -1];
    }else{
        spi2data =  spi2_buffer_data[count2];
    }
    if(spi2data < 255){
        LATAbits.LATA0 = 1;
        isEndPointTrig = 0;
    }else{
        LATAbits.LATA0 = 0;
        setSPI1sendDataManual(0x00);
    }
    return isEndPointTrig; 
}


/*It's mainly SPI2 return data*/
bit workingcounta0 = 0;
bit workingcounta1 = 0;
bit workingcounta2 = 0;
bit workingcounta3 = 0;
/*
 It send data mater(PC sid) to slave side (link)
 */
void Calibrate_upload(void){
    if(!isSPI1send()){
        SSP2BUF = spi1_send_buffer_data[send_count1];
        send_count1++;
    }
}
void InitCalibrate(void){
    isEndPointTrig = 1;
    calibdata.cargoLength = 0xFFFF;
    calibdata.index = 0x00;
    calibdata.command =0x00;
    calibdata.WorkingCount = 0;
    linkInfo.endpoint = 0;
    linkInfo.My_address = 0;
    countabuf = 0;
    isMycargo = 1;
}
void Calibrate_download(unsigned char spi_Read_data){

    unsigned int bufint  = spi_Read_data;
    unsigned long buflong = spi_Read_data;
    isEndpoint();
    if(isMycargo){
        switch(countabuf){
            case 0:
                InitCalibrate();
                calibdata.cargoLength = (bufint << 8 | 0x00FF);
                spi2_Send_data = spi_Read_data;
                break;
            case 1:
                calibdata.cargoLength = calibdata.cargoLength & (bufint  | 0xFF00);
                spi2_Send_data = spi_Read_data;
                break;
            case 2:
                calibdata.command = spi_Read_data;
                spi2_Send_data = spi_Read_data;
                break;
            case 3:
                calibdata.index = spi_Read_data;
                spi2_Send_data = spi_Read_data;
                break;
            case 4:
                linkInfo.My_address = spi_Read_data +1;
                spi2_Send_data = linkInfo.My_address;
                break;
            case 5:
                calibdata.WorkingCount++;
                spi2_Send_data = (calibdata.WorkingCount >> 24 & 0x000000ff);
                break;
            case 6:
                spi2_Send_data = (calibdata.WorkingCount >> 16 & 0x000000ff);
                break;
            case 7:
                spi2_Send_data = (calibdata.WorkingCount >> 8 & 0x000000ff);
                break;
            case 8:
                spi2_Send_data = (calibdata.WorkingCount & 0x000000ff);
                break; 
            case 9:
                if(isEndPointTrig == 1){

                    linkInfo.endpoint = 1;
                }else{
                    linkInfo.endpoint = 0;
                }
                        LATAbits.LATA0 = 0;
                    spi2_Send_data = linkInfo.My_address;
                break;       
        }
    }
    
    countabuf++;
    unsigned char buf = calibdata.cargoLength & 0x00FF;
    if(calibdata.cargoLength <= countabuf){
        calibdata.cargoLength = 0xFFFF;
        countabuf = 0;
        isMycargo = 1;
    }

}

void setLinkNo(unsigned char workingCounta){
    linkInfo.My_address = 0;
    linkInfo.WorkingCount = 0;
    linkInfo.My_address += workingCounta;
    linkInfo.WorkingCount++;
}
unsigned int getVENDER_ID(void){
    return VENDER_ID;
};
unsigned int getMACHINE_ID(void){
    return MACHINE_ID;
};
