#include <xc.h>
#include <pic16f18346.h>
#include <pic.h>
#include "struct_header.h"

CargoData cargoData;
CargoData getCargoData(void){
    return cargoData;
}
