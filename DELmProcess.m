clear;
clc;
 digitsOld=digits(10);

load('Mx_blade_MWS10.mat','Mx_blade_sorted');
%  Mx_blade_sorted=zeros(60000,2000);
m=10;

%  for col= 1:2000
%      Mx_blade_sorted(:,col)=Mx_blade(:,INDEX(col,1));
%  end
%  save('Mx_blade_sorted.mat','Mx_blade_sorted');
%  
Neq=600;
DELm10=zeros(20,20);
%  mnL20=zeros(1,20);
% L=zeros(100,20);
for    t_i=1:20
for    seed=1:20
       cyc=[];
       ran=[];
       counter=(t_i-1)*20+seed;
       L(seed,t_i)=(mean(Mx_blade_sorted(:,counter)));
        c=rainflow(Mx_blade_sorted(:,counter));
% %        ran=c(find(c(:,2)>2),2)/2;
       ran=c(:,2);
%        cyc=c(find(c(:,2)>2),1);
        cyc=c(:,1);
%        cycles=[cycles;cyc];
%        RANGE=[RANGE;ran];
%            M_ave=c(:,3);
%     S_ave=H*M_ave;
%     fac=(1-abs(S_ave/Su));
%     Mm=ran./fac;
      DELm10(seed,t_i)=(sum(ran.^m))/Neq;
end
%  mnL18(1,t_i)=mean(L(:,t_i));
end

save('DELm10site_lowTI.mat','DELm10')
% save('mnL18.mat','mnL18')

% boxplot(abs([mnL4',mnL6',mnL8',mnL10',mnL12',mnL14',mnL16',mnL18',mnL20']),4:2:20,'colors','k')
