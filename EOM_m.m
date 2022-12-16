function v = EOM_m(t, m0)
global offset_thrust_angle 
global epsilon 
global flight_path_angle 
global gamma
global Cd 
global Cl 
global pitch
global phi
global omega
global rho_inf
global a_ref
global m
global thrust
global g 
global Isp
global temp 
global T
global v
global r 
global psi
global sigma  
global theta
global grav
global rho_inf 

     m = [m0(2);
        -T/(Isp*grav)];       
end