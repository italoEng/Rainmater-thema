; Barra circular de fundo
[styleCircularBar]
Meter=Roundline
X=50
Y=50
W=50
H=50
Solid=1
LineColor=255,255,255,50
LineStart=65
LineLength=60
StartAngle=4.712388
RotationAngle=6.283185
AntiAlias=1

;Barra circular medidor
[MeterCircularBar]
Meter=Roundline
MeasureName=#MeasureName#
X=50
Y=50
W=50
H=50
LineColor=#FontColor#
Solid=1
Hidden=0
AntiAlias=1
LineStart=65
LineLength=60
StartAngle=4.712388  ; Posição inicial
RotationAngle=(#MeasureName# * 6.283185 / 100);
AntiAlias=1


; Posição do texto
[meterLabel]
Meter=String
MeterStyle=styleLeftText
DynamicVariables=1
X=55
Y=25
W=190
H=14

; Posição do valor
[meterValue]
Meter=String
StringAlign=Center
MeterStyle=styleRightText
X=80
Y=100
W=190
H=14
Text=%1%
DynamicVariables=1

; Posição icone
[iconCPU]
Meter=Image
MeterStyle=SimpleImage
ImageTint=#FontColor#
X = 57
Y = 55
W = 35