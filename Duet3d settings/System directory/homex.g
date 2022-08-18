; homex.g
; called to home the X axis

G91 ; relative positioning


M913 X60 ; drop motor current to 70%

G1 H1 X5 F3000 ; in case at endstop already, move away from the endstop position a little
G1 H1 X-150 F3000 ; move quickly to X axis endstop and stop there (first pass)
G1 H2 X2 F1200 ; go back a few mm
G1 H1 X-2 F100 ; move slowly to X axis endstop once more (second pass)

G1 H1 X5 F2000 ; 

M913 X100 ; return current to 100%

G90 ; absolute positioning

G92 X0        ; Set current X position to x = 0