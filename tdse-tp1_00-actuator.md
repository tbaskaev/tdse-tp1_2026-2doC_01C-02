# Eventos y Acciones del modelo Actuator
## Eventos
Definimos dos tipos de eventos, `EV_ACT_OPEN` y `EV_ACT_CLOSE`.
## Estados (States)
Definmos los estados relacionados al actuador, `ST_OPENED`, `ST_CLOSED`, `ST_OPENING` y `ST_CLOSING`.
### ST_OPENED, ST_CLOSED, ST_OPENING y ST_CLOSING
- El actuador, al recibir la señal del sistema, se puede encontrar en cuatro estados: `ST_OPENED`, donde la "barrera" se encuentra levantada, `ST_CLOSED` cuando la barrera está cerrada, `ST_OPENING` cuando se está abriendo y `ST_CLOSING` cuando se está cerrando.

## Acciones
Definimos las siguientes acciones, `EV_ACT_LED`, `EV_ACT_CLOSE` y `EV_ACT_PRINT`. 
### EV_ACT_OPEN, EV_ACT_CLOSE y EV_ACT_PRINT
Son tres señales que el sistema envía al actuador para controlar el comportamiento de las salidas.

## System Statechart - State Transition Table
| Current State | Event | [Guard] | Next State | Actions |
| :------------: | :----: | :------: | :--------: | :-------: |
| |
