#include "gpio.h"
#include "bb.h"
#include "stm32f4discovery.h"

void vApplicationIdleHook( void )
{

}

void vApplicationTickHook( void )
{
	GPIO_SET_LOW(GPIOD, PIN_LED_GREEN);
	GPIO_SET_LOW(GPIOD, PIN_LED_RED);
}
