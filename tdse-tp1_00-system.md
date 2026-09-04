# Eventos y Acciones del modelo System
## Eventos
Definimos dos tipos de eventos, `EV_SYS_UP` y `EV_SYS_DOWN`.
## Estados (States)
Definmos dos estados relacionados al sistema, `ST_SLEEP` y `ST_AWAKE`.
### ST_SLEEP y ST_AWAKE
- El sistema se puede encontrar en dos estados, `ST_AWAKE`, donde el sistema está procesando y `ST_SLEEP` cuando no lo está

## Acciones
Definimos las siguientes acciones, `EV_ACT_OPEN`, `EV_ACT_CLOSE` y `EV_ACT_PRINT`. 
### EV_ACT_OPEN, EV_ACT_CLOSE y EV_ACT_PRINT
Son tres señales que el sistema envía al actuador para controlar el comportamiento de las salidas.

## System Statechart - State Transition Table
| Current State | Event | [Guard] | Next State | Actions |
| :------------: | :----: | :------: | :--------: | :-------: |
| ST_SLEEP | EV_SYS_UP | x | - | - |
| ST_SLEEP | EV_SYS_DOWN | x | ST_AWAKE | `EV_ACT_OPEN` y `EV_ACT_PRINT` | 
| ST_AWAKE | EV_SYS_UP | x | ST_SLEEP | `EV_ACT_CLOSE` |
| ST_AWAKE | EV_SYS_DOWN | x | - | `EV_ACT_OPEN` y `EV_ACT_PRINT` |
