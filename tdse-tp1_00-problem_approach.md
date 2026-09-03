La solución de Coma consiste en tener un serivdor del sistema de estacionamiento al cual se conectan las computadoras que procesan los pagos, las maquinas automáticas de pagos, las maquinas de entrada y las de salida. 

Las maquinas de entrada incluyen una cámara que detecta la llegada de un auto, sensores magnéticos que indican la presencia de un auto, un botón que indica la solicitud del ticket y la barrera que impide el paso de los autos.

El suceso de eventos esperados serian primero que la cámara detecta la llegada de un auto, el conductor del auto presiona el botón para solicitar el ticket, el conductor recoge el ticket, la barrera se levanta, el sensor magnético posicionado bajo la barrera registra la presencia del auto y una vez que deja de detectarlo se baja la barrera terminado la secuencia dejandolo en espera a la llegada del siguiente cliente. 

Para modelar los sensores se utilizaran llaves_On_Off para la cámara y sensor magnético, y un pulsador para el botón.
Para modelar los actuadores (la barrera) se utilizara un led.
