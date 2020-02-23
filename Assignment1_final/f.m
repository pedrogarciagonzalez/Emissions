function rhs = f(delta_ch4,ch4_tchange,ch4_ppbv,tau)
    rhs = ch4_tchange./(1+ch4_tchange)*1/tau.*ch4_ppbv-1./(1+ch4_tchange)*1/tau.*delta_ch4;
end