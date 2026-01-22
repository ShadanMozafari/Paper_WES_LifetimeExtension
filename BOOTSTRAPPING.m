% clear;
% clc;
digitsOld=digits(10);

m=10;
N=365*24*6;
 load('DEL_full_30yr.mat');
% load('Del30.mat');
% load('DEL_1.mat')
% load('DEL_2.mat')
% load('DEL_3.mat')
% load('DEL_4.mat')
% load('DEL_5.mat')
% load('DEL_6.mat')
% load('DEL_7.mat')
% load('DEL_8.mat')
% load('DEL_9.mat')
% load('DEL_10.mat')
% load('DEL_11.mat')
% load('DEL_12.mat')
% load('DEL_13.mat')
% load('DEL_14.mat')
% load('DEL_15.mat')
% load('DEL_16.mat')
% load('DEL_17.mat')
% load('DEL_18.mat')
% load('DEL_19.mat')
% load('DEL_20.mat')
 
% DEL_1=zeros(52560,500);
% DEL_2=zeros(105120,500);
% DEL_3=zeros(157680,500);
% DEL_4=zeros(210240,500);
% DEL_5=zeros(262800,500);
% DEL_6=zeros(315360,500);
% DEL_7=zeros(367920,500);
% DEL_8=zeros(420480,500);
% DEL_9=zeros(473040,500);
% DEL_10=zeros(525600,500);
% DEL_11=zeros(578160,500);
% DEL_12=zeros(630720,500);
% DEL_13=zeros(683280,500);
% DEL_14=zeros(735840,500);
% DEL_15=zeros(788400,500);
% DEL_16=zeros(840960,500);
% DEL_17=zeros(893520,500);
% DEL_18=zeros(946080,500);
% DEL_19=zeros(998640,500);
% DEL_20=zeros(1051200,500);
% DEL_21=zeros(1103760,500); 
% DEL_22=zeros(1156320,500); 
% DEL_23=zeros(1208880,500); 
% DEL_24=zeros(1261440,500);
% DEL_25=zeros(1314000,500);
% DEL_26=zeros(1366560,500);
% DEL_27=zeros(1419120,500);
% DEL_28=zeros(1471680,500);
% DEL_29=zeros(1524240,500);
  DEL_30=zeros(1576800,500);
% DEL_31=zeros(1629360,500);  
% load('DEL_C08.mat')
% gg1=fitdist(DEL_all,'Gamma');
% a=gg1.a;
% b=gg1.b;
% [pesos, alpha, beta]=GMMestimator(DEL_all,2,20,a,b);  
% % % % 
% % DEL_full_30yr=zeros(1576800,1);
% % CDF_RL_MWS=vpa(exp(-1/1576800));
% % % 
% % % % f=@(x)(CDF_RL_MWS-(pesos(1)*cdf('Gamma',x,alpha(1),beta(1)))-(pesos(2)*(cdf('Gamma',x,alpha(2),beta(2)))));
% % % % R_L=fzero(f,3.47);
% % % R_L=3.465;
% R_L=3.51; 
%         g11 =vpa(cdf('Gamma',(R_L-0.005),alpha(1),beta(1)));
%         g12=vpa(cdf('Gamma',(R_L-0.005),alpha(2),beta(2))) ;
%         yg1= vpa(pesos(1)*g11+pesos(2)*g12);
% 
%        g21 = vpa(cdf('Gamma',(R_L+0.005),alpha(1),beta(1)));
%        g22= vpa(cdf('Gamma',(R_L+0.005),alpha(2),beta(2)));
%         yg2= vpa(pesos(1)*g21+pesos(2)*g22);
%         pdf=vpa(yg2-yg1);
%         factor=1/pdf;
%         counter=0;
%         n=zeros(342,1);
% for L=0.1:0.01:R_L
%     h=round(L*100)
%        g11 =vpa(cdf('Gamma',(L-0.005),alpha(1),beta(1)));
%        g12=vpa(cdf('Gamma',(L-0.005),alpha(2),beta(2))) ;
%        yg1= vpa(pesos(1)*g11+pesos(2)*g12);
% 
%        g21 = vpa(cdf('Gamma',(L+0.005),alpha(1),beta(1)));
%        g22= vpa(cdf('Gamma',(L+0.005),alpha(2),beta(2)));
%        yg2= vpa(pesos(1)*g21+pesos(2)*g22);
%        PDF=vpa(yg2-yg1);
% n(h,1)=round(factor*PDF)
% counter=counter+n(h,1);
% if h==1
%     DEL_30yr_Binprob(1:n(h,1),1)=L;
% else
% DEL_30yr_Binprob(counter-n(h,1)+1:counter,1)=L;
% end
% end

% for i=1:500
% DEL_1(:,i)=randsample(DEL_full_30yr,52560,true);
% end
% % 
% for i=1:500
% DEL_2(:,i)=randsample(DEL_full_30yr,105120,true);
% end
% 
% for i=1:500
% DEL_3(:,i)=randsample(DEL_full_30yr,157680,true);
% end
% 
% for i=1:500
% DEL_4(:,i)=randsample(DEL_full_30yr,210240,true);
% end
% % 
% for i=1:500
% DEL_5(:,i)=randsample(DEL_full_30yr,262800,true);
% end
% 
% for i=1:500
% DEL_6(:,i)=randsample(DEL_full_30yr,315360,true);
% end
% 
% for i=1:500
% DEL_7(:,i)=randsample(DEL_full_30yr,367920,true);
% end
% 
% for i=1:500
% DEL_8(:,i)=randsample(DEL_full_30yr,420480,true);
% end
% 
% for i=1:500
% DEL_9(:,i)=randsample(DEL_full_30yr,473040,true);
% end
% 
% for i=1:500
% DEL_10(:,i)=randsample(DEL_full_30yr,525600,true);
% end
% 
% for i=1:500
%     DEL_11(:,i)=randsample(DEL_full_30yr,578160,true);
% end
% 
% for i=1:500
%  DEL_12(:,i)=randsample(DEL_full_30yr,630720,true);
% end
% % 
% for i=1:500
%    DEL_13(:,i)=randsample(DEL_full_30yr,683280,true);
% end
% % % 
% for i=1:500
% DEL_14(:,i)=randsample(DEL_full_30yr,735840,true);
% end
% 
% for i=1:500
%   DEL_15(:,i)=randsample(DEL_full_30yr,788400,true);
% end

% for i=1:500
%   DEL_16(:,i)=randsample(DEL_full_30yr,840960,true);
% end
% 
% for i=1:500
%   DEL_17(:,i)=randsample(DEL_full_30yr,893520,true);
% end
% 
% for i=1:500
%   DEL_18(:,i)=randsample(DEL_full_30yr,946080,true);
% end
% 
% for i=1:500
%   DEL_19(:,i)=randsample(DEL_full_30yr,998640,true);
% end
% 
% for i=1:500
%   DEL_20(:,i)=randsample(DEL_full_30yr,1051200,true);
% end

% for i=1:500
%   DEL_21(:,i)=randsample(DEL_full_30yr,1103760,true);
% end
% 
% for i=1:500
%   DEL_22(:,i)=randsample(DEL_full_30yr,1156320,true);
% end

% for i=1:500
%   DEL_23(:,i)=randsample(DEL_full_30yr,1208880,true);
% end
% 
% for i=1:500
%   DEL_24(:,i)=randsample(DEL_full_30yr,1261440,true);
% end

% for i=1:500
%   DEL_25(:,i)=randsample(DEL_full_30yr,1314000,true);
% end

% for i=1:500
%   DEL_26(:,i)=randsample(DEL_full_30yr,1366560,true);
% end
% 
% for i=1:500
%   DEL_27(:,i)=randsample(DEL_full_30yr,1419120,true);
% end
% 
% for i=1:500
%   DEL_28(:,i)=randsample(DEL_full_30yr,1471680,true);
% end
% 
% for i=1:500
%   DEL_29(:,i)=randsample(DEL_full_30yr,1524240,true);
% end

for i=1:500
  DEL_30(:,i)=randsample(DEL_full_30yr,1576800,true);
end

% for i=1:500
%   DEL_31(:,i)=randsample(DEL_full_30yr,1629360,true);
% end
% 
% for i=1:500
%   DEL_32(:,i)=randsample(DEL_full_31yr,1681920,true);
% end
% 
% 
% for i=1:500
%   DEL_33(:,i)=randsample(DEL_full_31yr,1734480,true);
% end
% 
% for i=1:500
%   DEL_34(:,i)=randsample(DEL_full_31yr,1787040,true);
% end
% 
% for i=1:500
%   DEL_35(:,i)=randsample(DEL_full_31yr,1839600,true);
% end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i=1:500
% Del(1,i)=((sum(DEL_1(:,i).^m))/N).^(1/m);
% Del(2,i)=((sum(DEL_2(:,i).^m))/N/2).^(1/m);
% Del(3,i)=((sum(DEL_3(:,i).^m))/N/3).^(1/m);
% Del(4,i)=((sum(DEL_4(:,i).^m))/N/4).^(1/m);
% Del(5,i)=((sum(DEL_5(:,i).^m))/N/5).^(1/m);
% Del(6,i)=((sum(DEL_6(:,i).^m))/N/6).^(1/m);
% Del(7,i)=((sum(DEL_7(:,i).^m))/N/7).^(1/m);
% Del(8,i)=((sum(DEL_8(:,i).^m))/N/8).^(1/m);
% Del(9,i)=((sum(DEL_9(:,i).^m))/N/9).^(1/m);
% Del(10,i)=((sum(DEL_10(:,i).^m))/N/10).^(1/m);
% Del(11,i)=((sum(DEL_11(:,i).^m))/N/11).^(1/m);
% Del(12,i)=((sum(DEL_12(:,i).^m))/N/12).^(1/m);
% Del(13,i)=((sum(DEL_13(:,i).^m))/N/13).^(1/m);
% Del(14,i)=((sum(DEL_14(:,i).^m))/N/14).^(1/m);
% Del(15,i)=((sum(DEL_15(:,i).^m))/N/15).^(1/m);
% Del(16,i)=((sum(DEL_16(:,i).^m))/N/16).^(1/m);
% Del(17,i)=((sum(DEL_17(:,i).^m))/N/17).^(1/m);
% Del(18,i)=((sum(DEL_18(:,i).^m))/N/18).^(1/m);
% Del(19,i)=((sum(DEL_19(:,i).^m))/N/19).^(1/m);
% Del(20,i)=((sum(DEL_20(:,i).^m))/N/20).^(1/m);
% Del(21,i)=((sum(DEL_21(:,i).^m))/N/21).^(1/m);
% Del(22,i)=((sum(DEL_22(:,i).^m))/N/22).^(1/m);
%Del(23,i)=((sum(DEL_23(:,i).^m))/N/23).^(1/m);
%Del(24,i)=((sum(DEL_24(:,i).^m))/N/24).^(1/m);
% Del(25,i)=((sum(DEL_25(:,i).^m))/N/25).^(1/m);
% Del(26,i)=((sum(DEL_26(:,i).^m))/N/26).^(1/m);
%  Del(27,i)=((sum(DEL_27(:,i).^m))/N/27).^(1/m);
%  Del(28,i)=((sum(DEL_28(:,i).^m))/N/28).^(1/m);
% Del(29,i)=((sum(DEL_29(:,i).^m))/N/29).^(1/m);
 Del(30,i)=((sum(DEL_30(:,1).^m))/N/30).^(1/m);
%Del(30,i)=((sum(DEL_31(:,1).^m))/N/31).^(1/m);
end

% [ef X]=ecdf(DEL_all);
% plot(X(2:end-1),log(1-(ef(2:end-1))),'k *');
% plot(X(2:end-1),(ef(2:end-1)),'k *');
% hold on
% [f x]=ecdf(DEL_full_30yr);
% plot(x(2:end-1),log(1-(f(2:end-1))),'b o');
% hold on
%  
figure
yr=1:30;
for jj=1:500
plot(yr,Del(yr,jj)/1.6377,'+ k')
hold on
end
% log_del=log(Del);
% save('Del.mat','Del');
% save('log_del.mat','log_del');
