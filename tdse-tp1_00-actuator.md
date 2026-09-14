# Modelo Actuador (LED)

## Descripción general
Este modelo representa el comportamiento del actuador que iría situado en la barrera en la entrada/salida del estacionamiento, el cual va a ser implementado como un LED.
El mismo va a recibir señales del sistema central para comenzar a abrir la barrera (parpadea el LED), detener el actuador con la barrera abierta (el LED queda prendido), empezar a cerrar la barrera (parpadea el LED devuelta) y detener la barrera una vez cerrada.
El parpadeo del LED tambien esta controlado por el sistema central a travez de un contador (variable `tick`).
Y el estado del LED va a ser representado con una variable booleana llamada 'LED_ON' donde el valor *true* indica que esta encendido y *false* que está apagado

## Eventos
* `EV_BARRIER_OPN` : señal enviada por el sistema central para empezar a abrir la barrera
* `EV_BARRIER_CLS` : señal enviada por el sistema central para empezar a cerrar la barrera
* `EV_BARRIER_STOP` : señal enviada por el sistema central para detener la barrera
* `EV_TICK_CHNG` : señal para controlar la velocidad de parpadeo del LED

## Acciones
* `tick = ()` : reinicia el temporizador
* `tick --` : reduce el temporizador
* `LED_ON = ()` : deja prendido o apagado el LED
* `!LED_ON` : invierte el estado del LED (prendido->apagado, apagado->prendido)

## Actuator Statechart - State Transition Table

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **Initial** | - | - | `ST_BARRIER_CLOSE` | `tick = ()` |
| `ST_BARRIER_CLOSE` | `EV_BARRIER_OPN` | - | `ST_BARRIER_LIFT` | - |
| `ST_BARRIER_LIFT` | `EV_TICK_CHNG` | `tick > 0` | `ST_BARRIER_LIFT` | `tick --` |
| `ST_BARRIER_LIFT` | `EV_TICK_CHNG` | `tick == 0` | `ST_BARRIER_LIFT` | `!LED_ON ; tick = ()` |
| `ST_BARRIER_LIFT` | `EV_BARRIER_STOP` | - | `ST_BARRIER_OPEN` | `LED_ON = true ; tick = ()` |
| `ST_BARRIER_OPEN` | `EV_BARRIER_CLS` | - | `ST_BARRIER_LOW` | - |
| `ST_BARRIER_LOW` | `EV_TICK_CHNG` | `tick > 0` | `ST_BARRIER_LOW` | `tick --` |
| `ST_BARRIER_LOW` | `EV_TICK_CHNG` | `tick == 0` | `ST_BARRIER_LOW` | `!LED_ON ; tick = ()` |
| `ST_BARRIER_LOW` | `EV_BARRIER_STOP` | - | `ST_BARRIER_CLOSE` | `LED_ON = false ; tick = ()` |
