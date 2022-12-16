

function v = EOM_g(t, g0)
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
global re
global h

    g = [g0(2);
     (T/(m(1)*v(1)))*sind(eps) + (v(1)*cosd(g(1)))/(re + h(1)) + (rho_inf*v(1)*Cl*a_ref)];

    

end