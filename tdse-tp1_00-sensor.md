El botón tiene 4 estados, presionado, soltado, transición a presionado y transición a soltado.

ST_BTN_NTPRESS
ST_BTN_TRPRESS
ST_BTN_PRESS
ST_BTN_TRNTPRESS

El botón empieza en estado ST_BTN_NTPRESS, si EV_BTN_PRESS entra en ST_BTN_TRPRESS y si sigue EV_BTN_PRESS queda completamente en ST_BTN_PRESS, una vez en ST_BTN_PRESS si se EV_BTN_RELEASE el botón se va al estado de ST_BTN_TRNTPRESS donde si sigue EV_BTN_RELEASE vuelve al estado inicial de ST_BTN_NTPRESS.

Durante los estados de transición, en el de transición a presionado si se detecta con un timer que se soltó el botón se vuelve al estado de original de soltado por si lo que paso fue solo ruido en el botón, y durante la transición a soltado y se detecta devuelta con un timer que se presiona entonces se vuelve al estado de presionado ya que devuelta pudo haber sido un error.

# Sensor - Estados y Excitaciones

## Estados

| Estado | Descripción |
|---|---|
| ST_BTN_NTPRESS | Botón no presionado y señal estable |
| ST_BTN_TRPRESS | Se detectó una posible pulsación y se espera la estabilización |
| ST_BTN_PRESS | Botón presionado y señal estable |
| ST_BTN_RELEASING | Se detectó una posible liberación y se espera la estabilización |

## Tabla de Estados y Excitaciones

| Estado actual | Excitación | Acción | Estado siguiente |
|---|---|---|---|
| ST_BTN_NTPRESS | EV_BTN_PRESS | iniciar timer | ST_BTN_TRPRESS |
| ST_BTN_TRPRESS | tick [timer cumplido] | DEL_BTN_PRESS | ST_BTN_PRESS |
| ST_BTN_PRESS | EV_BTN_RELEASE | iniciar timer | ST_BTN_TRNTPRESS |
| ST_BTN_TRNTPRESS | tick [timer cumplido] | DEL_BTN_NTPRESS | ST_BTN_NTPRESS |
