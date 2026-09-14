# Modelo Sensor (botón)

Este modelo representa el comportamiento de un pulsador con un filtro de rebotes, el cual funciona verificando que el botón se mantenga presionado o soltado durante una duración antes de determinar su estado envés de fijar su estado inmediatamente ante cualquier posible ruido en la señal del pulsador.

## Eventos

* `EV_BTN_PRESS` : Se presiona el botón 
* `EV_BTN_RELEASE` : Se suelta el botón 

## Estados

* `ST_BTN_NTPRESS` : Botón no presionado y señal estable
* `ST_BTN_TR_PRESS` : Se detectó una posible pulsación y se espera la estabilización
* `ST_BTN_PRESS` : Botón presionado y señal estable
* `ST_BTN_TR_NTPRESS` : Se detectó una posible liberación y se espera la estabilización

## Tabla de Estados y Excitaciones

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **Initial** | - | - | `ST_BTN_NTPRESS` | `tick = ()` |
| `ST_BTN_NTPRESS` | `EV_BTN_PRESS` | - | `ST_BTN_TR_PRESS` | `tick --` |
| `ST_BTN_TR_PRESS` | `EV_BTN_RELEASE` | - | `ST_BTN_NTPRESS` | - |
| `ST_BTN_TR_PRESS` | `tick == 0` | - | `ST_BTN_PRESS` | `tick = ()` |
| `ST_BTN_PRESS` | `EV_BTN_RELEASE` | - | `ST_BTN_TR_NTPRESS` | `tick --` |
| `ST_BTN_TR_NTPRESS` | `tick == 0` | - | `ST_BTN_NTPRESS` | `tick = ()` |
