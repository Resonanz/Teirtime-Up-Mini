; homeall.g
; called to home all axes

M400 ; Wait for current moves to finish

M98 P"homex.g"
M98 P"homey.g"
M98 P"homez.g"

M400 ; Wait for current moves to finish

;M98 P"prusaprimeline.g"

;M400 ; Wait for current moves to finish