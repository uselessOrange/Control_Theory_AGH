K=8;
Z=[];
P=[-0.01,-0.2,-1];
sys=zpk(Z,P,K);


Ku=0.0319; 
%From simulink
Tu=13.653;
K1=Ku/1.7;
Ti=Tu/2;
Td=Tu/8;
Ki=K1/Ti;



Kd=0.0001:0.0001:0.04;


for i=1:length(Kd)
W=pid(K1,0,Kd(i));
H=1;
Y=feedback(sys*W,H);
G=stepinfo(Y);
Ov(i)=G.Overshoot;
St(i)=G.SettlingTime;
if Ov(i)<10
    ind=i;
    break
end
end