function ddeltach4=first_order(year,delta_ch4,ch4_tchange,ch4_ppbv,tau)
    a=((ch4_tchange./(1+ch4_tchange))./tau).*ch4_ppbv;
    b=(1./(1+ch4_tchange))./tau;
    ddeltach4=(a-b.*delta_ch4);
end

ddeltach4=((((ch4_tchange./(1+ch4_tchange))./tau).*ch4_ppbv)-((1./(1+ch4_tchange))./tau).*delta_ch4);