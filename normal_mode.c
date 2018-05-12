#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "normal_mode_header.h"
#include "struct_header.h"
#include "command_header.h"
#include "calibrate_mode.h"
#include "spi_header.h"
#include "IO_control_header.h"
CargoData cargoData;

unsigned int cargoLengthnuf = 0;
unsigned long cargoWorkingCount = 0;
//unsigned int countabuf = 0;
bit isMycargo;

void initCargo(void){
    cargoData = getCargoData();
    isMycargo = 1;
    cargoData.WorkingCount = 0;
    cargoData.address = 0;
    cargoData.cargoLength = 0xFFFF;
    cargoData.clutchMode = 0;
    cargoData.command = 0;
    cargoData.index = 0;
    cargoData.linkAngleTo = 0;
    cargoData.passedTime = 0;
}
void resetCargo(void){
    cargoData.WorkingCount = 0;
    cargoData.address = 0;
    cargoData.cargoLength = 0xFFFF;
    cargoData.clutchMode = 0;
    cargoData.command = 0;
    cargoData.index = 0;
};
void restartCargo(void){
    cargoData.WorkingCount = 0;
    cargoData.address = 0;
    cargoData.cargoLength = 0xFFFF;
    cargoData.command = 0;
    cargoData.index = 0;

};

void readCargo(unsigned char spi1_Read_data){
    unsigned int bufint  = spi1_Read_data;
    unsigned long buflong = spi1_Read_data;

    if(isMycargo){
        switch(countabuf){
            case 0:
                LATAbits.LATA0 = 1;
                cargoLengthnuf =  (bufint << 8);
                break;
            case 1:
                LATAbits.LATA0 = 0;
                cargoData.cargoLength = (cargoLengthnuf | bufint);
                break;
            case 2:
                cargoData.command = spi1_Read_data;
                break;
            case 3:
                cargoData.index = spi1_Read_data;
                break;
            case 4:
                cargoData.address = spi1_Read_data;
                if(cargoData.address != linkInfo.My_address){
                    restartCargo();
                    isMycargo = 0;
                }else{
                }
                break;
            case 5:
                setCargo_Angle();
                spi2_Send_data = (cargoData.linkAngleTo >> 8 & 0x00ff);
                break;
            case 6:
                spi2_Send_data = (cargoData.linkAngleTo & 0x00ff);
                break;
            case 7:
                spi2_Send_data = (cargoData.linkAngleBack >> 8 & 0x00ff);
                break;
            case 8:
                spi2_Send_data = (cargoData.linkAngleBack & 0x00ff);
                break;
            case 9:
                spi2_Send_data = (cargoData.passedTime >> 8 & 0x00ff);
                break;
            case 10:
                spi2_Send_data = (cargoData.passedTime & 0x00ff);
                break;
            case 11:
                cargoData.clutchMode = spi1_Read_data;
                clutchaction(cargoData.clutchMode);
                break;
            case 12:
                cargoData.WorkingCount++;
                spi2_Send_data = (cargoData.WorkingCount >> 24 & 0x000000ff);
                break;
            case 13:
                spi2_Send_data = (cargoData.WorkingCount >> 16 & 0x000000ff);
                break;
            case 14:
                spi2_Send_data = (cargoData.WorkingCount >> 8 & 0x000000ff);
                break;
            case 15:
                spi2_Send_data = (cargoData.WorkingCount & 0x000000ff);
                break;
        }
    }

    countabuf++;  
    if(cargoData.cargoLength <= countabuf){
        cargoLengthnuf = 0;
        cargoWorkingCount = 0;
        cargoData.cargoLength = 0xFFFF;
        countabuf = 0;
        isMycargo = 1;
    }
};

