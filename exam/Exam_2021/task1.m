%% Task 1
clear all; clc;
% b)
% data from Table 1
k_m = 5.7;
m_F = 0.8;
m_M = 1e-5;
m_L = 0.3;
d_F = 6;
k_F = 6000;
d_B = 1;
k_B = 800;
d = 3;
% defining matrices
A = [(-(d_B+d)/m_L) 0 d/m_L 0 d_B/m_L k_B/m_L;
1 0 0 0 0 0;
d/m_F 0 (-(d_F+d)/m_F) k_F/m_F 0 0;
0 0 -1 0 0 0;
d_B/m_M 0 0 0 (-d_B/m_M) (-k_B/m_M);
-1 0 0 1 0 0];
B = [0; 0; (-k_m/m_F); 0; (k_m/m_M); 0];
C = [0,1,0,0,0,0;
0,0,0,1,0,0;
0,0,0,0,0,1];
D = [0;0;0];
% displaying matrices A,B,C,D
format shortG
A
B
C
D

%% Task 1
clear all; clc;
% c)
% data from Table 1
k_m = 5.7;
m_F = 0.8;
m_M = 1e-5;
m_L = 0.3;
d_F = 6;
k_F = 6000;
d_B = 1;
k_B = 800;
d = 3;
% defining matrices
A = [(-(d_B+d)/m_L) 0 d/m_L 0 d_B/m_L k_B/m_L;
1 0 0 0 0 0;
d/m_F 0 (-(d_F+d)/m_F) k_F/m_F 0 0;
0 0 -1 0 0 0;
d_B/m_M 0 0 0 (-d_B/m_M) (-k_B/m_M);
-1 0 0 1 0 0];
B = [0; 0; (-k_m/m_F); 0; (k_m/m_M); 0];
C = [0,1,0,0,0,0;
0,0,0,1,0,0;
0,0,0,0,0,1];
% D = [0;0;0];
C1 = [0,1,0,0,0,0];
C2 = [0,0,0,1,0,0];
C3 = [0,0,0,0,0,1];
D = [0];
% creating transfer functions
[num1, den1] = ss2tf(A, B, C1, D);

[num2, den2] = ss2tf(A, B, C2, D);
[num3, den3] = ss2tf(A, B, C3, D);
tf1 = tf(num1, den1)
tf2 = tf(num2, den2)
tf3 = tf(num3, den3)

%% Task 1
clear all; clc;
% d)
% data from Table 1
k_m = 5.7;
m_F = 0.8;
m_M = 1e-5;
m_L = 0.3;
d_F = 6;
k_F = 6000;
d_B = 1;
k_B = 800;
d = 3;
% defining matrices
A = [(-(d_B+d)/m_L) 0 d/m_L 0 d_B/m_L k_B/m_L;
1 0 0 0 0 0;
d/m_F 0 (-(d_F+d)/m_F) k_F/m_F 0 0;
0 0 -1 0 0 0;
d_B/m_M 0 0 0 (-d_B/m_M) (-k_B/m_M);
-1 0 0 1 0 0];
B = [0; 0; (-k_m/m_F); 0; (k_m/m_M); 0];
C = [0,1,0,0,0,0;
0,0,0,1,0,0;
0,0,0,0,0,1];
D = [0;0;0];
% displaying the poles
poles = eig(A)

%% Task 1
clear all; clc;
% e)
% data from Table 1
k_m = 5.7;
m_F = 0.8;
m_M = 1e-5;
m_L = 0.3;
d_F = 6;
k_F = 6000;
d_B = 1;
k_B = 800;
d = 3;
% defining matrices
A = [(-(d_B+d)/m_L) 0 d/m_L 0 d_B/m_L k_B/m_L;
1 0 0 0 0 0;
d/m_F 0 (-(d_F+d)/m_F) k_F/m_F 0 0;
0 0 -1 0 0 0;
d_B/m_M 0 0 0 (-d_B/m_M) (-k_B/m_M);
-1 0 0 1 0 0];
B = [0; 0; (-k_m/m_F); 0; (k_m/m_M); 0];
C = [0,1,0,0,0,0;
0,0,0,1,0,0;
0,0,0,0,0,1];
% D = [0;0;0];
C1 = [0,1,0,0,0,0];

C2 = [0,0,0,1,0,0];
C3 = [0,0,0,0,0,1];
D = [0];
% creating transfer functions
[num1, den1] = ss2tf(A, B, C1, D);
[num2, den2] = ss2tf(A, B, C2, D);
[num3, den3] = ss2tf(A, B, C3, D);
tf1 = tf(num1, den1)
tf2 = tf(num2, den2)
tf3 = tf(num3, den3)
% plotting step responses
figure(1);
subplot(2,2,1); step(tf1); title('step response to Xload');
subplot(2,2,2); step(tf2); title('step response to Xframe');
subplot(2,2,3); step(tf3); title('step response to Xmotor');
% plotting Bode plots
figure(2);
subplot(2,2,1); bode(tf1); title('Bode diagram Xload');
subplot(2,2,2); bode(tf2); title('Bode diagram Xframe');
subplot(2,2,3); bode(tf3); title('Bode diagram Xmotor');
