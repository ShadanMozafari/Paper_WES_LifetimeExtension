clear;
 clc;
delm_site=zeros(9,20);
m=10;
d1=zeros(1,100);
d2=zeros(1,20);
d3=zeros(1,100);
cd('C:\Users\shmoz\OneDrive - Danmarks Tekniske Universitet\Paper 3\SCADA\Postprocess\Sec3')
load('DELm4site_lowTI.mat','DELm4');
load('DELm6site_lowTI.mat','DELm6');
load('DELm8site_lowTI.mat','DELm8');
load('DELm10site_lowTI.mat','DELm10');
load('DELm12site_lowTI.mat','DELm12');
load('DELm14site_lowTI.mat','DELm14');
load('DELm16site_lowTI.mat','DELm16');
load('DELm18site_lowTI.mat','DELm18');
load('DELm20site_lowTI.mat','DELm20');


cd('C:\Users\shmoz\OneDrive - Danmarks Tekniske Universitet\Paper 3\SCADA\Postprocess')
 load('delm_Frnd.mat','delm_Frnd');
load('delm_Iref16.mat','delm_Iref16');

for j=1:20
    delm_site(1,j)=mean(DELm4(j,:));
    delm_site(2,j)=mean(DELm6(j,:));
    delm_site(3,j)=mean(DELm8(j,:));
    delm_site(4,j)=mean(DELm10(j,:));
    delm_site(5,j)=mean(DELm12(j,:));
    delm_site(6,j)=mean(DELm14(j,:));
    delm_site(7,j)=mean(DELm16(j,:));
    delm_site(8,j)=mean(DELm18(j,:));
    delm_site(9,j)=mean(DELm20(j,:));
 end
% delbin_site=delm_site.^(1/m);
% bar3(delbin_Frnd)
% figure

digitsOld=digits(50);
% figure
Neq=600;
DEL_site=zeros(1,20);
DEL_Frnd=zeros(1,100);
DEL_Iref16=zeros(1,100);
% bins=1:12;
% DELbin_ratiosite=zeros(12,200);
% DELbin_ratioFrnd=zeros(12,200);
% DELbin_Frndm=zeros(12,200);
% Pwind_WD1=[0.139110919
% 0.190219317
% 0.207406387
% 0.180966256
% 0.174567862
% 0.065893609
% 0.025121077
% 0.011162736
% 0.005551837
% ];

Pwind_WD1=[0.101635442
0.19818193
0.21582911
0.188250262
0.181930109
0.0686188
0.02618349
0.011614307
0.005766113
];

% load('DEL_C08.mat')
for MWS=1:11
    
    v=(MWS+1)*2;
    Pw=(exp(-3.14*(((v-1)/20)^2))-exp(-3.14*(((v+1)/20)^2))); 

 if MWS<10
     Pw_WD1=Pwind_WD1(MWS,1);
for seed=1:20
     DEL_site(1,seed)=Pw_WD1*delm_site(MWS,seed)+DEL_site(1,seed);
   
end
end

for seed=1:100
   DEL_Frnd(1,seed)=Pw*delm_Frnd(MWS,seed)+DEL_Frnd(1,seed);
   DEL_Iref16(1,seed)=Pw*delm_Iref16(MWS,seed)+DEL_Iref16(1,seed);  
end
% DELbin_ratiosite(MWS,:)=(delm_site(MWS,:).^(1/m))/(mean(delm_Iref16(MWS,:)).^(1/m));
% DELbin_ratioFrnd(MWS,:)=(delm_Frnd(MWS,:).^(1/m))/(mean(delm_Iref16(MWS,:)).^(1/m));
% hold on
% plot(v,(delm_Frnd(MWS,:).^(1/m)/delm_Iref16(MWS,1).^(1/m)),'b o')
% hold on
% DEL_Iref16(1,:)=Pw*delm_Iref16(MWS,:)+DEL_Iref16(1,:);
% plot(v,(delm_site(MWS,:).^(1/m)/delm_Iref16(MWS,1).^(1/m)),'r *')
% hold on
end

for k=1:1000
y1=randsample(DEL_Iref16,6);
d1(1,k)=((sum(y1))/6)^(1/m);
% 
y2=randsample(DEL_site,6);
d2(1,k)=((sum(y2))/6)^(1/m);

y3=randsample(DEL_Frnd,6);
d3(1,k)=((sum(y3))/6)^(1/m);
end
%boxplot((DEL_site(1,:).^(1/m))/(mean(DEL_Iref16(1,:).^(1/m))))
figure

%boxplot(DELbin_ratiosite',bins');
%figure
%boxplot(DELbin_ratioFrnd',bins');
%xlabel('Mean wind speed')
%ylabel('DEL ratio')
%s=struct(field,value)
DEL_Iref16=DEL_Iref16.^(1/m);
DEL_site=DEL_site.^(1/m);
DEL_Frnd=DEL_Frnd.^(1/m);

del1=d1/mean(DEL_site);
% del2=d2/mean(DEL_all);
del3=d3/mean(DEL_site);



logd1=log(d1);
logd2=log(d2);
logd3=log(d3);



% save('DEL_Iref16.mat','DEL_Iref16');
% save('DEL_site.mat','DEL_site');
% save('DEL_Frnd.mat','DEL_Frnd');
% 
% 
% for mws=1:9
%         v=(mws+1)*2;
%     Pwind_WD1(mws,1)=exp(-(v-1)^2/2/(5.9)^2)-exp(-(v+1)^2/2/(5.9)^2);
% end