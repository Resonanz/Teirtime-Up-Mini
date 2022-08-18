; homeu.g
; called to home the U axis
;
G91               ; relative positioning
G1 S1 U-165 F2400 ; move quickly to U axis endstop and stop there (first pass)
G1 U5 F300        ; go back a few mm
G1 S1 U-165 F360  ; move slowly to U axis endstop once more (second pass)
G90               ; absolute positioning

