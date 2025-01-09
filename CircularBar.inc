; Barra circular de fundo
[styleCircularBar]
Meter=Roundline
X=37.5
Y=37.5
W=50
H=50
Solid=1
LineColor=255,255,255,50
LineStart=55
LineLength=50
StartAngle=4.712388
RotationAngle=6.283185
AntiAlias=1

;Barra circular medidor
[MeterCircularBar]
Meter=Roundline
MeasureName=#MeasureName#
X=37.5
Y=37.5
W=50
H=50
LineColor=#FontColor#
Solid=1
Hidden=0
AntiAlias=1
LineStart=55
LineLength=50
StartAngle=4.712388  ; Posição inicial
RotationAngle=(#MeasureName# * 6.283185 / 100);
AntiAlias=1


; Posição do texto
[meterLabel]
Meter=String
MeterStyle=styleLeftText
StringAlign=Center
DynamicVariables=1
X=60
Y=20


; Posição do valor
[meterValue]
Meter=String
StringAlign=right
MeterStyle=styleRightText
X=80
Y=85
Text=[#TextMeasureName#:0]%
DynamicVariables=1

; Posição icone
[iconCPU]
Meter=Image
MeterStyle=SimpleImage
ImageTint=#FontColor#
X = 45
Y = 45
W = 35