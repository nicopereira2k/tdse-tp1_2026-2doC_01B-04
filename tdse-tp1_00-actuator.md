# Actuator - Eventos y Acciones

## Eventos

| Evento | Descripción |
|---|---|
| EV_LED_ON | Solicita encender el LED. |
| EV_LED_OFF | Solicita apagar el LED. |
| EV_LED_TOGGLE | Solicita invertir el estado del LED. |

## Acciones

| Acción | Descripción |
|---|---|
| ACT_LED_ON | Enciende el LED. |
| ACT_LED_OFF | Apaga el LED. |
| ACT_LED_TOGGLE | Invierte el estado del LED. |
| ACT_TIMER_INIT | Inicializa el temporizador. |
| ACT_TIMER_UPDATE | Actualiza el temporizador. |

Paso 11
| Estado actual | Excitación | Acción | Estado siguiente |
|---|---|---|---|
| ST_LED_OFF | EV_LED_PULSE | ACT_LED_ON + iniciar timer | ST_LED_PULSE |
| ST_LED_PULSE | tick [timer cumplido] | ACT_LED_OFF | ST_LED_OFF |
