#ifndef MAINBOARD_GPIO_H

#define MAINBOARD_GPIO_H

#include <soc/gpio.h>
#include <types.h>

const struct pad_config *mainboard_get_gpios(size_t *num);

#endif /* MAINBOARD_GPIO_H */
