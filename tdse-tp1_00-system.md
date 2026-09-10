# System - Eventos y Acciones

## Eventos

| Evento | Descripción |
|---|---|
| EV_SYS_CAR_ARRIVES | Indica que un automóvil llegó a la entrada |
| EV_SYS_BUTTON_PRESSED | Indica que el usuario presionó el botón |
| EV_SYS_CAR_LEAVES | Indica que el automóvil se retiró |
| EV_SYS_CAR_INSIDE | Indica que el automóvil se encuentra dentro |

## Acciones

| Acción | Descripción |
|---|---|
| ACT_DISPLAY_WELCOME | Solicita al Display mostrar el mensaje de bienvenida |
| ACT_PRINT_TICKET | Solicita al Printer imprimir el ticket |
| ACT_OPEN_BARRIER | Solicita abrir la barrera |
| ACT_CLOSE_BARRIER | Solicita cerrar la barrera |
| ACT_CAR_INSIDE | Informa que el automóvil está dentro |

# System - Estados y Excitaciones

## Tabla de Estados y Excitaciones

| Estado actual | Excitación | Acción | Estado siguiente |
|---|---|---|---|
| ST_IDLE | EV_CAR_ARRIVES | ACT_WELCOME | ST_WAIT_BUTTON |
| ST_WAIT_BUTTON | EV_BUTTON_PRESSED | ACT_PRINT_TICKET + ACT_OPEN_BARRIER | ST_WAIT_CAR_LEAVES |
| ST_WAIT_CAR_LEAVES | EV_CAR_LEAVES | ACT_CLOSE_BARRIER | ST_WAIT_CAR_INSIDE |
| ST_WAIT_CAR_INSIDE | EV_CAR_INSIDE | ACT_SERVER | ST_IDLE |
