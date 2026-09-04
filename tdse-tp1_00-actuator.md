# Eventos y Acciones del modelo Actuator
## Eventos
Definimos dos tipos de eventos, `EV_ACT_OPEN` y `EV_ACT_CLOSE`.
## Estados (States)
Definmos los estados relacionados al actuador, `ST_OPENED`, `ST_CLOSED`, `ST_OPENING` y `ST_CLOSING`.
### ST_OPENED, ST_CLOSED, ST_OPENING y ST_CLOSING
- El actuador, al recibir la señal del sistema, se puede encontrar en cuatro estados: `ST_OPENED`, donde la "barrera" se encuentra levantada, `ST_CLOSED` cuando la barrera está cerrada, `ST_OPENING` cuando se está abriendo y `ST_CLOSING` cuando se está cerrando.

## Acciones
Definimos las siguientes acciones, `ACT_LED_ON`, `ACT_LED_OFF`, `ACT_LED_FBLINK`, `ACT_LED_SBLINK`, `led_tick = DEL_LED_1000MS` `led_tick--`
### ACT_LED_ON, ACT_LED_OFF, ACT_LED_FBLINK y ACT_LED_SBLINK
Son las siguientes acciones que modulan el comportamiento del LED, que simula la barrera.
### led_tick = DEL_LED_1000MS y led_tick--
Simula el tiempo de apertura y cierre de la barrera.

## Actuator Statechart - State Transition Table
| Current State | Event | [Guard] | Next State | Actions |
| :------------: | :----: | :------: | :--------: | :-------: |
| ST_CLOSED | EV_ACT_CLOSE | x | - | - |
| ST_CLOSED | EV_ACT_OPEN | x | ST_OPENING | ACT_LED_FBLINK, `led_tick = DEL_LED_1000MS` |
| ST_OPENING | EV_ACT_OPEN | `led_tick > 0` | ST_OPENING | ACT_LED_FBLINK, `led_tick--` |
| ST_OPENING | EV_ACT_OPEN | `led_tick == 0` | ST_OPEN | ACT_LED_ON |
| ST_OPENING | EV_ACT_CLOSE | x | ST_CLOSING | `led_tick = DEL_LED_1000MS - led_tick`, ACT_LED_SBLINK |
| ST_OPEN | EV_ACT_OPEN | x | - | - |
| ST_OPEN | EV_ACT_CLOSE | x | ST_CLOSING | ACT_LED_SBLINK, `led_tick = DEL_LED_1000MS` |
| ST_CLOSING | EV_ACT_CLOSE | `led_tick > 0` | - | ACT_LED_SBLINK, `led_tick--` |
| ST_CLOSING | EV_ACT_CLOSE | `led_tick == 0` | ST_CLOSE | ACT_LED_OFF |
| ST_CLOSING | EV_ACT_OPEN | x | ST_OPENING | `led_tick = DEL_LED_1000MS - led_tick`, ACT_LED_FBLINK |
