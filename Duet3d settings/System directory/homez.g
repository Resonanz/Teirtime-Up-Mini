; homez.g
; called to home the Z axis

G91                        ; relative positioning

M913 Z60                   ; drop motor current to 70%

G1 H1 Z3 F3000             ; Move Z quickly down a little to get away from nozzle. If hits bottom, then = short hit
G1 H1 Z-3 F3000            ; Return Z to previous. If at top, should be right at nozzle tip

G1 H1 Z120 F3000           ; Move quickly to X axis endstop and stop there
G1 H2 Z-3 F1200            ; go back a few mm
G1 H1 Z3 F100              ; move slowly to X axis endstop for accurate endstop positioning

M913 X100                  ; return current to 100%

G1 H1 Z-35 F2000           ; Move to near-print-start position
G1 H1 Z-5 F500             ; Slowly...
G1 H1 Z-2.4 F100           ; Very slowly... last little bit. We are now almost touching print head (see G92 below)

G90                        ; absolute positioning
G92 Z0                     ; Set Z origin in Duet

G1 Z5 H2 F500              ; Move nozzle away from buildplate. H2 overwrites endstops to force below 0. 