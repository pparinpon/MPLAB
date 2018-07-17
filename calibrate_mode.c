#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "spi_header.h"
#include "calibrate_mode.h"
#include "command_header.h"
#include "struct_header.h"
#include "util_header.h"

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
bit isEndPointTrig;


bit isEndpoint(void){
    unsigned char spi2data = 0;
    if(count2 > 1){
        spi2data = spi2_buffer_data[count2 -1];
    }else{
        spi2data =  spi2_buffer_data[count2];
    }
    if(spi2data < 255){
        isEndPointTrig = 0;
    }else{
        setSPI1sendDataManual(0x01);//0x00
    }

    return isEndPointTrig; 
}


/*It's mainly SPI2 return data*/
bit workingcounta0 = 0;
bit workingcounta1 = 0;
bit workingcounta2 = 0;
bit workingcounta3 = 0;
void InitCalibrate(void){
    isEndPointTrig = 1;
    calibdata.cargoLength = 0xFFFF;
    calibdata.index = 0x00;
    calibdata.command =0x00;
    calibdata.WorkingCount = 0;
    CargoData cargoData = getCargoData();
    cargoData.linkAngleTo = 0;
    linkInfo.endpoint = 0;
    linkInfo.My_address = 0;
    countabuf = 0;
}
void Calibrate_download(unsigned char spi_Read_data){

    unsigned int bufint  = spi_Read_data;
    unsigned long buflong = spi_Read_data;
    isEndpoint();
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
            spi2_Send_data = (TransLong256To255(calibdata.WorkingCount) >> 24 & 0x000000ff);
            break;
        case 6:
            spi2_Send_data = (TransLong256To255(calibdata.WorkingCount) >> 16 & 0x000000ff);
            break;
        case 7:
            spi2_Send_data = (TransLong256To255(calibdata.WorkingCount) >> 8 & 0x000000ff);
            break;
        case 8:
            spi2_Send_data = (TransLong256To255(calibdata.WorkingCount) & 0x000000ff);
            break; 
        case 9:

            if(isEndPointTrig == 1){
                LATAbits.LATA0 = 1;
                linkInfo.endpoint = 1;
            }else{
                LATAbits.LATA0 = 0;
                linkInfo.endpoint = 0;
            }
            spi2_Send_data = linkInfo.My_address;
            isEndPointTrig = 0;
            resetCargo();           
            break;       
    }
    if(isEndPointTrig){
        spi2_Send_data = 0x01;
    }
    
    
    
    countabuf++;
    if(calibdata.cargoLength <= countabuf){
        calibdata.cargoLength = 0xFFFF;
        countabuf = 0;
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
