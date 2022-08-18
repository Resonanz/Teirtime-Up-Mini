 ; Configuration file for Duet WiFi (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.4 on Wed Sep 30 2020 19:55:48 GMT+1300 (New Zealand Daylight Time)

; General preferences
G90                                     ; send absolute coordinates...
M83                                     ; ...but relative extruder moves
M550 P"DUET-1"                          ; set printer name
M575 P1 S1 B57600                       ; Set serial comms parameters for Panel Due (https://forum.duet3d.com/topic/18567/paneldue-stuck-on-connecting-after-duet-wifi-firmware-update)

; Network
M552 S1                                 ; enable network
M586 P0 S1                              ; enable HTTP
M586 P1 S0                              ; disable FTP
M586 P2 S0                              ; disable Telnet

; Drives
M569 P0 S1                                  ; physical drive 0 goes backwards
M569 P1 S0                                  ; physical drive 1 goes backwards
M569 P2 S0                                  ; physical drive 2 goes backwards
M569 P3 S0                                  ; physical drive 3 goes backwards
M584 X0 Y1 Z2 E3                            ; set drive mapping

M92 X80.00 Y80.00 Z80.00 E797.00            ; set steps per mm (837 steps/mm: https://wiki.e3d-online.com/Titan_Assembly)

M350 X16 Y16 Z16 E16 I1                     ; configure microstepping with interpolation

M566 X300.00 Y300.00 Z300.00 E300.00        ; E was 120 set maximum instantaneous speed changes (mm/min)

M203 X3200.00 Y3200.00 Z3200.00 E3200.00    ; set maximum speeds (mm/min)
M201 X2000.00 Y2000.00 Z2000.00 E2000.00    ;were all 1500 set accelerations (mm/s^2)
M906 X500 Y500 E800 I30                     ; set motor currents (mA) and motor idle factor in per cent
M906 Z500 I100                              ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                     ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                            ; set axis minima
M208 X80 Y110 Z110 S0                      ; set axis maxima

; Endstops
M574 X1 S3                                  ; configure sensorless endstop for low end on X
M574 Y1 S3                                  ; configure sensorless endstop for low end on Y
M574 Z1 S3                                  ; configure sensorless endstop for low end on Z

; Stall threshold for Trinamic driver chipd
M915 X Y R0 F0 S20                               ; S = stall threshold (was S10 previously but I increased motor current from 250-500 mA (x and y) and needed to increase S value)
M915 Z R0 F0 S10                                 ; S = stall threshold (was S10 previously but I increased motor current from 250-500 mA (x and y) and needed to increase S value)

; Z-Probe
M558 P0 H5 F120 T6000                            ; disable Z probe but set dive height, probe speed and travel speed
M557 X0:80 Y0:110 P2                             ; define mesh grid

; Heaters
M308 S0 P"bedtemp" Y"thermistor" T100000 B4138   ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bedheat" T0                            ; create bed HEATER 0 output on bedheat and map it to sensor 0
M307 H0 B1 S1.00                                 ; enable bang-bang mode for the bed heater and set PWM limit
M140 H0                                          ; map heated bed to heater 0
M143 H0 S80                                      ; set temperature limit for heater 0 to 120C

M308 S1 P"e0temp" Y"thermistor" T100000 B4138    ; configure sensor 1 as thermistor on pin e0temp
M950 H1 C"e0heat" T1                             ; create nozzle HEATER 1 output on e0heat and map it to sensor 1
M307 H1 B0 S1.00                                 ; disable bang-bang mode for heater and set PWM limit
M143 H1 S280                                     ; set temperature limit for heater 1 to 280C


; Fans
M950 F0 C"fan0" Q500                             ; create fan 0 on pin fan0 and set its frequency
M106 P0 S255 H-1                                 ; set fan 0 value. Thermostatic control is turned off

; Tools
M563 P0 S"Extruder" D0 H1 F0                     ; define TOOL 0 for heater H1
G10 P0 X0 Y0 Z0                                  ; set tool 0 axis offsets
G10 P0 R0 S0                                     ; set initial tool 0 active and standby temperatures to 0C
T0

; Custom settings are not defined

; Miscellaneous
M501                                    ; load saved parameters from non-volatile memory (https://docs.duet3d.com/User_manual/Reference/Gcodes#m501-read-stored-parameters)

