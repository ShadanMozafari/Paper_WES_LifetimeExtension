%Shamoz:Confidential numbers are changed to '--'

clear;
clc;
%E=40
syms logDelta logK logDEL X
X=[logDelta, logK, logDEL];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% blade:
logDelta_dist=makedist('Normal','mu',-0.1116,'sigma',0.4724); %cov=0.5, blade

% m=10,f=1hrz.
logK_dist=makedist('Normal','mu',19.5,'sigma',--);%composite
%logDEL_dist=makedist('gev','k',-0.0466,'sigma',0.0136,'mu',--);% Iref16
logDEL_dist=makedist('gev','k',-0.2636,'sigma',0.0289,'mu',--); %Frandsen		  
%logDEL_dist=makedist('gev','k',-0.3014,'sigma',0.0006,'mu',--);%Site_30_yrs
%logDEL_dist=makedist('gev','k',-0.233,'sigma',0.0037,'mu',--);%Site_only5yrs

% logDEL_dist=makedist('normal','mu',0.4935,'sigma',--);% 
DIST=[logDelta_dist,logK_dist,logDEL_dist];

X0=[-0.1, 19.5, 0.82];

for i=1:35
 g=limitstate(X,i);
 [u_standard, IMPORTANCE, beta_final, p_f]=FORM(g,X,DIST,X0);
 Ann_rel(1:8,i)=[u_standard';IMPORTANCE';beta_final;p_f];
if i>1
Ann_rel(9,i)=(Ann_rel(8,i)-Ann_rel(8,i-1))/(1-Ann_rel(8,i-1));
Ann_rel(10,i)=-norminv(Ann_rel(9,i));
end
end
save('Ann_rel_Site.mat','Ann_rel')


