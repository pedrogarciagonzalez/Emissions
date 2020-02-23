function rk4=runge_kutta4(year,delta_ch4,ch4_tchange,ch4_ppbv,tau)
    deltat = 1/12; %time step of 1 month
    
    %slopes of the linear interpolations for lifetime change and background
    %ch4
    slope1 = ch4_tchange(year+1)-ch4_tchange(year);
    slope2 = ch4_ppbv(year+1)-ch4_ppbv(year);
    
    %vector of intermediate values of delta_ch4
    inter_delta = zeros(13);
    inter_delta(1) = delta_ch4;
    
    for i=1:1:12
        %rk4 coefficients for each iteration of 1 month
        F1 = deltat.*f(inter_delta(i),ch4_tchange(year)+slope1*deltat*(i-1),ch4_ppbv(year)+slope2*deltat*(i-1),tau);
        F2 = deltat.*f(inter_delta(i)+F1/2,ch4_tchange(year)+slope1*deltat*(i-1/2),ch4_ppbv(year)+slope2*deltat*(i-1/2),tau);
        F3 = deltat.*f(inter_delta(i)+F2/2,ch4_tchange(year)+slope1*deltat*(i-1/2),ch4_ppbv(year)+slope2*deltat*(i-1/2),tau);
        F4 = deltat.*f(inter_delta(i)+F3,ch4_tchange(year)+slope1*deltat*i,ch4_ppbv(year)+slope2*deltat*i,tau);
        inter_delta(i+1) = inter_delta(i)+1/6*(F1+2*F2+2*F3+F4); %rk4 method
    end
    
    rk4 = inter_delta(13); %value of delta_ch4 after an year
end