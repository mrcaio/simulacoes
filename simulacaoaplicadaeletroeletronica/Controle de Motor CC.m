% Controle de Torque no Motor de Corrente Cont�nua
% controlando a corrente da armadura
% Caio Luiz Baader. Codigo de pessoa: 182127

clear all
clc

% Especificações
Ra=11e-3;           % Valor da resistencia da armadura
La=127e-6;          % Valor da indutancia da armadura
Vd=100;             % Valor da tensao de alimentação do conversor
Ia=10;              % Valor da corrente da armadura
Vtri=5;             % Valor de pico da portadora
Fs=9000;           % Valor da frequencia da portadora (comuta��o)
Wm=1800*pi/30;      % Velocidade angular de giro do motor
Iaref=1.3;          % Valor de referencia da corrente de armadura
Pmec=746;           % Potencia mecanica
Pele=Pmec;          % Valor da potencia eletrica maxima a ser convertida

% Definição da Planta
Kpi=Vd/Vtri/La;     % Valor do ganho da Planta G(s)=Ia(s)/Vc(s)
num=[0 1];          % Numerador da planta G(s)
den=[1 Ra/La];      % denominador da planta G(s)
G=Kpi*tf(num,den)   % Definação da Planta G(s)

% Definação do Compensador
Kci=0.506
nu=[1 86.61];
de=[1 0]; 
C=Kci*tf(nu,de)

% Definação do sensor de corrente
H=Iaref/Ia;
F=Iaref;

% Definação do sensor de corrente

FTMA = C*G*H

sisotool