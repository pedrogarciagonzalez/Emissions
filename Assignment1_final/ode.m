function [euler,rk4]=ode(year,delta_ch4_euler,delta_ch4_rk4,ch4_tchange,ch4_ppbv,tau)
    deltat = 1/12; %time step of 1 month
    
    %slopes of the linear interpolations for lifetime change and background
    %ch4
    slope1 = ch4_tchange(year+1)-ch4_tchange(year);
    slope2 = ch4_ppbv(year+1)-ch4_ppbv(year);
    
    %vector of intermediate values of delta_ch4
    inter_delta_euler = zeros(13);
    inter_delta_euler(1) = delta_ch4_euler;
    inter_delta_rk4 = zeros(13);
    inter_delta_rk4(1) = delta_ch4_rk4;
    
    for i=1:1:12
        inter_delta_euler(i+1) = inter_delta_euler(i)+deltat.*f(inter_delta_euler(i),ch4_tchange(year)+slope1*deltat*(i-1),ch4_ppbv(year)+slope2*deltat*(i-1),tau); %euler's method
        %rk4 coefficients for each iteration of 1 month
        F1 = deltat.*f(inter_delta_rk4(i),ch4_tchange(year)+slope1*deltat*(i-1),ch4_ppbv(year)+slope2*deltat*(i-1),tau);
        F2 = deltat.*f(inter_delta_rk4(i)+F1/2,ch4_tchange(year)+slope1*deltat*(i-1/2),ch4_ppbv(year)+slope2*deltat*(i-1/2),tau);
        F3 = deltat.*f(inter_delta_rk4(i)+F2/2,ch4_tchange(year)+slope1*deltat*(i-1/2),ch4_ppbv(year)+slope2*deltat*(i-1/2),tau);
        F4 = deltat.*f(inter_delta_rk4(i)+F3,ch4_tchange(year)+slope1*deltat*i,ch4_ppbv(year)+slope2*deltat*i,tau);
        inter_delta_rk4(i+1) = inter_delta_rk4(i)+1/6*(F1+2*F2+2*F3+F4); %rk4 method
    end
    euler = inter_delta_euler(13); %value of delta_ch4 after an year with euler
    rk4 = inter_delta_rk4(13); %value of delta_ch4 after an year with rk4
end