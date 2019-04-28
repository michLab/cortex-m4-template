#include "interrupts.h"

__attribute__((interrupt)) void EXTI0_IRQHandler(void)
{
	BaseType_t xHigherPriorityTaskWoken = pdFALSE;

	if(EXTI->PR & EXTI_PR_PR0){
		EXTI->PR = EXTI_PR_PR0;
		xSemaphoreGiveFromISR(xSemaphoreUserButton, &xHigherPriorityTaskWoken);
		portYIELD_FROM_ISR( xHigherPriorityTaskWoken );
	}
}
