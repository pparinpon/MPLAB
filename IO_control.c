#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "IO_control_header.h"
#include "struct_header.h" 
int linkAngle = 0;
int direction = 1;
CargoData cargoData;
void setCargo_Angle(void){
    cargoData = getCargoData();
    cargoData.linkAngleTo = linkAngle;
    setCargoData(cargoData);
};
void resetAngle(void){
    linkAngle = 0;
};
bit isOnClutch(void){
    if(LATAbits.LATA0 == 1){
        return 1;
    };
    return 0;
};
void setOnClutch(void){
    LATAbits.LATA0 = 1;  
};
void setOffClutch(void){
    LATAbits.LATA0 = 0;    
};
void addAngle(void){
    linkAngle += direction;
    setCargoAngle(linkAngle);
};
void setDirection(int m_direction){
    direction = m_direction;
}
