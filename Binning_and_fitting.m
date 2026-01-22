%ShaMoz: Confidential values are replaced with '--'

clc;
clear;

mn_DELm=zeros(9,1);
var_DELm=zeros(9,1);
mean_DELm=zeros(7,1);
std_DELm=zeros(7,1);
m=10;

% T_bin1=rmoutliers(turb1);
% itq1=(quantile(turb1,0.75))-(quantile(turb1,0.25));
% turb1(find(turb1<=(quantile(turb1,0.25)-(1.5*itq1))))=[];
% turb1(find(turb1>=(quantile(turb1,0.75)+(1.5*itq1))))=[];

% itq2=(quantile(turb2,0.75))-(quantile(turb2,0.25));
% turb2(find(turb2<=(quantile(turb2,0.25)-(1.5*itq2))))=[];
% turb2(find(turb2>=(quantile(turb2,0.75)+(1.5*itq2))))=[];
% r1=xlsread('Outliers.xlsx','MedianRank10','A:A');
% r2=xlsread('Outliers.xlsx','MedianRank10','B:B');
% f1=fitmethis(turb1);
% f2=fitmethis(turb2);

%Fitting 3p weibull:
% fun =@(x) -sum(log(x(1))-(x(1)*log(x(2)))+(x(1)-1)*log(turb2-x(3))-((turb2-x(3))/(x(2))).^x(1));
% X0=[1,5,0];
% [x,fval,exitflag,output]=fminunc(fun,X0)

%%%%%%WD1 (NONWAKED)
% load('DEL_8_2008.mat')
% load('DEL_8_2009.mat')
% load('DEL_8_2010.mat')
% load('DEL_8_2011.mat')
% load('DEL_8_2012.mat')

load('WD1_4.mat')
v=4;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(1,1)=Pw^2*var((WD1_4(:,6)/1000).^m);
mn_DELm(1,1)=Pw*mean((WD1_4(:,6)/1000).^m);
Turb1_4=WD1_4(:,16);

load('WD1_6.mat')
v=6;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(2,1)=Pw^2*var((WD1_6(:,6)/1000).^m);
mn_DELm(2,1)=Pw*mean((WD1_6(:,6)/1000).^m);
Turb1_6=WD1_6(:,16);

load('WD1_8.mat')
v=8;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(3,1)=Pw^2*var((WD1_8(:,6)/1000).^m);
mn_DELm(3,1)=Pw*mean((WD1_8(:,6)/1000).^m);
Turb1_8=WD1_8(:,16);

load('WD1_10.mat')
v=10;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(4,1)=Pw^2*var((WD1_10(:,6)/1000).^m);
mn_DELm(4,1)=Pw*mean((WD1_10(:,6)/1000).^m);
Turb1_10=WD1_10(:,16);

load('WD1_12.mat')
v=12;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(5,1)=Pw^2*var((WD1_12(:,6)/1000).^m);
mn_DELm(5,1)=Pw*mean((WD1_12(:,6)/1000).^m);
Turb1_12=WD1_12(:,16);

load('WD1_14.mat')
v=14;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(6,1)=Pw^2*var((WD1_14(:,6)/1000).^m);
mn_DELm(6,1)=Pw*mean((WD1_14(:,6)/1000).^m);
Turb1_14=WD1_14(:,16);

load('WD1_16.mat')
v=16;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(7,1)=Pw^2*var((WD1_16(:,6)/1000).^m);
mn_DELm(7,1)=Pw*mean((WD1_16(:,6)/1000).^m);
Turb1_16=WD1_16(:,16);


load('WD1_18.mat')
v=18;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(8,1)=Pw^2*var((WD1_18(:,6)/1000).^m);
mn_DELm(8,1)=Pw*mean((WD1_18(:,6)/1000).^m);
Turb1_18=WD1_18(:,16);

load('WD1_20.mat')
v=20;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(9,1)=Pw^2*var((WD1_20(:,6)/1000).^m);
mn_DELm(9,1)=Pw*mean((WD1_20(:,6)/1000).^m);
Turb1_20=WD1_20(:,16);

% mean_DELm(1,1)=sum(mn_DELm);
% std_DELm(1,1)=sqrt(sum(var_DELm));

load('WD2_4.mat')
v=4;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(1,1)=Pw^2*var((WD2_4(:,6)/1000).^m);
mn_DELm(1,1)=Pw*mean((WD2_4(:,6)/1000).^m);
Turb2_4=WD2_4(:,16);

load('WD2_6.mat')
v=6;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(2,1)=Pw^2*var((WD2_6(:,6)/1000).^m);
mn_DELm(2,1)=Pw*mean((WD2_6(:,6)/1000).^m);
Turb2_6=WD2_6(:,16);

load('WD2_8.mat')
v=8;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(3,1)=Pw^2*var((WD2_8(:,6)/1000).^m);
mn_DELm(3,1)=Pw*mean((WD2_8(:,6)/1000).^m);
Turb2_8=WD2_8(:,16);

load('WD2_10.mat')
v=10;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(4,1)=Pw^2*var((WD2_10(:,6)/1000).^m);
mn_DELm(4,1)=Pw*mean((WD2_10(:,6)/1000).^m);
Turb2_10=WD2_10(:,16);

load('WD2_12.mat')
v=12;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(5,1)=Pw^2*var((WD2_12(:,6)/1000).^m);
mn_DELm(5,1)=Pw*mean((WD2_12(:,6)/1000).^m);
Turb2_12=WD2_12(:,16);

load('WD2_14.mat')
v=14;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(6,1)=Pw^2*var((WD2_14(:,6)/1000).^m);
mn_DELm(6,1)=Pw*mean((WD2_14(:,6)/1000).^m);
Turb2_14=WD2_14(:,16);

load('WD2_16.mat')
v=16;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(7,1)=Pw^2*var((WD2_16(:,6)/1000).^m);
mn_DELm(7,1)=Pw*mean((WD2_16(:,6)/1000).^m);
Turb2_16=WD2_16(:,16);

load('WD2_18.mat')
v=18;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(8,1)=Pw^2*var((WD2_18(:,6)/1000).^m);
mn_DELm(8,1)=Pw*mean((WD2_18(:,6)/1000).^m);
Turb2_18=WD2_18(:,16);

% mean_DELm(2,1)=sum(mn_DELm);
% std_DELm(2,1)=sqrt(sum(var_DELm));


load('WD3_4.mat')
v=4;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(1,1)=Pw^2*var((WD3_4(:,6)/1000).^m);
mn_DELm(1,1)=Pw*mean((WD3_4(:,6)/1000).^m);
Turb3_4=WD3_4(:,16);

load('WD3_6.mat')
v=6;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(2,1)=Pw^2*var((WD3_6(:,6)/1000).^m);
mn_DELm(2,1)=Pw*mean((WD3_6(:,6)/1000).^m);
Turb3_6=WD3_6(:,16);

load('WD3_8.mat')
v=8;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(3,1)=Pw^2*var((WD3_8(:,6)/1000).^m);
mn_DELm(3,1)=Pw*mean((WD3_8(:,6)/1000).^m);
Turb3_8=WD3_8(:,16);

load('WD3_10.mat')
v=10;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(4,1)=Pw^2*var((WD3_10(:,6)/1000).^m);
mn_DELm(4,1)=Pw*mean((WD3_10(:,6)/1000).^m);
Turb3_10=WD3_10(:,16);

load('WD3_12.mat')
v=12;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(5,1)=Pw^2*var((WD3_12(:,6)/1000).^m);
mn_DELm(5,1)=Pw*mean((WD3_12(:,6)/1000).^m);
Turb3_12=WD3_12(:,16);

load('WD3_14.mat')
v=14;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(6,1)=Pw^2*var((WD3_14(:,6)/1000).^m);
mn_DELm(6,1)=Pw*mean((WD3_14(:,6)/1000).^m);
Turb3_14=WD3_14(:,16);

% mean_DELm(3,1)=sum(mn_DELm);
% std_DELm(3,1)=sqrt(sum(var_DELm));


load('WD4_4.mat')
v=4;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(1,1)=Pw^2*var((WD4_4(:,6)/1000).^m);
mn_DELm(1,1)=Pw*mean((WD4_4(:,6)/1000).^m);
Turb4_4=WD4_4(:,16);

load('WD4_6.mat')
v=6;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(2,1)=Pw^2*var((WD4_6(:,6)/1000).^m);
mn_DELm(2,1)=Pw*mean((WD4_6(:,6)/1000).^m);
Turb4_6=WD4_6(:,16);

load('WD4_8.mat')
v=8;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(3,1)=Pw^2*var((WD4_8(:,6)/1000).^m);
mn_DELm(3,1)=Pw*mean((WD4_8(:,6)/1000).^m);
Turb4_8=WD4_8(:,16);

load('WD4_10.mat')
v=10;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(4,1)=Pw^2*var((WD4_10(:,6)/1000).^m);
mn_DELm(4,1)=Pw*mean((WD4_10(:,6)/1000).^m);
Turb4_10=WD4_10(:,16);

load('WD4_12.mat')
v=12;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(5,1)=Pw^2*var((WD4_12(:,6)/1000).^m);
mn_DELm(5,1)=Pw*mean((WD4_12(:,6)/1000).^m);
Turb4_12=WD4_12(:,16);

% mean_DELm(4,1)=sum(mn_DELm);
% std_DELm(4,1)=sqrt(sum(var_DELm));


load('WD5_4.mat')
v=4;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(1,1)=Pw^2*var((WD5_4(:,6)/1000).^m);
mn_DELm(1,1)=Pw*mean((WD5_4(:,6)/1000).^m);
Turb5_4=WD5_4(:,16);

load('WD5_6.mat')
v=6;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(2,1)=Pw^2*var((WD5_6(:,6)/1000).^m);
mn_DELm(2,1)=Pw*mean((WD5_6(:,6)/1000).^m);
Turb5_6=WD5_6(:,16);

load('WD5_8.mat')
v=8;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(3,1)=Pw^2*var((WD5_8(:,6)/1000).^m);
mn_DELm(3,1)=Pw*mean((WD5_8(:,6)/1000).^m);
Turb5_8=WD5_8(:,16);

load('WD5_10.mat')
v=10;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(4,1)=Pw^2*var((WD5_10(:,6)/1000).^m);
mn_DELm(4,1)=Pw*mean((WD5_10(:,6)/1000).^m);
Turb5_10=WD5_10(:,16);

load('WD5_12.mat')
v=12;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(5,1)=Pw^2*var((WD5_12(:,6)/1000).^m);
mn_DELm(5,1)=Pw*mean((WD5_12(:,6)/1000).^m);
Turb5_12=WD5_12(:,16);

% mean_DELm(5,1)=sum(mn_DELm);
% std_DELm(5,1)=sqrt(sum(var_DELm));

load('WD6_4.mat')
v=4;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(1,1)=Pw^2*var((WD6_4(:,6)/1000).^m);
mn_DELm(1,1)=Pw*mean((WD6_4(:,6)/1000).^m);
Turb6_4=WD6_4(:,16);

load('WD6_6.mat')
v=6;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(2,1)=Pw^2*var((WD6_6(:,6)/1000).^m);
mn_DELm(2,1)=Pw*mean((WD6_6(:,6)/1000).^m);
Turb6_6=WD6_6(:,16);

load('WD6_8.mat')
v=8;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(3,1)=Pw^2*var((WD6_8(:,6)/1000).^m);
mn_DELm(3,1)=Pw*mean((WD6_8(:,6)/1000).^m);
Turb6_8=WD6_8(:,16);

load('WD6_10.mat')
v=10;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(4,1)=Pw^2*var((WD6_10(:,6)/1000).^m);
mn_DELm(4,1)=Pw*mean((WD6_10(:,6)/1000).^m);
Turb6_10=WD6_10(:,16);

load('WD6_12.mat')
v=12;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(5,1)=Pw^2*var((WD6_12(:,6)/1000).^m);
mn_DELm(5,1)=Pw*mean((WD6_12(:,6)/1000).^m);
Turb6_12=WD6_12(:,16);

load('WD6_14.mat')
v=14;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(6,1)=Pw^2*var((WD6_14(:,6)/1000).^m);
mn_DELm(6,1)=Pw*mean((WD6_14(:,6)/1000).^m);
Turb6_14=WD6_14(:,16);

% mean_DELm(6,1)=sum(mn_DELm);
% std_DELm(6,1)=sqrt(sum(var_DELm));


load('WD7_4.mat')
v=4;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(1,1)=Pw^2*var((WD7_4(:,6)/1000).^m);
mn_DELm(1,1)=Pw*mean((WD7_4(:,6)/1000).^m);
Turb7_4=WD7_4(:,16);

load('WD7_6.mat')
v=6;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(2,1)=Pw^2*var((WD7_6(:,6)/1000).^m);
mn_DELm(2,1)=Pw*mean((WD7_6(:,6)/1000).^m);
Turb7_6=WD7_6(:,16);

load('WD7_8.mat')
v=8;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(3,1)=Pw^2*var((WD7_8(:,6)/1000).^m);
mn_DELm(3,1)=Pw*mean((WD7_8(:,6)/1000).^m);
Turb7_8=WD7_8(:,16);

load('WD7_10.mat')
v=10;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(4,1)=Pw^2*var((WD7_10(:,6)/1000).^m);
mn_DELm(4,1)=Pw*mean((WD7_10(:,6)/1000).^m);
Turb7_10=WD7_10(:,16);

load('WD7_12.mat')
v=12;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(5,1)=Pw^2*var((WD7_12(:,6)/1000).^m);
mn_DELm(5,1)=Pw*mean((WD7_12(:,6)/1000).^m);
Turb7_12=WD7_12(:,16);

load('WD7_14.mat')
v=14;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(6,1)=Pw^2*var((WD7_14(:,6)/1000).^m);
mn_DELm(6,1)=Pw*mean((WD7_14(:,6)/1000).^m);
Turb7_14=WD7_14(:,16);

load('WD7_16.mat')
v=16;
Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 
var_DELm(7,1)=Pw^2*var((WD7_14(:,6)/1000).^m);
mn_DELm(7,1)=Pw*mean((WD7_14(:,6)/1000).^m);
Turb7_16=WD7_16(:,16);

% mean_DELm(7,1)=sum(mn_DELm);
% std_DELm(7,1)=sqrt(sum(var_DELm));
% 
% 
%  Pr_WD=[0.555;
%         0.096;
%         0.050;
%         0.054;
%         0.069;
%         0.093;
%         0.083];m18
% mean_DEL_lifetime=0;
% var_DEL_lifetime=0;
% for jj=1:7
% mean_DEL_lifetime=mean_DEL_lifetime+Pr_WD(jj,1)*mean_DELm(jj,1);
% var_DEL_lifetime=var_DEL_lifetime+(Pr_WD(jj,1))^2*std_DELm(jj,1)^2;
% end
% std_DEL_lifetime=sqrt(var_DEL_lifetime);
% save('mean_DEL_lifetime.mat','mean_DEL_lifetime')
% save('std_DEL_lifetime.mat','std_DEL_lifetime')
Turb90=[1.376
1.616
1.856
2.096
2.336
2.576
2.816
3.056
3.296
3.536
3.776
];
TurbFrnd=[--
];
TI90=[--
];

TIFrnd=[--
];
wind1=4:2:20;
wind2=4:2:18;
wind3=4:2:14;
wind4=4:2:12;
wind5=4:2:12;
wind6=4:2:14;
wind7=4:2:16;

%wd1
maxsize=10535;
Turb1_4(end:maxsize)=missing;
Turb1_6(end:maxsize)=missing;
Turb1_8(end:maxsize)=missing;
Turb1_10(end:maxsize)=missing;
Turb1_12(end:maxsize)=missing;
Turb1_14(end:maxsize)=missing;
Turb1_16(end:maxsize)=missing;
Turb1_18(end:maxsize)=missing;
Turb1_20(end:maxsize)=missing;
TURB1=[Turb1_4';Turb1_6';Turb1_8';Turb1_10';Turb1_12';Turb1_14';Turb1_16';Turb1_18';Turb1_20'];

%wd2
maxsize=2334;
Turb2_4(end:maxsize)=missing;
Turb2_6(end:maxsize)=missing;
Turb2_8(end:maxsize)=missing;
Turb2_10(end:maxsize)=missing;
Turb2_12(end:maxsize)=missing;
Turb2_14(end:maxsize)=missing;
Turb2_16(end:maxsize)=missing;
Turb2_18(end:maxsize)=missing;
TURB2=[Turb2_4';Turb2_6';Turb2_8';Turb2_10';Turb2_12';Turb2_14';Turb2_16';Turb2_18'];

%wd3
maxsize=1997;
Turb3_4(end:maxsize)=missing;
Turb3_6(end:maxsize)=missing;
Turb3_8(end:maxsize)=missing;
Turb3_10(end:maxsize)=missing;
Turb3_12(end:maxsize)=missing;
Turb3_14(end:maxsize)=missing;
TURB3=[Turb3_4';Turb3_6';Turb3_8';Turb3_10';Turb3_12';Turb3_14'];

%wd4
maxsize=892;
Turb4_4(end:maxsize)=missing;
Turb4_6(end:maxsize)=missing;
Turb4_8(end:maxsize)=missing;
Turb4_10(end:maxsize)=missing;
Turb4_12(end:maxsize)=missing;
TURB4=[Turb4_4';Turb4_6';Turb4_8';Turb4_10';Turb4_12'];

%wd5
maxsize=2060;
Turb5_4(end:maxsize)=missing;
Turb5_6(end:maxsize)=missing;
Turb5_8(end:maxsize)=missing;
Turb5_10(end:maxsize)=missing;
Turb5_12(end:maxsize)=missing;
TURB5=[Turb5_4';Turb5_6';Turb5_8';Turb5_10';Turb5_12';];

%wd6
maxsize=3351;
Turb6_4(end:maxsize)=missing;
Turb6_6(end:maxsize)=missing;
Turb6_8(end:maxsize)=missing;
Turb6_10(end:maxsize)=missing;
Turb6_12(end:maxsize)=missing;
Turb6_14(end:maxsize)=missing;
TURB6=[Turb6_4';Turb6_6';Turb6_8';Turb6_10';Turb6_12';Turb6_14'];


%wd7
maxsize=2267;
Turb7_4(end:maxsize)=missing;
Turb7_6(end:maxsize)=missing;
Turb7_8(end:maxsize)=missing;
Turb7_10(end:maxsize)=missing;
Turb7_12(end:maxsize)=missing;
Turb7_14(end:maxsize)=missing;
Turb7_16(end:maxsize)=missing;
TURB7=[Turb7_4';Turb7_6';Turb7_8';Turb7_10';Turb7_12';Turb7_14';Turb7_16'];
figure 

subplot(4,2,1)
boxplot(TURB2',wind2)
hold on
plot(1:8,Turb90(1:8),'k o')
hold on
plot(1:8,TurbFrnd(1:8),'k square')

subplot(4,2,2)
boxplot(TURB3',wind3)
hold on
plot(1:6,Turb90(1:6),'k o')
hold on
plot(1:6,TurbFrnd(1:6),'k square')

subplot(4,2,3)
boxplot(TURB4',wind4)
hold on
plot(1:5,Turb90(1:5),'k o')
hold on
plot(1:5,TurbFrnd(1:5),'k square')


subplot(4,2,4)
boxplot(TURB5',wind5)
hold on
plot(1:5,Turb90(1:5),'k o')
hold on
plot(1:5,TurbFrnd(1:5),'k square')


subplot(4,2,5)
boxplot(TURB6',wind6)
hold on
plot(1:6,Turb90(1:6),'k o')
hold on
plot(1:6,TurbFrnd(1:6),'k square')

subplot(4,2,6)
boxplot(TURB7',wind7)
hold on
plot(1:7,Turb90(1:7),'k o')
hold on
plot(1:7,TurbFrnd(1:7),'k square')

subplot(4,2,[7,8])
boxplot(TURB1',wind1)
hold on
    plot(1:9,Turb90(1:9),'k o')
    hold on
    plot(1:9,TurbFrnd(1:9),'k square')

