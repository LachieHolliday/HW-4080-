function v = EOM_v(t, v0)

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

    v = [v0(2);
        ((T/m(1)*cosd(eps) - (rho_inf*(v0(1)^2)*Cd*a_ref)/(2*m(1))) - g*sind(gamma(1)))];
   
end