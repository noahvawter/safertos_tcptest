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

int32_t noahCreateSocket( Socket_t *p_xSocket, struct freertos_sockaddr *p_xDestinationAddress );
int32_t noahSendTestString( Socket_t xSocket, struct freertos_sockaddr xDestinationAddress, const char *string );

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


// periodic transmitter
void vStartSimpleUDPSenderTasks( uint16_t usStackSize, UBaseType_t uxPriority )
{
	/* Create the TCP echo server. */
	xTaskCreate( vUDPSendingUsingZeroCopyInterface, "UDPSender", usStackSize, NULL, uxPriority + 1, NULL );

	/* Remember the requested stack size so it can be re-used by the server
	listening task when it creates tasks to handle connections. */
	//usUsedStackSize = usStackSize;
}

// send packets in response to incoming
void prvSimpleUDPServerTask( void *pvParameters )
{
	// receiving side
	long lBytes;
	uint8_t *pucUDPPayloadBuffer;
	struct freertos_sockaddr xClient, xBindAddress;
	uint32_t xClientLength = sizeof( xClient );
	Socket_t xListeningSocket;
	const TickType_t xSendTimeOut = 200 / portTICK_PERIOD_MS;

	// sending side
	Socket_t xSocket;
	struct freertos_sockaddr xDestinationAddress;
	noahCreateSocket( &xSocket, &xDestinationAddress );

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


   // set up transmit side
   noahCreateSocket( &xSocket, &xDestinationAddress );
   noahSendTestString( xSocket, xDestinationAddress, "First nice packet " );


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
			noahSendTestString( xSocket, xDestinationAddress, "Made it across " );
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


void vUDPSendingUsingZeroCopyInterface( void *pvParameters )
{
	Socket_t xSocket;
	uint8_t *pucBuffer;
	struct freertos_sockaddr xDestinationAddress;
	BaseType_t lReturned;
	uint32_t ulCount = 0UL;
	const char *pucStringToSend = "Zero copy send message number ";
	const TickType_t x1000ms = 1000UL / portTICK_PERIOD_MS;
	/* 15 is added to ensure the number, rn and terminating zero fit. */
	const size_t xStringLength = strlen( ( char * ) pucStringToSend ) + 15;

   /* Send strings to port 10000 on IP address 192.168.0.50. */
   xDestinationAddress.sin_addr = FreeRTOS_inet_addr( "192.168.1.1" );
   xDestinationAddress.sin_port = FreeRTOS_htons( 6002 );

   /* Create the socket. */
   xSocket = FreeRTOS_socket( FREERTOS_AF_INET,
                              FREERTOS_SOCK_DGRAM,/*FREERTOS_SOCK_DGRAM for UDP.*/
                              FREERTOS_IPPROTO_UDP );

   /* Check the socket was created. */
   configASSERT( xSocket != FREERTOS_INVALID_SOCKET );

   /* NOTE: FreeRTOS_bind() is not called.  This will only work if
   ipconfigALLOW_SOCKET_SEND_WITHOUT_BIND is set to 1 in FreeRTOSIPConfig.h. */

   for( ;; )
   {
       /* This RTOS task is going to send using the zero copy interface.  The
       data being sent is therefore written directly into a buffer that is
       passed into, rather than copied into, the FreeRTOS_sendto()
       function.

       First obtain a buffer of adequate length from the TCP/IP stack into which
       the string will be written. */
       pucBuffer = FreeRTOS_GetUDPPayloadBuffer( xStringLength, portMAX_DELAY );

       /* Check a buffer was obtained. */
       configASSERT( pucBuffer );

       /* Create the string that is sent. */
       memset( pucBuffer, 0x00, xStringLength );
       sprintf( pucBuffer, "%s%lu\r\n", pucStringToSend, ulCount );

       /* Pass the buffer into the send function.  ulFlags has the
       FREERTOS_ZERO_COPY bit set so the TCP/IP stack will take control of the
       buffer rather than copy data out of the buffer. */
       lReturned = FreeRTOS_sendto( xSocket,
                                   ( void * ) pucBuffer,
                                   strlen( ( const char * ) pucBuffer ) + 1,
                                   FREERTOS_ZERO_COPY,
                                   &xDestinationAddress,
                                   sizeof( xDestinationAddress ) );

       if( lReturned == 0 )
       {
           /* The send operation failed, so this RTOS task is still responsible
           for the buffer obtained from the TCP/IP stack.  To ensure the buffer
           is not lost it must either be used again, or, as in this case,
           returned to the TCP/IP stack using FreeRTOS_ReleaseUDPPayloadBuffer().
           pucBuffer can be safely re-used after this call. */
           FreeRTOS_ReleaseUDPPayloadBuffer( ( void * ) pucBuffer );
       }
       else
       {
           /* The send was successful so the TCP/IP stack is now managing the
           buffer pointed to by pucBuffer, and the TCP/IP stack will
           return the buffer once it has been sent.  pucBuffer can
           be safely re-used. */
       }

       ulCount++;

       /* Wait until it is time to send again. */
       vTaskDelay( x1000ms );
   }
}



int32_t noahCreateSocket( Socket_t *p_xSocket, struct freertos_sockaddr *p_xDestinationAddress ){

	// Send strings to port 10000 on IP address 192.168.0.50.
	p_xDestinationAddress->sin_addr = FreeRTOS_inet_addr( "192.168.1.1" );
	p_xDestinationAddress->sin_port = FreeRTOS_htons( 6003 );

	// Create the socket.
	*p_xSocket = FreeRTOS_socket( FREERTOS_AF_INET,
							  FREERTOS_SOCK_DGRAM,/*FREERTOS_SOCK_DGRAM for UDP.*/
							  FREERTOS_IPPROTO_UDP );

	// Check the socket was created.
	configASSERT( *p_xSocket != FREERTOS_INVALID_SOCKET );

	return 1;
}


int32_t noahSendTestString( Socket_t xSocket, struct freertos_sockaddr xDestinationAddress, const char *pucStringToSend ){

	//const char    *pucStringToSend = "test qqqq zzzz xxxx ";
	const size_t   xStringLength   = strlen( ( char * ) pucStringToSend ) + 15;
	char          *pucBuffer;
	BaseType_t     lReturned;
	uint32_t       ulCount         = 0UL;

	/*First obtain a buffer of adequate length from the TCP/IP stack into which the string will be written. */
	pucBuffer = FreeRTOS_GetUDPPayloadBuffer( xStringLength, portMAX_DELAY );
	configASSERT( pucBuffer ); 	/* Check a buffer was obtained. */
	memset( pucBuffer, 0x00, xStringLength );  /* Create the string that is sent. */
	sprintf( pucBuffer, "%s%lu\r\n", pucStringToSend, ulCount );
	/* Pass the buffer into the send function.  ulFlags has the
		FREERTOS_ZERO_COPY bit set so the TCP/IP stack will take control of the
		buffer rather than copy data out of the buffer. */
	lReturned = FreeRTOS_sendto( xSocket,
								( void * ) pucBuffer,
								strlen( ( const char * ) pucBuffer ) + 1,
								FREERTOS_ZERO_COPY,
								&xDestinationAddress,
								sizeof( xDestinationAddress ) );

	if( lReturned == 0 )
	{
		/* The send operation failed, so this RTOS task is still responsible
		for the buffer obtained from the TCP/IP stack.  To ensure the buffer
		is not lost it must either be used again, or, as in this case,
		returned to the TCP/IP stack using FreeRTOS_ReleaseUDPPayloadBuffer().
		pucBuffer can be safely re-used after this call. */
		FreeRTOS_ReleaseUDPPayloadBuffer( ( void * ) pucBuffer );
	}
	else
	{
		/* The send was successful so the TCP/IP stack is now managing the
		buffer pointed to by pucBuffer, and the TCP/IP stack will
		return the buffer once it has been sent.  pucBuffer can
		be safely re-used. */
	}

	return 1;
}

int32_t noah_packet_count = 0;

void noah_hello( void )
{
	noah_packet_count++;
}
