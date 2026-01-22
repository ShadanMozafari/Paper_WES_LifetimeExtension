function [u_standard, IMPORTANCE, beta_final, p_f] = FORM(g, variables_list, dist, init_search_point)

search_point = init_search_point; %initial search point
maxit = 30;                       %max iterations
counter = 1;                      %count of iterations
beta = ones(1,maxit);             %for comparison


dg = gradient(g, variables_list);


while true
    % 1 step: Verify which variable is not normal and transform it to
    %considering the search point using the Rosenblatt transformation
    k = 0;
    for i=1:1:length(dist)
        if strcmp(class(dist(i)), class(makedist('Normal'))) == 0
            k = k + 1;
            non_normal2normal(k) = Transformation(dist(i), search_point(i));
        end
    end
    
 
    N_means = ones(1, length(dist));  
    N_std   = ones(1, length(dist));
    kk = 0;
    
    for i=1:1:length(dist)
        if strcmp(class(dist(i)), class(makedist('Normal'))) == 1
            N_means(i) = mean(dist(i));
            N_std(i)   = std(dist(i));
        elseif strcmp(class(dist(i)), class(makedist('Normal'))) == 0
            kk = kk + 1;
            N_means(i) = mean(non_normal2normal(kk));
            N_std(i)   = std(non_normal2normal(kk));
        end
    end
    

    new_design_point_standard = (search_point - N_means)./N_std;
    design_point_standard = new_design_point_standard;
    

    derivate = double(subs(dg, variables_list, search_point));
    partial_derivate = derivate'.*N_std;
    esc1 = 1/sum(partial_derivate.*partial_derivate);
    esc2 = sum(partial_derivate.*design_point_standard) - double(subs(g, variables_list, search_point));
    esc3 = esc1 * esc2;
    new_design_point_standard = esc3*partial_derivate;
    beta(counter+1) = norm(new_design_point_standard);
    new_search_point = new_design_point_standard.*N_std + N_means;
    g1 = double(subs(g, variables_list, new_search_point));
    
    search_point = double(new_search_point);
    if (abs(beta(counter+1) - beta(counter))<=0.001) && (abs(g1)<=0.001)
        break;        
    else
        counter=counter+1;
    end
end

beta_final   = beta(counter+1);             %taking the final beta
alpha=new_design_point_standard/beta(counter+1);
IMPORTANCE=(alpha.^2);
u_standard = new_design_point_standard; %taking the new point in the standard space
n_iterations = counter;                    %taking the number of iterations    
p_f = normcdf(-beta_final);        %taking the failure probability
%% Printing results
% fprintf('Iterations #: %g\n Reliability index = %g\n Failure probability =  %g\n Importance factor for logDelta= \n %g\n Importance factor for logK= \n %g\n Importance factor for logDEL= \n %g\n\n', n_iterations, beta_final, p_f,IMPORTANCE);
fprintf('Iterations #: %g\n %g\n  %g\n %g\n  %g\n %g\n', n_iterations, beta_final, p_f,IMPORTANCE);

return
