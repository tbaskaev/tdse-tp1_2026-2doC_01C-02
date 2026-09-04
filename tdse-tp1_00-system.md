# Eventos y Acciones del modelo System
## Eventos
Definimos dos tipos de eventos, `EV_SYS_UP` y `EV_SYS_DOWN`.
## Estados (States)
Definmos dos estados relacionados al sistema, `ST_SLEEP` y `ST_AWAKE`.
### ST_SLEEP y ST_AWAKE
- El sistema se puede encontrar en dos estados, `ST_AWAKE`, donde el sistema está procesando y `ST_SLEEP` cuando no lo está

## Acciones
Definimos las siguientes acciones, `EV_ACT_OPEN`, `EV_ACT_CLOSE`. `timer = DEL_SYS_5000MS`, `timer--`
### EV_ACT_OPEN y EV_ACT_CLOSE
Son dos señales que el sistema envía al actuador para controlar el comportamiento de la salida.
### timer = DEL_SYS_5000MS y timer--
Son las acciones para esperar 5 segundos antes de ir al `ST_SLEEP`.

## System Statechart - State Transition Table
| Current State | Event | [Guard] | Next State | Actions |
| :------------: | :----: | :------: | :--------: | :-------: |
| ST_SLEEP | EV_SYS_UP | x | - | - |
| ST_SLEEP | EV_SYS_DOWN | x | ST_AWAKE | `EV_ACT_OPEN`, `timer = DEL_SYS_5000MS` |
| ST_AWAKE | EV_SYS_UP | `timer > 0` | - | `timer--` |
| ST_AWAKE | EV_SYS_UP | `timer == 0` | ST_SLEEP | `EV_ACT_CLOSE` |
| ST_AWAKE | EV_SYS_DOWN | x | - | `timer = DEL_SYS_5000MS` |
