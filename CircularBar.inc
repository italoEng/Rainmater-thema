; Barra circular
[styleCircularBar]
Meter=Roundline
X=50
Y=50
W=50
H=50
Solid=1
LineColor=255,255,255,50
LineStart=65
LineLength=50
StartAngle=4.712388
RotationAngle=6.283185
AntiAlias=1

[MeterCircularBar]
Meter=Roundline
MeasureName=#MeasureName#
X=50
Y=50
W=50
H=50
LineColor=#colorBar#
Solid=1
LineStart=65
LineLength=50
StartAngle=4.712388  ; Posição inicial
RotationAngle=([MeasureCPU] * 6.283185 / 100);
AntiAlias=1

; Posição do texto
[meterLabelCPU]
Meter=String
MeterStyle=styleLeftText
X=50
Y=30
W=190
H=14
