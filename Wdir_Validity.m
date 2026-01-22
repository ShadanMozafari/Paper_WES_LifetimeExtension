clc;clear;

%load('C08.mat')
load('C08_WD1.mat')
% C08=sortrows(C08_WD1,8);
% count_Wbin1=0;
% count_Wbin2=0;
% count_Wbin3=0;
% count_Wbin4=0;
% count_Wbin5=0;
% count_Wbin6=0;
% count_Wbin7=0;
count_WS4=0;
count_WS6=0;
count_WS8=0;
count_WS10=0;
count_WS12=0;
count_WS14=0;
count_WS16=0;
count_WS18=0;
count_WS20=0;
count_WS22=0;
count_WS24=0;


for i=1:size(C08_WD1,1)
  if C08_WD1(i,15)<5 && C08_WD1(i,15)>2.99
    count_WS4=count_WS4+1;
    DEL4(count_WS4,1)=C08_WD1(i,6)/1000;
   

    elseif C08_WD1(i,15)<7 && C08_WD1(i,15)>4.99
    count_WS6=count_WS6+1;
    DEL6(count_WS6,1)=C08_WD1(i,6)/1000;
  

    elseif C08_WD1(i,15)<9 && C08_WD1(i,15)>6.99
    count_WS8=count_WS8+1;
    DEL8(count_WS8,1)=C08_WD1(i,6)/1000;


    elseif C08_WD1(i,15)<11 && C08_WD1(i,15)>8.99
    count_WS10=count_WS10+1;
     DEL10(count_WS10,1)=C08_WD1(i,6)/1000;


     elseif C08_WD1(i,15)<13 && C08_WD1(i,15)>10.99
     count_WS12=count_WS12+1;
     DEL12(count_WS12,1)=C08_WD1(i,6)/1000;


     elseif C08_WD1(i,15)<15 && C08_WD1(i,15)>12.99
     count_WS14=count_WS14+1;
     DEL14(count_WS14,1)=C08_WD1(i,6)/1000;
  

   elseif C08_WD1(i,15)<17 && C08_WD1(i,15)>14.99
    count_WS16=count_WS16+1;
DEL16(count_WS16,1)=C08_WD1(i,6)/1000;


  elseif C08_WD1(i,15)<19 && C08_WD1(i,15)>16.99
    count_WS18=count_WS18+1;
DEL18(count_WS18,1)=C08_WD1(i,6)/1000;



  elseif C08_WD1(i,15)<21 && C08_WD1(i,15)>18.99
    count_WS20=count_WS20+1;
DEL20(count_WS20,1)=C08_WD1(i,6)/1000;
DEL20(count_WS20,2)=C08_WD1(i,16);

  elseif C08_WD1(i,15)<23 && C08_WD1(i,15)>20.99
    count_WS22=count_WS22+1;
DEL22(count_WS22,1)=C08_WD1(i,6)/1000;


  elseif C08_WD1(i,15)<25 && C08_WD1(i,15)>22.99
    count_WS24=count_WS24+1;
DEL24(count_WS24,1)=C08_WD1(i,6)/1000;
   end
end


% maxsize=10518;
% DEL4(end:maxsize)=missing;
% DEL6(end:maxsize)=missing;
% DEL10(end:maxsize)=missing;
% DEL12(end:maxsize)=missing;
% DEL14(end:maxsize)=missing;
% DEL16(end:maxsize)=missing;
% DEL18(end:maxsize)=missing;
% DEL20(end:maxsize)=missing;
% 
% boxplot([DEL4,DEL6,DEL8,DEL10,DEL12,DEL14,DEL16,DEL18,DEL20],(4:2:20))
% %%%%%Wbin1
% for i=1:size(C08,1)
%    if C08(i,8)<15.001  || (C08(i,8)<360.001 && C08(i,8)>345)
%     count_Wbin4=count_Wbin4+1;
%     DEL4(count_Wbin4,1)=C08(i,6)/1000;
%     DEL4(count_Wbin4,2)=C08(i,16);
% 
%     elseif C08(i,8)<60.001 && C08(i,8)>15
%     count_Wbin5=count_Wbin5+1;
%     DEL5(count_Wbin5,1)=C08(i,6)/1000;
%     DEL5(count_Wbin5,2)=C08(i,16);
% 
%     elseif C08(i,8)<105.001 && C08(i,8)>60
%     count_Wbin6=count_Wbin6+1;
%     DEL6(count_Wbin6,1)=C08(i,6)/1000;
%     DEL6(count_Wbin6,2)=C08(i,16);
% 
%     elseif C08(i,8)<135.001 && C08(i,8)>105
%     count_Wbin7=count_Wbin7+1;
%      DEL7(count_Wbin7,1)=C08(i,6)/1000;
%      DEL7(count_Wbin7,2)=C08(i,16);
% 
%      elseif C08(i,8)<285.001 && C08(i,8)>135
%       count_Wbin1=count_Wbin1+1;
%      DEL1(count_Wbin1,1)=C08(i,6)/1000;
%      DEL1(count_Wbin1,2)=C08(i,16);
% 
%      elseif C08(i,8)<315.001 && C08(i,8)>285
%     count_Wbin2=count_Wbin2+1;
%      DEL2(count_Wbin2,1)=C08(i,6)/1000;
%      DEL2(count_Wbin2,2)=C08(i,16);
% 
%    elseif C08(i,8)<345.001 && C08(i,8)>315
%     count_Wbin3=count_Wbin3+1;
% DEL3(count_Wbin3,1)=C08(i,6)/1000;
% DEL3(count_Wbin3,2)=C08(i,16);
%    end
% end
% % 


% for i=1:size(C08,1)
%    if C08(i,15)<21 && C08(i,15)>18.99
%     count_WS20=count_WS20+1;
%     Turb20(count_WS20,1)=C08(i,16);
% %      DEL4(count_Wbin4,2)=C08(i,16);
% % all=count_Wbin1+count_Wbin2+count_Wbin3+count_Wbin4+count_Wbin5+count_Wbin6+count_Wbin7;
% % 
% % wf1=count_Wbin1/all;
% % wf2=count_Wbin2/all;
% % wf3=count_Wbin3/all;
% % wf4=count_Wbin4/all;
% % wf5=count_Wbin5/all;
% % wf6=count_Wbin6/all;
% % wf7=count_Wbin7/all;
% % 
%    end
% end
% % 
% 
% 
%  
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  WD1 del fitting
% 
% 
% [f1 X1]=ecdf(DEL1);
% GMModel = fitgmdist(X1(2:end-1),3);
% y=cdf(GMModel,X1(2:end-1));
% plot(X1(2:end-1),log(1-(f1(2:end-1))),'color','m');
% hold on
% plot(X1(2:end-1),log(1-(y)),'color','k');
% 
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  WD2 del fitting
% gg2=fitdist(DEL2,'Gamma');
% a2=gg2.a;
% b2=gg2.b;
% [pesos2, alpha2, beta2]=GMMestimator(DEL2,2,20,a2,b2);
% [f2 X2]=ecdf(DEL2);
% y2=pesos2(1)*cdf('Gamma',(X2(2:end-1)),alpha2(1),beta2(1))+pesos2(2)*cdf('Gamma',(X2(2:end-1)),alpha2(2),beta2(2));
% plot(X2(2:end-1),log(1-(f2(2:end-1))),'color','m');
% hold on
% plot(X2(2:end-1),log(1-(y2)),'color','k'); 
% 
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  WD3 del fitting
% 
% [f3 X3]=ecdf(DEL3);
% GMModel = fitgmdist(X3(2:end-1),3);
% y3=cdf(GMModel,X3(2:end-1));
% figure
%   plot(X3(2:end-1),log(1-(f3(2:end-1))),'color','m');
%   hold on
% plot(X3(2:end-1),log(1-(y3)),'color','- k'); 
% 
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  WD4 del fitting
% 
% [f4 X4]=ecdf(DEL4);
% GMModel = fitgmdist(X4(2:end-1),2);
% y4=cdf(GMModel,X4(2:end-1));
% figure
% plot(X4(2:end-1),log(1-(f4(2:end-1))),'color','m');
%  hold on
% plot(X4(2:end-1),log(1-(y4)),'color','k'); 
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  WD5 del fitting
% 
% [f5 X5]=ecdf(DEL5);
% GMModel = fitgmdist(X5(2:end-1),2);
% y5=cdf(GMModel,X5(2:end-1));
% figure
% plot(X5(2:end-1),log(1-(f5(2:end-1))),'color','m');
%  hold on
% plot(X5(2:end-1),log(1-(y5)),'color','k'); 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  WD6 del fitting
% 
% [f6 X6]=ecdf(DEL6);
% GMModel = fitgmdist(X6(2:end-1),3);
% y6=cdf(GMModel,X6(2:end-1));
% figure
% plot(X6(2:end-1),log(1-(f6(2:end-1))),'color','m');
%  hold on
% plot(X6(2:end-1),log(1-(y6)),'color','k'); 
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  WD7 del fitting
% [f7 X7]=ecdf(DEL7);
% gg7=fitdist(DEL7,'Gamma');
% a7=gg7.a;
% b7=gg7.b;
% [pesos7, alpha7, beta7]=GMMestimator(DEL7,2,20,a2,b2);
% f=pesos7(1)*cdf('Gamma',(X7(2:end-1)),alpha7(1),beta7(1))+pesos7(2)*cdf('Gamma',(X7(2:end-1)),alpha7(2),beta7(2));
% GMModel = fitgmdist(X7(2:end-1),3);
% y7=cdf(GMModel,X7(2:end-1));
% figure
% plot(X7(2:end-1),log(1-(f7(2:end-1))),'color','m');
% hold on
% plot(X7(2:end-1),log(1-(y7)),'color','r'); 
% hold on
% plot(X7(2:end-1),log(1-(f)),'color','b'); 
% 
% 
% load('C08_WD1.mat')
% 
% mws4=0;
% mws6=0;
% mws8=0;
% mws10=0;
% mws12=0;
% mws14=0;
% mws16=0;
% mws18=0;
% mws20=0;
% mws22=0;
% mws24=0;
% 
% for i=1:size(C08_WD1,1)
%  
%   if C08_WD1(i,15) < 5  && C08_WD1(i,15)> 2.99  
%     mws4=mws4+1;
%     L4(mws4,1)=C08_WD1(i,5)/1000;
%   elseif C08_WD1(i,15) < 7  && C08_WD1(i,15)> 4.99  
%     mws6=mws6+1;
%     L6(mws4,1)=C08_WD1(i,5)/1000;
%       elseif C08_WD1(i,15) < 9  && C08_WD1(i,15)> 6.99  
%     mws8=mws8+1;
%     L8(mws8,1)=C08_WD1(i,5)/1000;
%       elseif C08_WD1(i,15) < 11  && C08_WD1(i,15)> 8.99  
%     mws10=mws10+1;
%     L10(mws10,1)=C08_WD1(i,5)/1000;
%       elseif C08_WD1(i,15) < 13  && C08_WD1(i,15)> 10.99  
%     mws12=mws12+1;
%     L12(mws12,1)=C08_WD1(i,5)/1000;
%       elseif C08_WD1(i,15) < 15  && C08_WD1(i,15)> 12.99  
%     mws14=mws14+1;
%     L14(mws14,1)=C08_WD1(i,5)/1000;
%       elseif C08_WD1(i,15) < 17 && C08_WD1(i,15)> 14.99  
%     mws16=mws16+1;
%     L16(mws16,1)=C08_WD1(i,5)/1000;
%           elseif C08_WD1(i,15) < 19 && C08_WD1(i,15)> 16.99  
%     mws18=mws18+1;
%     L18(mws18,1)=C08_WD1(i,5)/1000;
%           elseif C08_WD1(i,15) < 21 && C08_WD1(i,15)> 18.99  
%     mws20=mws20+1;
%     L20(mws20,1)=C08_WD1(i,5)/1000;
%           elseif C08_WD1(i,15) < 23 && C08_WD1(i,15)> 19.99  
%     mws22=mws22+1;
%     L22(mws22,1)=C08_WD1(i,5)/1000;
%     elseif C08_WD1(i,15) < 25 && C08_WD1(i,15)> 20.99  
%     mws24=mws24+1;
%     L24(mws24,1)=C08_WD1(i,5)/1000;
%   end
% end
% 
% S=size(L8,1);
% X=4:2:24;
% L4(size(L4,1):S,1)=missing;
% L6(size(L6,1):S,1)=missing;
% L10(size(L10,1):S,1)=missing;
% L12(size(L12,1):S,1)=missing;
% L14(size(L14,1):S,1)=missing;
% L16(size(L16,1):S,1)=missing;
% L18(size(L18,1):S,1)=missing;
% L20(size(L20,1):S,1)=missing;
% L22(size(L22,1):S,1)=missing;
% L24(size(L24,1):S,1)=missing;
% g=[L4,L6,L8,L10,L12,L14,L16,L18,L20,L22,L24];
% boxplot(g,X)
% 
% 
% 
% cd ('C:\Users\shmoz\OneDrive - Danmarks Tekniske Universitet\Paper 3\SCADA\Site_based simulations_nonwaked\4ms');
% load('Mx_blade_sorted.mat','Mx_blade_sorted');
% for jj=1:20

% 
% C08_WD1(1:97,:)=[];
% for k=1:100
%     del(:,k)=randsample(C08_WD1(:,6)/1000,400,true);
% end
% m=10;
% for kk=1:100
% d(1,kk)=((sum(del(:,kk).^m))/400).^(1/m);
% end