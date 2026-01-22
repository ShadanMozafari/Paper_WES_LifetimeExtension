%Shamoz: condifential values are replaced with '--'
clear;
clc;

m=10;
digitsOld=digits(50);
% figure
Neq=600;
delm_Frnd=zeros(11,100);
delmPw=zeros(11,100);

%  tower siemens
%  c=--;
%  I=--;
%  H=c/I;

%  blade siemens
%  c=--;
%  I=--;
%  H=c/I;


cd('C:\Users\shmoz\--\Frandsen\4ms\sec3')
load('Mx_blade.mat','Mx_blade');
ran=[];
c=[];
v=4;
MWS=1;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
for seed=1:100
    c=rainflow(Mx_blade(:,seed));

      M_ave=c(:,3);
      S_ave=H*M_ave;
    fac=(1-abs(S_ave/Su));
    ran=c(:,2);
    Mm=ran./fac;
    cyc=c(:,1);
%   cycles=[cycles;cyc];
%   RANGE=[RANGE;ran];
    delm_Frnd(MWS,seed)=(sum(ran.^m))/Neq;
end
delmPw(MWS,1)=(mean(delm_Frnd(MWS,seed)))*Pw;
cd('C:\Users\shmoz\--\Frandsen\6ms\sec3')
load('Mx_blade.mat','Mx_blade');
ran=[];
c=[];
v=6;
MWS=2;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
for seed=1:100
    c=rainflow(Mx_blade(:,seed));

     M_ave=c(:,3);
     S_ave=H*M_ave;
    fac=(1-abs(S_ave/Su));
    ran=c(:,2);
    Mm=ran./fac;
    cyc=c(:,1);
%   cycles=[cycles;cyc];
%   RANGE=[RANGE;ran];
    delm_Frnd(MWS,seed)=(sum(ran.^m))/Neq;
end
delmPw(MWS,1)=(mean(delm_Frnd(MWS,seed)))*Pw;

cd('C:\Users\shmoz\--\Frandsen\8ms\sec3')
load('Mx_blade.mat','Mx_blade');
ran=[];
c=[];
v=8;
MWS=3;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
for seed=1:100
    c=rainflow(Mx_blade(:,seed));

  M_ave=c(:,3);
  S_ave=H*M_ave;
  fac=(1-abs(S_ave/Su));
    ran=c(:,2);
   Mm=ran./fac;
    cyc=c(:,1);
%   cycles=[cycles;cyc];
%   RANGE=[RANGE;ran];
    delm_Frnd(MWS,seed)=(sum(ran.^m))/Neq;
end
delmPw(MWS,1)=(mean(delm_Frnd(MWS,seed)))*Pw;

cd('C:\Users\shmoz\--\Frandsen\10ms\sec3')
load('Mx_blade.mat','Mx_blade');
ran=[];
c=[];
v=10;
MWS=4;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
for seed=1:100
    c=rainflow(Mx_blade(:,seed));

  M_ave=c(:,3);
  S_ave=H*M_ave;
  fac=(1-abs(S_ave/Su));
    ran=c(:,2);
  Mm=ran./fac;
    cyc=c(:,1);
%   cycles=[cycles;cyc];
%   RANGE=[RANGE;ran];
    delm_Frnd(MWS,seed)=(sum(ran.^m))/Neq;
end
delmPw(MWS,1)=(mean(delm_Frnd(MWS,seed)))*Pw;


cd('C:\Users\shmoz\--\Frandsen\12ms\sec3')
load('Mx_blade.mat','Mx_blade');
ran=[];
c=[];
v=12;
MWS=5;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
for seed=1:100
    c=rainflow(Mx_blade(:,seed));
 
  M_ave=c(:,3);
  S_ave=H*M_ave;
  fac=(1-abs(S_ave/Su));
    ran=c(:,2);
  Mm=ran./fac;
    cyc=c(:,1);
%   cycles=[cycles;cyc];
%   RANGE=[RANGE;ran];
    delm_Frnd(MWS,seed)=(sum(ran.^m))/Neq;
end
delmPw(MWS,1)=(mean(delm_Frnd(MWS,seed)))*Pw;


cd('C:\Users\shmoz\--\Frandsen\14ms\sec3')
load('Mx_blade.mat','Mx_blade');
ran=[];
c=[];
v=14;
MWS=6;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
for seed=1:100
    c=rainflow(Mx_blade(:,seed));

  M_ave=c(:,3);
  S_ave=H*M_ave;
  fac=(1-abs(S_ave/Su));
    ran=c(:,2);
   Mm=ran./fac;
    cyc=c(:,1)/2;
%   cycles=[cycles;cyc];
%   RANGE=[RANGE;ran];
    delm_Frnd(MWS,seed)=(sum(ran.^m))/Neq;
end
delmPw(MWS,1)=(mean(delm_Frnd(MWS,seed)))*Pw;

cd('C:\Users\shmoz\--\Frandsen\16ms\sec3')
load('Mx_blade.mat','Mx_blade');
ran=[];
c=[];
v=16;
MWS=7;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
for seed=1:100
    c=rainflow(Mx_blade(:,seed));

  M_ave=c(:,3);
  S_ave=H*M_ave;
  fac=(1-abs(S_ave/Su));
    ran=c(:,2);
   Mm=ran./fac;
    cyc=c(:,1);
%   cycles=[cycles;cyc];
%   RANGE=[RANGE;ran];
    delm_Frnd(MWS,seed)=(sum(ran.^m))/Neq;
end
delmPw(MWS,1)=(mean(delm_Frnd(MWS,seed)))*Pw;

cd('C:\Users\shmoz\--\Frandsen\18ms\sec3')
load('Mx_blade.mat','Mx_blade');
ran=[];
c=[];
v=18;
MWS=8;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
for seed=1:100
    c=rainflow(Mx_blade(:,seed));

  M_ave=c(:,3);
  S_ave=H*M_ave;
  fac=(1-abs(S_ave/Su));
    ran=c(:,2);
  Mm=ran./fac;
    cyc=c(:,1);
%   cycles=[cycles;cyc];
%   RANGE=[RANGE;ran];
    delm_Frnd(MWS,seed)=(sum(ran.^m))/Neq;
end
delmPw(MWS,1)=(mean(delm_Frnd(MWS,seed)))*Pw;

cd('C:\Users\shmoz\--\Frandsen\20ms\sec3')
load('Mx_blade.mat','Mx_blade');
ran=[];
c=[];
v=20;
MWS=9;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
for seed=1:100
    c=rainflow(Mx_blade(:,seed));

  M_ave=c(:,3);
  S_ave=H*M_ave;
  fac=(1-abs(S_ave/Su));
    ran=c(:,2);
  Mm=ran./fac;
    cyc=c(:,1);
%   cycles=[cycles;cyc];
%   RANGE=[RANGE;ran];
    delm_Frnd(MWS,seed)=(sum(ran.^m))/Neq;
end
delmPw(MWS,1)=(mean(delm_Frnd(MWS,seed)))*Pw;

cd('C:\Users\shmoz\--\Frandsen\22ms\sec3')
load('Mx_blade.mat','Mx_blade');
ran=[];
c=[];
v=22;
MWS=10;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
for seed=1:100
    c=rainflow(Mx_blade(:,seed));

  M_ave=c(:,3);
  S_ave=H*M_ave;
  fac=(1-abs(S_ave/Su));
    ran=c(:,2);
  Mm=ran./fac;
    cyc=c(:,1);
%   cycles=[cycles;cyc];
%   RANGE=[RANGE;ran];
    delm_Frnd(MWS,seed)=(sum(ran.^m))/Neq;
end
delmPw(MWS,1)=(mean(delm_Frnd(MWS,seed)))*Pw;


cd('C:\Users\shmoz\--\Frandsen\24ms\sec3')
load('Mx_blade.mat','Mx_blade');
ran=[];
c=[];
v=24;
MWS=11;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
for seed=1:100
    c=rainflow(Mx_blade(:,seed));
 
  M_ave=c(:,3);
  S_ave=H*M_ave;
  fac=(1-abs(S_ave/Su));
    ran=c(:,2);
  Mm=ran./fac;
    cyc=c(:,1);
%   cycles=[cycles;cyc];
%   RANGE=[RANGE;ran];
    delm_Frnd(MWS,seed)=(sum(ran.^m))/Neq;
end
delmPw(MWS,1)=(mean(delm_Frnd(MWS,seed)))*Pw;


save('delm_Frnd.mat','delm_Frnd')
