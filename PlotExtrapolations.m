clear;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%DEL extrapolation
% 
% load('C:\Users\shmoz\OneDrive - Danmarks Tekniske Universitet\Paper 3\SCADA\Postprocess\DEL_C08.mat')
% gg1=fitdist(DEL_all,'Gamma');
% a=gg1.a;
% b=gg1.b;
% [pesos, alpha, beta]=GMMestimator(DEL_all,2,20,a,b);  
% % ww1=fitdist(DEL_all,'Weibull');
% 
% x=0.1:0.01:5;
% g1 =cdf('Gamma',x,alpha(1),beta(1));
% g2=cdf('Gamma',x,alpha(2),beta(2)) ;
% y=pesos(1)*g1+pesos(2)*g2;
% % y2=cdf('Weibull',x,ww1.A,ww1.B);
% 
% [ef X]=ecdf(DEL_all);
% plot(x,log(1-y));
% hold on
% % plot(x,log(1-y2),'r *');
% % hold on
% plot(X(2:end-1),log(1-(ef(2:end-1))))
% hold on


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Load extrapolation possibility

%  load('DEL_Medianrank_yr1.mat')
load('DEL_percentage_yr1.mat');
 DEL_gev1=DEL_gev;
% load('DEL_Medianrank_5yr.mat')
load('DEL_percentage_5yr.mat');
 DEL_gev5=DEL_gev;
%load('DEL_Medianrank_yr10.mat')
load('DEL_percentage_yr10.mat');
 DEL_gev10=DEL_gev;
% load('DEL_Medianrank_yr15.mat')
load('DEL_percentage_yr15.mat');
 DEL_gev15=DEL_gev;
% load('DEL_Medianrank_yr20.mat')
load('DEL_percentage_yr20.mat');
 DEL_gev20=DEL_gev;
load('DEL_WD1.mat')
load('DEL_site.mat')
% 
[ef X]=ecdf(DEL_WD1);
 plot(X(2:end-1),log(1-(ef(2:end-1))),'k *');
%plot(X(2:end-1),(ef(2:end-1)),'k *');
hold on

[ef1 X1]=ecdf(DEL_gev1);
  plot(X1(2:end-1),log(1-(ef1(2:end-1))),'color','b');
% plot(X1(2:end-1),(ef1(2:end-1)),'color','b');
 hold on
[ef5 X5]=ecdf(DEL_gev5);
 % plot(X5(2:end-1),(ef5(2:end-1)));
plot(X5(2:end-1),log(1-(ef5(2:end-1))),'color','r');
 hold on
[ef10 X10]=ecdf(DEL_gev10);
plot(X10(2:end-1),log(1-(ef10(2:end-1))),'color','g');
% plot(X10(2:end-1),(ef10(2:end-1)),'color','g');
 hold on
[ef15 X15]=ecdf(DEL_gev15);
  plot(X15(2:end-1),log(1-(ef15(2:end-1))),'color','m');
%  plot(X15(2:end-1),ef15(2:end-1),'color','m');
 hold on
[ef20 X20]=ecdf(DEL_gev20);
  plot(X20(2:end-1),log(1-(ef20(2:end-1))),'color','y');
%  plot(X20(2:end-1),ef20(2:end-1),'color','y');


[eff Xx]=ecdf(DEL_site);
plot(Xx(2:end-1),log(1-(eff(2:end-1))),'r +');
% plot(Xx(2:end-1),(eff(2:end-1)),'k *');
hold on


