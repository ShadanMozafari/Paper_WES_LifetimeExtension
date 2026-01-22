%Shamoz: Confidential values are replaced with '--'

clc;
clear;
Iref=0.16;
m=10;
I=zeros(11,7);
TI_eff=zeros(11,1);
Turb_eff=zeros(11,1);

Ct=[--];

di=[0;
    3.3;
    7.159;
    5;
    4.3;
    5.7;
    3.3];

Pr_WD=[0.555;
        0.096;
        0.050;
        0.054;
        0.069;
        0.093;
        0.083];

%Sigma_turb=Iref*(1.4);

E_turb=--;
Sigma_turb=--;

for MWS=1:11
for WD=1:7
    v=(MWS+1)*2;
%   E_turb=Iref*(0.75*v+3.8);    
    S_repr=(E_turb+1.28*Sigma_turb);
    if WD==1
        I(MWS,WD)=S_repr/v;
    else
    f=di(WD,1)/(sqrt(Ct(MWS,1)));
    I(MWS,WD)=Pr_WD(WD,1)*((sqrt((v^2/(1.5+0.8*f)^2)+S_repr^2)))^m;   
    end
end
Turb_eff(MWS,1)=(sum(I(MWS,:)))^(1/m);
TI_eff(MWS,1)=(sum(I(MWS,:)))^(1/m)/v;
end

save('TI_eff.mat','TI_eff');
save('Turb_eff.mat','Turb_eff');

