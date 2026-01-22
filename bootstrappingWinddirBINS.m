clear;
clc;
digitsOld=digits(50);
load('DEL1.mat')
load('DEL2.mat')
load('DEL3.mat')
load('DEL4.mat')
load('DEL5.mat')
load('DEL6.mat')
load('DEL7.mat')
% DEL_30yr_bin1=zeros(875120,1);
% DEL_30yr_bin2=zeros(151370,1);
% DEL_30yr_bin3=zeros(78840,1);
% DEL_30yr_bin4=zeros(85147,1);
% DEL_30yr_bin5=zeros(108800,1);
% DEL_30yr_bin6=zeros(146640,1);
% DEL_30yr_bin7=zeros(130870,1);
CDF_RL1=vpa(exp(-1/875120));
CDF_RL2=vpa(exp(-1/151370));
CDF_RL3=vpa(exp(-1/78840));
CDF_RL4=vpa(exp(-1/85147));
CDF_RL5=vpa(exp(-1/108800));
CDF_RL6=vpa(exp(-1/146640));
CDF_RL7=vpa(exp(-1/130870));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%WD1
GMModel = fitgmdist(DEL1,3);
R_L=3.02;
PD=pdf(GMModel,R_L);
factor=1*0.555/PD;
counter=0;
for L=0.1:0.01:R_L
    h=round(L*100)
       yg1=vpa(cdf(GMModel,L+0.005));
       yg2=vpa(cdf(GMModel,L-0.005));
       PD=vpa(yg1-yg2)
n(h,1)=round(factor*PD)
counter=counter+n(h,1);
if h==1
    DEL_30yr_bin1(1:n(h,1),1)=L;
else
DEL_30yr_bin1(counter-n(h,1)+1:counter,1)=L;
end
end
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%WD2
gg2=fitdist(DEL2,'Gamma');
a2=gg2.a;
b2=gg2.b;
[pesos2, alpha2, beta2]=GMMestimator(DEL2,2,20,a2,b2);  

R_L=3.05;

       g11 =vpa(cdf('Gamma',(R_L-0.005),alpha2(1),beta2(1)));
        g12=vpa(cdf('Gamma',(R_L-0.005),alpha2(2),beta2(2))) ;
        yg1= vpa(pesos2(1)*g11+pesos2(2)*g12);

       g21 = vpa(cdf('Gamma',(R_L+0.005),alpha2(1),beta2(1)));
       g22= vpa(cdf('Gamma',(R_L+0.005),alpha2(2),beta2(2)));
        yg2= vpa(pesos2(1)*g21+pesos2(2)*g22);
        PD=vpa(yg2-yg1);
        factor=1*0.096/PD;
        counter=0;
for L=0.1:0.01:R_L
    h=round(L*100)
       g11 =vpa(cdf('Gamma',(L-0.005),alpha2(1),beta2(1)));
       g12=vpa(cdf('Gamma',(L-0.005),alpha2(2),beta2(2))) ;
       yg1= vpa(pesos2(1)*g11+pesos2(2)*g12);

       g21 = vpa(cdf('Gamma',(L+0.005),alpha2(1),beta2(1)));
       g22= vpa(cdf('Gamma',(L+0.005),alpha2(2),beta2(2)));
       yg2= vpa(pesos2(1)*g21+pesos2(2)*g22);
       PD=vpa(yg2-yg1);
n(h,1)=round(factor*PD)
counter=counter+n(h,1);
if h==1
    DEL_30yr_bin2(1:n(h,1),1)=L;
else
DEL_30yr_bin2(counter-n(h,1)+1:counter,1)=L;
end
end
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%WD3
GMModel = fitgmdist(DEL3,3);
R_L=2.66;
PD=pdf(GMModel,R_L);
factor=1*0.05/PD;
counter=0;
for L=0.1:0.01:R_L
    h=round(L*100)
       yg1=vpa(cdf(GMModel,L+0.005));
       yg2=vpa(cdf(GMModel,L-0.005));
       PD=vpa(yg1-yg2);
n(h,1)=round(factor*PD)
counter=counter+n(h,1);
if h==1
    DEL_30yr_bin3(1:n(h,1),1)=L;
else
DEL_30yr_bin3(counter-n(h,1)+1:counter,1)=L;
end
end
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%WD4
GMModel = fitgmdist(DEL4,2);
R_L=3.16;
PD=pdf(GMModel,R_L);
factor=1*0.054/PD;
counter=0;
for L=0.1:0.01:R_L
    h=round(L*100)
       yg1= vpa(cdf(GMModel,L+0.005));
       yg2= vpa(cdf(GMModel,L-0.005));
       PD=vpa(yg1-yg2);
n(h,1)=round(factor*PD)
counter=counter+n(h,1);
if h==1
    DEL_30yr_bin4(1:n(h,1),1)=L;
else
DEL_30yr_bin4(counter-n(h,1)+1:counter,1)=L;
end
end
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%WD5
GMModel = fitgmdist(DEL5,2);
R_L=3.5;
PD=pdf(GMModel,R_L);
factor=1*0.069/PD;
counter=0;
for L=0.1:0.01:R_L
    h=round(L*100)
       yg1=vpa(cdf(GMModel,L+0.005));
       yg2=vpa(cdf(GMModel,L-0.005));
       PD=vpa(yg1-yg2);
n(h,1)=round(factor*PD)
counter=counter+n(h,1);
if h==1
    DEL_30yr_bin5(1:n(h,1),1)=L;
else
DEL_30yr_bin5(counter-n(h,1)+1:counter,1)=L;
end
end
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%WD6
GMModel = fitgmdist(DEL6,3);
R_L=2.86;
PD=pdf(GMModel,R_L);
factor=1*0.093/PD;
counter=0;
for L=0.1:0.01:R_L
    h=round(L*100)
       yg1=vpa(cdf(GMModel,L+0.005));
       yg2=vpa(cdf(GMModel,L-0.005));
       PD=vpa(yg1-yg2);
n(h,1)=round(factor*PD)
counter=counter+n(h,1);
if h==1
    DEL_30yr_bin6(1:n(h,1),1)=L;
else
DEL_30yr_bin6(counter-n(h,1)+1:counter,1)=L;
end
end
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%WD7
gg7=fitdist(DEL7,'Gamma');
a7=gg7.a;
b7=gg7.b;
[pesos7, alpha7, beta7]=GMMestimator(DEL7,2,20,a7,b7);  
R_L=3.07;

       g11 =vpa(cdf('Gamma',(R_L-0.005),alpha7(1),beta7(1)));
        g12=vpa(cdf('Gamma',(R_L-0.005),alpha7(2),beta7(2))) ;
        yg1= vpa(pesos7(1)*g11+pesos7(2)*g12);

       g21 = vpa(cdf('Gamma',(R_L+0.005),alpha7(1),beta7(1)));
       g22= vpa(cdf('Gamma',(R_L+0.005),alpha7(2),beta7(2)));
        yg2= vpa(pesos7(1)*g21+pesos7(2)*g22);
        PD=vpa(yg2-yg1);
        factor=1*0.083/PD;
        counter=0;
for L=0.1:0.01:R_L
    h=round(L*100)
       g11 =vpa(cdf('Gamma',(L-0.005),alpha7(1),beta7(1)));
       g12=vpa(cdf('Gamma',(L-0.005),alpha7(2),beta7(2))) ;
       yg1= vpa(pesos7(1)*g11+pesos7(2)*g12);

       g21 = vpa(cdf('Gamma',(L+0.005),alpha7(1),beta7(1)));
       g22= vpa(cdf('Gamma',(L+0.005),alpha7(2),beta7(2)));
       yg2= vpa(pesos7(1)*g21+pesos7(2)*g22);
       PD=vpa(yg2-yg1);
n(h,1)=round(factor*PD)
counter=counter+n(h,1);
if h==1
    DEL_30yr_bin7(1:n(h,1),1)=L;
else
DEL_30yr_bin7(counter-n(h,1)+1:counter,1)=L;
end
end