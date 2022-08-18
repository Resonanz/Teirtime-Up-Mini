; homey.g
; called to home the Y axis

G91 ; relative positioning

M913 Y60 ; drop motor current to 70%

G1 H1 Y5 F3000 ; in case at endstop already, move away from the endstop position a little
G1 H1 Y-150 F3000 ; move quickly to Y axis endstop and stop there (first pass)
G1 H2 Y2 F1200 ; go back a few mm
G1 H1 Y-2 F100 ; move slowly to Y axis endstop once more (second pass)

G1 H1 Y10 F2000 ; 

M913 Y100 ; return current to 100%

G90 ; absolute positioning

G92 Y0        ; Set current Y position to y = 0