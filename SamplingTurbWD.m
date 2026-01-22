clc;
clear;
%taking samples from free stream side (WD1) based on wind measurements

n=20;
% samplecdf=zeros(9,20);
TIsamples=zeros(9,20);
% Turbsamples=zeros(9,20);
% for jj=1:20
% samplecdf(:,jj)=0.05*(jj-1)+(0.05/2);
% end
% 
% 
% for kk=1:20
%     Turbsamples(1,kk)=icdf('gev',samplecdf(1,kk),0.228,0.167,0.474);
%     Turbsamples(2,kk)=icdf('gev',samplecdf(2,kk),0.258,0.169,0.458);%6ms
%     Turbsamples(3,kk)=icdf('gev',samplecdf(3,kk),0.158,0.185,0.600);
%     Turbsamples(4,kk)=icdf('gev',samplecdf(1,kk),0.05,0.20,0.71); %10ms
%     Turbsamples(5,kk)=icdf('lognormal',samplecdf(1,kk),-0.16,0.25);
%     Turbsamples(6,kk)=icdf('normal',samplecdf(1,kk),1.115,0.258);%14ms
%     Turbsamples(7,kk)=icdf('normal',samplecdf(1,kk),1.45,0.30);
%     Turbsamples(8,kk)=icdf('normal',samplecdf(1,kk),1.747,0.031);%18ms
%     Turbsamples(9,kk)=icdf('gev',samplecdf(1,kk),-0.23,0.29,1.95);
% end
% 
% save('Turbsamples_WD1.mat','Turbsamples')
% 

load('Turbsamples_WD1.mat','Turbsamples')

for jj=1:9
    TIsamples(jj,:)=Turbsamples(jj,:)/(2*(jj+1));
end
save('TIsamples_WD1.mat','TIsamples')