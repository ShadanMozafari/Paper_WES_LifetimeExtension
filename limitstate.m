%Shamoz: Confidential values are replaced with '--'

function g = limitstate(X,i)
Neq=600*6*24*365*i;
    
%blade 
m=10;
c=--;
I=--;

% % %  tower
% m=3;
% c=--;
% I=--;


H=c/I;
g=(X(1))-log(Neq)+X(2)-m*(X(3))-m*log(H);
% g= (X(1))-((Neq)*((X(3))^m)*(H^m)/(X(2)));

end

