# Modelo System (Sistema Central de Procesamiento)

## Descripción General

Este modelo describe el comportamiento del sistema de procesamiento principal de la maquina de estacionamiento, el cual a partir de su cámara, botón y sensor magnético (se van a implementar todos con pulsadores) debe utilizar el actuador (se implementa con un LED) para abrir y cerrar la barrera.
EL funcionamiento del mismo consiste inicialmente en esperar que la cámara registre la llegada de un auto, luego espera que alguien oprima el botón, una vez presionado abre la barrera, registra un cambio en el sensor magnético indicando que el auto esta pasando por debajo de la barrera, y cuando vuelve a registrar otro cambio en el sensor (el auto terminó de pasar) cierra la barrera volviendo a esperar que la cámara registre el próximo vehiculo.

## Eventos

* `EV_CAR_ARRIVES` : La cámara registra la llegada de un vehiculo
* `EV_BUTTON_PRESSED` : El botón se presiona (despues de haber filtrado el ruido en su señal)
* `EV_CAR_SENSOR` : Cambia la lectura en el sensor magnetico

## Eventos generados

* `EV_BARRIER_OPN` : Señal que se manda al actuador para empezar a abrir la barrera
* `EV_BARRIER_CLS` : Señal que se manda al actuador para empezar a cerrar la barrera

## Estados

* `ST_IDLE` : Esperando a la llegada de un vehículo
* `ST_WAIT_BUTTON` : Esperando a que se presione el botón
* `ST_OPEN_BARRIER` : Abriendo la barrera
* `ST_WAIT_CAR_LEAVES` : Esperando que termine de ingresar el vehículo

## Tabla de Estados y Excitaciones

| Current State | Event | [Guard] | Next State | Actions |
| :--- | :--- | :--- | :--- | :--- |
| **Initial** | - | - | `ST_IDLE` | - |
| `ST_IDLE` | `EV_CAR_ARRIVES` | - | `ST_WAIT_BUTTON` | - |
| `ST_WAIT_BUTTON` | `EV_BUTTON_PRESSED` | - | `ST_OPEN_BARRIER` | `raise EV_BARRIER_OPN` |
| `ST_OPEN_BARRIER` | `EV_CAR_SENSOR` | - | `ST_WAIT_CAR_LEAVES` | - |
| `ST_WAIT_CAR_LEAVES` | `EV_CAR_SENSOR` | - | `ST_IDLE` | `raise EV_BARRIER_CLS` |
