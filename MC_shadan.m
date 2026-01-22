%Shamoz:Confidential content is replaced with '--'

clear;
clc;
n = 1e8;
%Neq=600*6*24*365*20;
Neq=600;
counter=0;
digitsOld = digits(50);
%  g=zeros(n,1);
%g1=zeros(n,1);
for ii =1:100
  tic
% ii
tower siemens
% m=4;
% c=--;
% I=--;

blade siemens
m=10;
c=--;
I=--;
H=c/I;

alpha=[5.45	20.33];
beta= [0.12	0.072];
pesos=[0.55	0.44];

Delta=lognrnd(-0.111,0.4724,n,1); 
K=lognrnd(--,0.528,n,1);
%DEL=gevrnd(-0.278,0.047,--,n,1);%Iref16
% DEL=gevrnd(-0.092,0.083,--,n,1);%Frnd
% DEL=normrnd(-0.119,--,n,1);%Site
 DEL=[gamrnd(alpha(1),beta(1),n*0.5,1);gamrnd(alpha(2),beta(2),n*0.5,1)];

for i=1:n
g= Delta(i)-(Neq*((DEL(i))^m)*(H^m)/K(i));

  if g<0
     counter=counter+1;
  end
end
%  if g1<0
%   counter1=counter1+1
 toc
end
 P_fail=vpa(counter/n/100)
% vi_delta=var(g1);
% vi_del=var(g1);
% V=var(g);
% sensitivity=vi_del/V;
% scatter(Delta,g);

