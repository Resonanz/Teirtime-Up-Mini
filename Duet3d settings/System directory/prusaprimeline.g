; RW 2022-07-18

;https://groups.google.com/g/3d-printing-tips--tricks/c/gvz2d4RweLU?pli=1
G1 X3 Y3 F500                      ; Move to start position
G1 X60 Y3 F500 E15                 ; Draw the first line
G1 X60 Y60 F500 E30
G92 E0                             ; Reset Extruder