#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "IO_control_header.h"
#include "struct_header.h" 
int linkAngle = 0;
int direction = 0;
CargoData cargoData;
void setCargo_Angle(void){
    cargoData = getCargoData();
    cargoData.linkAngleTo = linkAngle;
};
void resetAngle(void){
    linkAngle = 0;
};
bit isOnClutch(void){
    return 0;
};
void setOnClutch(void){
    
};
void setOffClutch(void){
    
};
void addAngle(void){
    linkAngle += direction;
};
void setDirection(int m_direction){
    direction = m_direction;
}
