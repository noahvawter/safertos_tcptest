/*
 * noah.h
 *
 *  Created on: Jan 12, 2022
 *      Author: nvawter
 */

#ifndef INC_NOAH_H_
#define INC_NOAH_H_


void noah_hello( void );

void vStartSimpleUDPServerTasks( uint16_t usStackSize, UBaseType_t uxPriority );

void prvSimpleUDPServerTask( void *pvParameters );

#endif /* INC_NOAH_H_ */
