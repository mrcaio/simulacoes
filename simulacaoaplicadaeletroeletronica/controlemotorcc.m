Ra=0.5;
La=0.01;
Rf=75;
Lf=0.02;
Jmot=0.4; %Momento de inercia
Va=1200;
rpm=1200;
If=1.6;

%
CV=1.5625;
Pe=CV*736;

%
w_rad=rpm*2*pi/60;

%
Ia=(Va-sqrt(Va^2-4*Ra*Pe))/(2*Ra);

%
Ea=Va-Ra*Ia;

%
Tem=Ea*Ia/w_rad;
Laf=(Va-Ra*Ia)/(If*w_rad);

%
Jcarga=0.9; %Dados da Carga

%
Jtot=Jmot+Jcarga;
w_rede=2*pi*60;

%
%Ki=0.1;
%Ltot=sqrt((((0.47*Ra)^2)/(Ki^2))-Ra^2)/(4*w_rad^2)

%
Llinha=150e-3; %Modo continuo da indutancia linha

%
Ltot=Llinha+La;

%
s=tf('s');

%
G_mot_rad=(Laf*If)/(Jtot*s*(Ra+Ltot*s)+(Laf*If)^2);

%
G_mot_rpm=G_mot_rad*60/(2*pi);

%
u_controle=5.68;

%
G_ponte=Va/u_controle;

%
G_tot=G_ponte*G_mot_rpm;

%
pole(G_tot)

%
step(u_controle*G_tot)

%
C_pid_filtro=1.3139*(s^2+3.125*s+4.026)/(s*(s+5));

%
pidstd(C_pid_filtro)

%
Kp=0.61;
Ti=0.576;
Td=0.231;
N=1.16; %Funcao do polo adicional

%
R1=10e3;
R2=10e3; %R do integrador
R3=10e3; %R do derivativo

%
R2=R1*Kp
Ci=Ti/Ri
Cd=Td/Rd
rd=Rd/N %Resistor adicional amortecer o derivativo