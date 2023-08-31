disp('SCARA-PRR Variant')
syms a1 a2 a3 a4 d1 t2 t3

%% Link Lengths 
a1 = 3;
a2 = 2;
a3 = 2;
a4 = 2;
%% Joint Variables
d1 = 2;

%% D-H Parameters [theta, d, r, alpha, offset]
% if prismatic joint: theta= theta, d = 0, offset = 1, after offset put the
%value of d 
% if revolute joint: theta = 0, offset = 0, after offset put the value of
% theta

H0_1 = Link([0,0,a2,0,1,a1]);
H0_1.qlim = [0 d1];

H1_2 = Link([0,0,a3,0,0,0]);
H1_2.qlim = [-pi/2 pi/2];

H2_3 = Link([0,0,a4,0,0,0]);
H2_3.qlim = [-pi/2 pi/2];

SCARA = SerialLink([H0_1 H1_2 H2_3], 'name','SCARA')
SCARA.plot([0 0 0], 'workspace',[-5 10 -10 10 -5 10]);
SCARA.teach