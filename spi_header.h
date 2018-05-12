/* Microchip Technology Inc. and its subsidiaries.  You may use this software 
 * and any derivatives exclusively with Microchip products. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION 
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE 
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF 
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE 
 * TERMS. 
 */

/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_SPI_H
#define	XC_HEADER_SPI_H

#include <xc.h> // include processor files - each processor file is guarded.  

// TODO Insert appropriate #include <>

// TODO Insert C++ class definitions if appropriate

// TODO Insert declarations

// Comment a function and leverage automatic documentation with slash star star
/**
    <p><b>Function prototype:</b></p>
  
    <p><b>Summary:
 * spi1 is slave setting.
 * spi2 is master setting.
 * 
 * 
 * </b></p>

    <p><b>Description:</b></p>

    <p><b>Precondition:</b></p>

    <p><b>Parameters:</b></p>

    <p><b>Returns:</b></p>

    <p><b>Example:</b></p>
    <code>
 
    </code>

    <p><b>Remarks:</b></p>
 */
// TODO Insert declarations or function prototypes (right here) to leverage 
// live documentation

#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */
#include "global_header.h"
    // TODO If C++ is being used, regular C code needs function names to have C 
    // linkage so the functions can be used by the c code. 
    GLOBAL void spi_init();
    GLOBAL void spi1_init(void);
    GLOBAL void spi2_init(void);
    GLOBAL unsigned char spi1_buffer_data[256];  // SPI_data_byte
    GLOBAL unsigned char spi2_buffer_data[256];  // SPI_data_byte
    GLOBAL unsigned char spi1_send_buffer_data[256];  // SPI1_send_data_byte
    GLOBAL unsigned int read_count1;
    GLOBAL unsigned int count1;
    GLOBAL unsigned int read_count2;
    GLOBAL unsigned int count2;
    GLOBAL unsigned int spi1_send_count; // this is in data pointa;
    GLOBAL unsigned int send_count1; // this is now in data pointa;
    GLOBAL unsigned char spi1_Read_data;
    GLOBAL unsigned char spi2_Send_data;

    GLOBAL bit isSPI1read(void);
    GLOBAL bit isSPI2read(void);
    GLOBAL bit isSPI1send(void);
    GLOBAL void setSPI1sendData(void);
    GLOBAL void setSPI2sendData(void);
    GLOBAL void setSPI1sendDataManual(unsigned char data);
#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* XC_HEADER_SPI_H */

