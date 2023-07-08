[System]
Name='fuzzy_inference_systems_in_ovens'
Type='mamdani'
Version=2.0
NumInputs=3
NumOutputs=2
NumRules=27
AndMethod='min'
OrMethod='max'
ImpMethod='min'
AggMethod='max'
DefuzzMethod='centroid'

[Input1]
Name='Food_Temp'
Range=[0 36]
NumMFs=3
MF1='very_cold':'trimf',[0 0 15.5]
MF2='cold':'trimf',[11.5 18.5 26.5]
MF3='normal':'trimf',[22.5 36 36]

[Input2]
Name='physics_of_food'
Range=[0 110]
NumMFs=3
MF1='liquid':'trimf',[0 0 50]
MF2='mush':'trimf',[40 60 80]
MF3='solid':'trimf',[70 110 150]

[Input3]
Name='wight_of_food'
Range=[0 1200]
NumMFs=3
MF1='light':'trimf',[0 0 500]
MF2='medium':'trimf',[300 600 900]
MF3='heavy':'trimf',[700 1200 1200]

[Output1]
Name='duration_(Min)'
Range=[0 17]
NumMFs=3
MF1='short':'trimf',[0 0 8]
MF2='medium':'trimf',[4 8.5 14]
MF3='long':'trimf',[10 17 17]

[Output2]
Name='heat_degree_(Celsius)'
Range=[70 200]
NumMFs=3
MF1='low_heat':'trimf',[70 70 130]
MF2='medium_heat':'trimf',[90 135 180]
MF3='high_heat':'trimf',[140 200 254]

[Rules]
1 1 1, 1 2 (1) : 1
1 2 1, 2 2 (1) : 1
1 3 1, 2 2 (1) : 1
1 1 2, 2 2 (1) : 1
1 2 2, 2 3 (1) : 1
1 3 2, 3 2 (1) : 1
1 1 3, 3 2 (1) : 1
1 2 3, 3 3 (1) : 1
1 3 3, 3 3 (1) : 1
2 1 1, 2 1 (1) : 1
2 2 1, 2 1 (1) : 1
2 3 1, 2 2 (1) : 1
2 1 2, 2 2 (1) : 1
2 2 2, 2 2 (1) : 1
2 3 2, 2 2 (1) : 1
2 1 3, 2 3 (1) : 1
2 2 3, 3 3 (1) : 1
2 3 3, 3 3 (1) : 1
3 1 1, 1 1 (1) : 1
3 2 1, 1 1 (1) : 1
3 3 1, 1 2 (1) : 1
3 1 2, 1 2 (1) : 1
3 2 2, 2 2 (1) : 1
3 3 2, 2 3 (1) : 1
3 1 3, 2 3 (1) : 1
3 2 3, 3 2 (1) : 1
3 3 3, 3 2 (1) : 1
