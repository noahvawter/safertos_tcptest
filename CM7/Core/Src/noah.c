/*
 * noah.c
 *
 *  Created on: Jan 12, 2022
 *      Author: nvawter
 */

/* Standard includes. */
#include <stdint.h>
#include <stdio.h>

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

/* FreeRTOS+TCP includes. */
#include "FreeRTOS_IP.h"
#include "FreeRTOS_Sockets.h"

#include "noah.h"

/* Stores the stack size passed into vStartSimpleUDPServerTasks() so it can be
reused when the server listening task creates tasks to handle connections. */
static uint16_t usUsedStackSize = 0;

void vStartSimpleUDPServerTasks( uint16_t usStackSize, UBaseType_t uxPriority )
{
	/* Create the TCP echo server. */
	xTaskCreate( prvSimpleUDPServerTask, "UDPServer", usStackSize, NULL, uxPriority + 1, NULL );

	/* Remember the requested stack size so it can be re-used by the server
	listening task when it creates tasks to handle connections. */
	usUsedStackSize = usStackSize;
}

void prvSimpleUDPServerTask( void *pvParameters )
{
long lBytes;
uint8_t *pucUDPPayloadBuffer;
struct freertos_sockaddr xClient, xBindAddress;
uint32_t xClientLength = sizeof( xClient );
Socket_t xListeningSocket;
const TickType_t xSendTimeOut = 200 / portTICK_PERIOD_MS;

   /* Attempt to open the UDP socket. */
   xListeningSocket = FreeRTOS_socket( FREERTOS_AF_INET,
                                       FREERTOS_SOCK_DGRAM,/*FREERTOS_SOCK_DGRAM for UDP.*/
                                       FREERTOS_IPPROTO_UDP );

   /* Check for errors. */
   configASSERT( xListeningSocket != FREERTOS_INVALID_SOCKET );

   /* Ensure calls to FreeRTOS_sendto() timeout if a network buffer cannot be
   obtained within 200ms. */
   FreeRTOS_setsockopt( xListeningSocket,
                        0,
                        FREERTOS_SO_SNDTIMEO,
                        &xSendTimeOut,
                        sizeof( xSendTimeOut ) );

   /* Bind the socket to port 0x1234. */
   xBindAddress.sin_port = FreeRTOS_htons( 6001 );
   FreeRTOS_bind( xListeningSocket, &xBindAddress, sizeof( xBindAddress ) );

   for( ;; )
   {
       /*
        * The socket can now send and receive data here.
        */
	   /* Receive data from the socket.  ulFlags has the zero copy bit set
	        (FREERTOS_ZERO_COPY) indicating to the stack that a reference to the
	        received data should be passed out to this RTOS task using the second
	        parameter to the FreeRTOS_recvfrom() call.  When this is done the
	        IP stack is no longer responsible for releasing the buffer, and
	        the RTOS task must return the buffer to the stack when it is no longer
	        needed.  By default the block time is portMAX_DELAY but it can be
	        changed using FreeRTOS_setsockopt(). */
		lBytes = FreeRTOS_recvfrom( xListeningSocket,
									&pucUDPPayloadBuffer,
									0,
									FREERTOS_ZERO_COPY,
									&xClient,
									&xClientLength );

		if( lBytes > 0 )
		{
			/* Data was received and can be processed here. */
			noah_hello();
		}

		if( lBytes >= 0 )
		{
			/* The receive was successful so this RTOS task is now responsible for
			the buffer.  The buffer must be freed once it is no longer
			needed. */

			noah_hello();

			/*
			 * The data can be processed here.
			 */

			/* Return the buffer to the TCP/IP stack. */
			FreeRTOS_ReleaseUDPPayloadBuffer( pucUDPPayloadBuffer );
		}
   }
}


int32_t noah_packet_count = 0;

void noah_hello( void )
{
	noah_packet_count++;
}
