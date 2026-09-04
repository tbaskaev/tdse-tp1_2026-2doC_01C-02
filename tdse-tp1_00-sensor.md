# Eventos y Acciones del modelo Sensor
## Eventos
Definimos dos tipos de eventos, `EV_BTN_UP` y `EV_BTN_DOWN`.
## Estados (States)
Definmos cuatro estados relacionados al sensor, `ST_BTN_UP`, `ST_BTN_FALLING`, `ST_BTN_DOWN` y `ST_BTN_RISING`.
### ST_BTN_FALLING y ST_BTN_RISING
- Se implementan estos estados para filtrar posibles ruidos (glitches) del botón mismo.

## Acciones
Definimos las siguientes acciones, `tick = DEL_BTN_50MS`, `tick--` y las señales `EV_SYS_UP` y `EV_SYS_DOWN`
### tick = DEL_BTN_50MS y tick--
Le asignamos a la variable `tick` un valor temporal delay igual a 50ms. Esto nos asegura, cuando tick sea igual a 0ms, que el botón se haya apretado realmente y evitar errores por ruido.
### Señales `EV_SYS_UP` y `EV_SYS_DOWN
Las dos señales que le confirman al sistema el estado del botón.
