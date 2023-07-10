function [par, metaPar, txtPar] = pars_init_Dreissena_bugensis(metaData)

% this file is modified from zebra mussel entry

metaPar.model = 'abj'; 

%% reference parameter (not to be changed) 
par.T_ref = 293.15;   free.T_ref = 0;   units.T_ref = 'K';        label.T_ref = 'Reference temperature'; 

%% core primary parameters 
par.T_A = 8e3;       free.T_A   = 0;   units.T_A = 'K';          label.T_A = 'T_A'; 
par.z = 0.8787;       free.z     = 1;   units.z = '-';            label.z = 'zoom factor'; 
par.F_m = 48.2261;    free.F_m   = 1;   units.F_m = 'l/d.cm^2';   label.F_m = '{F_m}, max spec searching rate'; 
par.kap_X = 0.1;      free.kap_X = 0;   units.kap_X = '-';        label.kap_X = 'digestion efficiency of food to reserve'; 
par.kap_P = 0.5;      free.kap_P = 0;   units.kap_P = '-';        label.kap_P = 'faecation efficiency of food to faeces'; 
par.v = 0.016098;     free.v     = 1;   units.v = 'cm/d';         label.v = 'energy conductance'; 
par.kap = 0.99269;    free.kap   = 1;   units.kap = '-';          label.kap = 'allocation fraction to soma'; 
par.kap_R = 0.95;     free.kap_R = 0;   units.kap_R = '-';        label.kap_R = 'reproduction efficiency'; 
par.p_M = 96.002;     free.p_M   = 1;   units.p_M = 'J/d.cm^3';   label.p_M = '[p_M], vol-spec somatic maint'; 
par.p_T = 0;          free.p_T   = 0;   units.p_T = 'J/d.cm^2';   label.p_T = '{p_T}, surf-spec somatic maint'; 
par.k_J = 0.002;      free.k_J   = 0;   units.k_J = '1/d';        label.k_J = 'maturity maint rate coefficient'; 
par.E_G = 2349.0525;  free.E_G   = 1;   units.E_G = 'J/cm^3';     label.E_G = '[E_G], spec cost for structure'; 
par.E_Hb = 2.203e-06; free.E_Hb  = 1;   units.E_Hb = 'J';         label.E_Hb = 'maturity at birth'; 
par.E_Hj = 8.376e-06; free.E_Hj  = 1;   units.E_Hj = 'J';         label.E_Hj = 'maturity at metamorphosis'; 
par.E_Hp = 5.868e-01; free.E_Hp  = 1;   units.E_Hp = 'J';         label.E_Hp = 'maturity at puberty'; 
par.h_a = 1.937e-09;  free.h_a   = 1;   units.h_a = '1/d^2';      label.h_a = 'Weibull aging acceleration'; 
par.s_G = 0.0001;     free.s_G   = 0;   units.s_G = '-';          label.s_G = 'Gompertz stress coefficient'; 

%% other parameters 
% par.T_L = 273.15;     free.T_L   = 1;   units.T_L = 'K';          label.T_L = 'T_L'; 
% par.T_AL = 1e+04;     free.T_AL   = 1;   units.T_AL = 'K';          label.T_AL = 'T_AL'; 
par.T_H = 302;        free.T_H   = 0;   units.T_H = 'K';          label.T_H = 'T_H'; 
par.T_AH = 2e4;      free.T_AH   = 1;   units.T_AH = 'K';          label.T_AH = 'T_AH'; 
par.del_M = 0.27852;  free.del_M = 1;   units.del_M = '-';        label.del_M = 'shape coefficient'; 
par.f = 1;            free.f     = 0;   units.f = '-';            label.f = 'scaled functional response for 0-var data'; 
par.t_0 = 0;          free.t_0   = 0;   units.t_0 = 'd';          label.t_0 = 'time at start of development'; 
par.f_tL_high = 0.2;       free.f_tL_high  = 1;   units.f_tL_high = '-';            label.f_tL_high = 'scaled functional response for high food condition'; 
par.f_tL_low = 0;       free.f_tL_low  = 1;   units.f_tL_low = '-';            label.f_tL_low = 'scaled functional response for tL low food condition'; 
par.f_tF = 1;        free.f_tF  = 0;   units.f_tF = '-';            label.f_tF = 'scaled functional response for temp-filtrationRate data'; 
par.f_LWd = 0.8;        free.f_LWd  = 0;   units.f_LWd = '-';            label.f_LWd = 'scaled functional response for GLERL length-weight data'; 

%% set chemical parameters from Kooy2010 
[par, units, label, free] = addchem(par, units, label, free, metaData.phylum, metaData.class); 

%% Pack output: 
txtPar.units = units; txtPar.label = label; par.free = free; 
