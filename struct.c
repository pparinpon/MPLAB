#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "struct_header.h"
bit isMycargo;

CargoData cargoData;
CargoData getCargoData(void){
    return cargoData;
}
void setCargoData(CargoData m_cargoData){
    cargoData = m_cargoData;
};
void initCargo(void){
    isMycargo = 1;
    cargoData.WorkingCount = 0;
    cargoData.address = 0;
    cargoData.cargoLength = 0xFFFF;
    cargoData.clutchMode = 0;
    cargoData.command = 0;
    cargoData.index = 0;
    cargoData.linkAngleTo = 360;
    cargoData.passedTime = 0;
}
void resetCargo(void){
    cargoData.WorkingCount = 0;
    cargoData.address = 0;
    cargoData.cargoLength = 0xFFFF;
    cargoData.clutchMode = 0;
    cargoData.command = 0;
    cargoData.index = 0;
    cargoData.linkAngleTo = 360;
    cargoData.passedTime = 0;

};
void restartCargo(void){
    cargoData.address = 0;
    cargoData.command = 0;
    cargoData.index = 0;
};
void setCargoAngle(int m_linkAngleTo){
    cargoData.linkAngleTo = m_linkAngleTo;
};