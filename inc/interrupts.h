#include "gpio.h"
#include "stm32f4discovery.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

extern xSemaphoreHandle xSemaphoreUserButton;

void EXTI0_IRQHandler(void);
