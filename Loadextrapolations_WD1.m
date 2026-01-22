clc;
clear;
digitsOld=digits(50);

Neq=600;
Pturb=0.05;
m=10;
% 
load('Mx_blade_sorted4.mat');
Mx_blade4=Mx_blade_sorted;
load('Mx_blade_sorted6.mat');
Mx_blade6=Mx_blade_sorted;
load('Mx_blade_sorted8.mat');
Mx_blade8=Mx_blade_sorted;
load('Mx_blade_sorted10.mat');
Mx_blade10=Mx_blade_sorted;
load('Mx_blade_sorted12.mat');
Mx_blade12=Mx_blade_sorted;
load('Mx_blade_sorted14.mat');
Mx_blade14=Mx_blade_sorted;
load('Mx_blade_sorted16.mat');
Mx_blade16=Mx_blade_sorted;
load('Mx_blade_sorted18.mat');
Mx_blade18=Mx_blade_sorted;
load('Mx_blade_sorted20.mat');
Mx_blade20=Mx_blade_sorted;

Pwind=[0.139110919
0.190219317
0.207406387
0.180966256
0.174567862
0.065893609
0.025121077
0.011162736
0.005551837
];

DEL_gev= zeros(500,1);
del_m_turb=zeros(9,20);
del_m_gev=zeros(9,500);

for jj=1:500
    jj
for MWS=1:9
if MWS==1
Mx_blade=Mx_blade4;
    v=4;
elseif MWS==2
Mx_blade=Mx_blade6;
    v=6;
elseif MWS==3
Mx_blade=Mx_blade8;
    v=8;
elseif MWS==4
Mx_blade=Mx_blade10;
    v=10;
elseif MWS==5
Mx_blade=Mx_blade12;
    v=12;
elseif MWS==6
Mx_blade=Mx_blade14;
    v=14;
elseif MWS==7
Mx_blade=Mx_blade16;
    v=16;
elseif MWS==8
Mx_blade=Mx_blade18;
    v=18;
elseif MWS==9
Mx_blade=Mx_blade20;
    v=20;
end

   Pw=Pwind(MWS,1); 
ran1=[];
R=randsample(100,6);
for    t_i=1:20
    range1=[];
    ran1=[];
    for hc=1:6
        c2=rainflow(Mx_blade(:,(100*(t_i-1)+R(hc,1))));
if MWS<3
    ran1=c2(find(c2(:,2)>0.1),2)/2;
elseif MWS<7
     ran1=c2(find(c2(:,2)>0.15),2)/2;
else 
    ran1=c2(find(c2(:,2)>0.2),2)/2;
end
   range1=[range1;ran1];
   ran1=[];
    end
LL=[];
L=[];
F=[];
FF=[];
% gg1=fitdist(range1,'Gamma');
%  a=gg1.a;
% b=gg1.b;
% [pesos3, alpha3, beta3]=GMMestimator(range1,3,20,a,b);  
% 
% 
% x=0.1:0.01:10;
% g1 =cdf('Gamma',x,alpha3(1),beta3(1));
% g2=cdf('Gamma',x,alpha3(2),beta3(2)) ;
% g3=cdf('Gamma',x,alpha3(3),beta3(3)) ;
% y=pesos3(1)*g1+pesos3(2)*g2+pesos3(3)*g3;
% par= polyfit(x,y,5);


yr=10;
time_scaled=365*24*6*yr;

 range1=sortrows(range1);
 if MWS<3
LL=range1(round(0.95*size(range1,1)):end,1);
L=range1(1:round(0.95*size(range1,1)),1);
 else
 LL=range1(round(0.98*size(range1,1)):end,1);
 L=range1(1:round(0.98*size(range1,1)),1);
% del_m_turb(MWS,t_i)=Pturb*Pw*time_scaled*0.92*(sum((L.^m)));
% del_m_turb(MWS,t_i)=Pturb*Pw*time_scaled*0.97*(sum((L.^m)));
 end

% LL=range1(size(range1,1)-400:end,1);
% L=range1(1:(size(range1,1)-401),1);
% del_m_turb(MWS,t_i)=Pturb*Pw*time_scaled(sum((L.^m)));

del_m_turb(MWS,t_i)=Pturb*Pw*time_scaled*(sum((L.^m)));

% FIT=gevfit(LL);

%%%%%%%%%%%%%%%%%%%finding 1yr return load in each MWS
CDF_RL_MWS=exp(-1/Pw/Pturb/time_scaled);
%CDF_RL_MWS=1-(1/Pw/Pturb/time_scaled);

% syms f(X) X
% f(X) = par(1)*X^5+par(2)*X^4+par(3)*X^3++par(4)*X^2*+par(5)*X+par(6)-0.999;
% sol = vpasolve(f);
% sol= sol(imag(sol)==0,1);
% R_L=double(max(sol(:,1)))

n=size(LL,1);
for nn=1:n
    F(nn,1)=(nn-0.3)/(n+0.4);
end
% [F,X]=ecdf(LL);
FF=log(-log(F));
fun=@(b,x)(-1/b(1)).*log(1+(b(1).*(x-b(3))/b(2)));
b0 = [0.1 std(LL) mean(LL)];
% mdl= lsqcurvefit(fun,b0,LL,FF);
mdl=nlinfit(LL,FF,fun,b0);
par1=mdl(1);
par2=mdl(2);
par3=mdl(3);

R_L=icdf('gev',CDF_RL_MWS,par1,par2,par3,'upper');
%%%%%%%%%%%%%%%%%%%arranging number of cycles
% g11 =vpa(cdf('Gamma',(R_L),alpha3(1),beta3(1)));
% g12=vpa(cdf('Gamma',(R_L),alpha3(2),beta3(2))) ;
% g13 = vpa(cdf('Gamma',(R_L),alpha3(3),beta3(3)));
% yg1_gmm3= pesos3(1)*g11+pesos3(2)*g12+pesos3(3)*g13;
% % % yg1_gmm3=vpa(pesos3(1)*g1+pesos3(2)*g12);
% g21 = vpa(cdf('Gamma',(R_L+0.5),alpha3(1),beta3(1)));
% g22= vpa(cdf('Gamma',(R_L+0.5),alpha3(2),beta3(2)));
% g23= vpa(cdf('Gamma',(R_L+0.5),alpha3(3),beta3(3)));
% yg2_gmm3= vpa(pesos3(1)*g21+pesos3(2)*g22+pesos3(3)*g23)
% % yg2_gmm3= vpa(pesos3(1)*g2+pesos3(2)*g22);
% 
%  pdf_RL=vpa(yg2_gmm3-yg1_gmm3)
%  pdf_RL=yg1_gmm3
 pdf_RL=gevpdf(R_L,par1,par2,par3);
n_factor=1/pdf_RL;
for counter=max(L):0.1:R_L
%       g11 = vpa(cdf('Gamma',(counter-0.5),alpha3(1),beta3(1)));
%       g12=vpa(cdf('Gamma',(counter-0.5),alpha3(2),beta3(2))) ;
%       g13 = vpa(cdf('Gamma',(counter-0.5),alpha3(3),beta3(3)));
%       yg1_gmm3= pesos3(1)*g11+pesos3(2)*g12+pesos3(3)*g13;
%       yg1_gmm3= pesos3(1)*g1+pesos3(2)*g12;
%       g21 = vpa(cdf('Gamma',(counter+0.5),alpha3(1),beta3(1)));
%       g22= vpa(cdf('Gamma',(counter+0.5),alpha3(2),beta3(2)));
%       g23= vpa(cdf('Gamma',(counter+0.5),alpha3(3),beta3(3)));
%       yg2_gmm3= vpa(pesos3(1)*g21+pesos3(2)*g22+pesos3(3)*g23); 
%       yg2_gmm3= vpa(pesos3(1)*g2+pesos3(2)*g22);
%       yg_gmm3=vpa(yg2_gmm3)-vpa(yg1_gmm3);

% P_counter=vpa(exp(-exp(-(p1*(counter+0.5)+p2))))-vpa(exp(-exp(-(p1*((counter-0.5)+p2)))));    
 P_counter=vpa(gevcdf(counter+0.5,par1,par2,par3))-vpa(gevcdf(counter-0.5,par1,par2,par3));    

n_i=Pw*Pturb*P_counter*n_factor;


 del_m_turb(MWS,t_i)=del_m_turb(MWS,t_i)+(n_i*(counter^m));
end
del_m_gev(MWS,jj)=sum(del_m_turb(MWS,t_i));
end
DEL_gev(jj,1)=(sum(del_m_gev(:,jj))/time_scaled/600)^(1/m);
end
end
logDEL_gev=log(DEL_gev);
% 
% save('DEL_Medianrank_yr5.mat','DEL_gev')
% 
% 
% DEL_gev= zeros(500,1);
% del_m_turb=zeros(9,20);
% del_m_gev=zeros(9,500);
% for jj=1:500
%     jj
% for MWS=1:9
% if MWS==1
% Mx_blade=Mx_blade4;
%     v=4;
% elseif MWS==2
% Mx_blade=Mx_blade6;
%     v=6;
% elseif MWS==3
% Mx_blade=Mx_blade8;
%     v=8;
% elseif MWS==4
% Mx_blade=Mx_blade10;
%     v=10;
% elseif MWS==5
% Mx_blade=Mx_blade12;
%     v=12;
% elseif MWS==6
% Mx_blade=Mx_blade14;
%     v=14;
% elseif MWS==7
% Mx_blade=Mx_blade16;
%     v=16;
% elseif MWS==8
% Mx_blade=Mx_blade18;
%     v=18;
% elseif MWS==9
% Mx_blade=Mx_blade20;
%     v=20;
% end
% 
% %   cycles=[];
%    Pw=Pwind(MWS,1); 
% ran1=[];
% R=randsample(100,6);
% for    t_i=1:20
%     range1=[];
%     ran1=[];
%     for hc=1:6
%         c2=rainflow(Mx_blade(:,(100*(t_i-1)+R(hc,1))));
% 
% if MWS<3
%     ran1=c2(find(c2(:,2)>0.1),2)/2;
% else
%      ran1=c2(find(c2(:,2)>0.2),2)/2;
% end
%    range1=[range1;ran1];
%    ran1=[];
%     end
% LL=[];
% L=[];
% F=[];
% FF=[];
% 
% 
% yr=10;
% time_scaled=365*24*6*yr;
% 
%  range1=sortrows(range1);
%  if MWS<3
% LL=range1(round(0.95*size(range1,1)):end,1);
% L=range1(1:round(0.95*size(range1,1)),1);
%  else
%  LL=range1(round(0.98*size(range1,1)):end,1);
%  L=range1(1:round(0.98*size(range1,1)),1);
% % del_m_turb(MWS,t_i)=Pturb*Pw*time_scaled*0.92*(sum((L.^m)));
% % del_m_turb(MWS,t_i)=Pturb*Pw*time_scaled*0.97*(sum((L.^m)));
%  end
% 
% del_m_turb(MWS,t_i)=Pturb*Pw*time_scaled*(sum((L.^m)));
% FIT=gevfit(LL);
% 
% %%%%%%%%%%%%%%%%%%%finding 1yr return load in each MWS
% CDF_RL_MWS=exp(-1/Pw/Pturb/time_scaled);
% 
% 
% n=size(LL,1);
% for nn=1:n
%     F(nn,1)=(nn-0.3)/(n+0.4);
% end
% % [F,X]=ecdf(LL);
% FF=log(-log(F));
% fun=@(b,x)(-1/b(1)).*log(1+(b(1).*(x-b(3))/b(2)));
% b0 = [FIT(1) FIT(2) FIT(3)];
% % mdl= lsqcurvefit(fun,b0,LL,FF);
% mdl=nlinfit(LL,FF,fun,b0);
% par1=mdl(1);
% par2=mdl(2);
% par3=mdl(3);
% 
% R_L=icdf('gev',CDF_RL_MWS,par1,par2,par3,'upper');
% 
%  pdf_RL=gevpdf(R_L,par1,par2,par3);
% n_factor=1/pdf_RL;
% for counter=max(L):0.1:R_L  
%  P_counter=vpa(gevcdf(counter+0.5,par1,par2,par3))-vpa(gevcdf(counter-0.5,par1,par2,par3));    
% 
% n_i=Pw*Pturb*P_counter*n_factor;
% 
%  del_m_turb(MWS,t_i)=del_m_turb(MWS,t_i)+(n_i*(counter^m));
% end
% del_m_gev(MWS,jj)=sum(del_m_turb(MWS,t_i));
% end
% DEL_gev(jj,1)=(sum(del_m_gev(:,jj))/time_scaled/600)^(1/m);
% end
% end
% logDEL_gev=log(DEL_gev);
% 
% save('DEL_Medianrank_yr10.mat','DEL_gev')
% 
% 
% DEL_gev= zeros(500,1);
% del_m_turb=zeros(9,20);
% del_m_gev=zeros(9,500);
% 
% for jj=1:500
%     jj
% for MWS=1:9
% if MWS==1
% Mx_blade=Mx_blade4;
%     v=4;
% elseif MWS==2
% Mx_blade=Mx_blade6;
%     v=6;
% elseif MWS==3
% Mx_blade=Mx_blade8;
%     v=8;
% elseif MWS==4
% Mx_blade=Mx_blade10;
%     v=10;
% elseif MWS==5
% Mx_blade=Mx_blade12;
%     v=12;
% elseif MWS==6
% Mx_blade=Mx_blade14;
%     v=14;
% elseif MWS==7
% Mx_blade=Mx_blade16;
%     v=16;
% elseif MWS==8
% Mx_blade=Mx_blade18;
%     v=18;
% elseif MWS==9
% Mx_blade=Mx_blade20;
%     v=20;
% end
% 
% %   cycles=[];
%    Pw=Pwind(MWS,1); 
% ran1=[];
% R=randsample(100,6);
% for    t_i=1:20
%     range1=[];
%     ran1=[];
%     for hc=1:6
%         c2=rainflow(Mx_blade(:,(100*(t_i-1)+R(hc,1))));
% if MWS<3
%     ran1=c2(find(c2(:,2)>0.1),2)/2;
% else
%      ran1=c2(find(c2(:,2)>0.2),2)/2;
% end
%    range1=[range1;ran1];
%    ran1=[];
%     end
% LL=[];
% L=[];
% F=[];
% FF=[];
% 
% yr=15;
% time_scaled=365*24*6*yr;
% 
%  range1=sortrows(range1);
%  if MWS<3
% LL=range1(round(0.95*size(range1,1)):end,1);
% L=range1(1:round(0.95*size(range1,1)),1);
%  else
%  LL=range1(round(0.98*size(range1,1)):end,1);
%  L=range1(1:round(0.98*size(range1,1)),1);
%  end
% 
% 
% del_m_turb(MWS,t_i)=Pturb*Pw*time_scaled*(sum((L.^m)));
% FIT=gevfit(LL);
% 
% %%%%%%%%%%%%%%%%%%%finding 1yr return load in each MWS
% CDF_RL_MWS=exp(-1/Pw/Pturb/time_scaled);
% 
% n=size(LL,1);
% for nn=1:n
%     F(nn,1)=(nn-0.3)/(n+0.4);
% end
% 
% FF=log(-log(F));
% fun=@(b,x)(-1/b(1)).*log(1+(b(1).*(x-b(3))/b(2)));
% b0 = [FIT(1) FIT(2) FIT(3)];
% mdl=nlinfit(LL,FF,fun,b0);
% par1=mdl(1);
% par2=mdl(2);
% par3=mdl(3);
% 
% R_L=icdf('gev',CDF_RL_MWS,par1,par2,par3,'upper');
% 
%  pdf_RL=gevpdf(R_L,par1,par2,par3);
% n_factor=1/pdf_RL;
% for counter=max(L):0.1:R_L
%    
%  P_counter=vpa(gevcdf(counter+0.5,par1,par2,par3))-vpa(gevcdf(counter-0.5,par1,par2,par3));    
% 
% n_i=Pw*Pturb*P_counter*n_factor;
% 
%  del_m_turb(MWS,t_i)=del_m_turb(MWS,t_i)+(n_i*(counter^m));
% end
% del_m_gev(MWS,jj)=sum(del_m_turb(MWS,t_i));
% end
% DEL_gev(jj,1)=(sum(del_m_gev(:,jj))/time_scaled/600)^(1/m);
% end
% end
% 
% save('DEL_Medianrank_yr15.mat','DEL_gev')
% 
% DEL_gev= zeros(500,1);
% del_m_turb=zeros(9,20);
% del_m_gev=zeros(9,500);
% 
% for jj=1:500
%     jj
% for MWS=1:9
% if MWS==1
% Mx_blade=Mx_blade4;
%     v=4;
% elseif MWS==2
% Mx_blade=Mx_blade6;
%     v=6;
% elseif MWS==3
% Mx_blade=Mx_blade8;
%     v=8;
% elseif MWS==4
% Mx_blade=Mx_blade10;
%     v=10;
% elseif MWS==5
% Mx_blade=Mx_blade12;
%     v=12;
% elseif MWS==6
% Mx_blade=Mx_blade14;
%     v=14;
% elseif MWS==7
% Mx_blade=Mx_blade16;
%     v=16;
% elseif MWS==8
% Mx_blade=Mx_blade18;
%     v=18;
% elseif MWS==9
% Mx_blade=Mx_blade20;
%     v=20;
% end
% 
% %   cycles=[];
%    Pw=Pwind(MWS,1); 
% ran1=[];
% R=randsample(100,6);
% for    t_i=1:20
%     range1=[];
%     ran1=[];
%     for hc=1:6
%         c2=rainflow(Mx_blade(:,(100*(t_i-1)+R(hc,1))));
% if MWS<3
%     ran1=c2(find(c2(:,2)>0.1),2)/2;
% else
%      ran1=c2(find(c2(:,2)>0.2),2)/2;
% end
%    range1=[range1;ran1];
%    ran1=[];
%     end
% LL=[];
% L=[];
% F=[];
% FF=[];
% 
% yr=20;
% time_scaled=365*24*6*yr;
% 
%  range1=sortrows(range1);
%  if MWS<3
% LL=range1(round(0.95*size(range1,1)):end,1);
% L=range1(1:round(0.95*size(range1,1)),1);
%  else
%  LL=range1(round(0.98*size(range1,1)):end,1);
%  L=range1(1:round(0.98*size(range1,1)),1);
%  end
% 
% 
% del_m_turb(MWS,t_i)=Pturb*Pw*time_scaled*(sum((L.^m)));
% FIT=gevfit(LL);
% 
% %%%%%%%%%%%%%%%%%%%finding 1yr return load in each MWS
% CDF_RL_MWS=exp(-1/Pw/Pturb/time_scaled);
% 
% n=size(LL,1);
% for nn=1:n
%     F(nn,1)=(nn-0.3)/(n+0.4);
% end
% 
% FF=log(-log(F));
% fun=@(b,x)(-1/b(1)).*log(1+(b(1).*(x-b(3))/b(2)));
% b0 = [FIT(1) FIT(2) FIT(3)];
% mdl=nlinfit(LL,FF,fun,b0);
% par1=mdl(1);
% par2=mdl(2);
% par3=mdl(3);
% 
% R_L=icdf('gev',CDF_RL_MWS,par1,par2,par3,'upper');
% 
%  pdf_RL=gevpdf(R_L,par1,par2,par3);
% n_factor=1/pdf_RL;
% for counter=max(L):0.1:R_L
%    
%  P_counter=vpa(gevcdf(counter+0.5,par1,par2,par3))-vpa(gevcdf(counter-0.5,par1,par2,par3));    
% 
% n_i=Pw*Pturb*P_counter*n_factor;
% 
%  del_m_turb(MWS,t_i)=del_m_turb(MWS,t_i)+(n_i*(counter^m));
% end
% del_m_gev(MWS,jj)=sum(del_m_turb(MWS,t_i));
% end
% DEL_gev(jj,1)=(sum(del_m_gev(:,jj))/time_scaled/600)^(1/m);
% end
% end
% save('DEL_Medianrank_yr20.mat','DEL_gev')
