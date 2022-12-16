

function [v, g, t, p, m] = EOM(t, vel_inf, Isp)
g_o = 9.8;
global Isp
global offset_thrust_angle 
global epsilon 
global flight_path_angle 
global gamma
global pitch
global phi
global rho_inf
global a_ref
global omega
global r 
global m
global thrust
global Cd 
global Cl 
global g 
global Isp
global temp 
global v
global psi
global sigma  
global T
global theta
    thrust = Isp * m(2) * g_o;
    thrust = 22250;

    m =     [ m(1); 
        - (t(1) / (Isp * g_o) )];

    v =     [v(1); 
        thrust / m(1) * cosd(epsilon) - (rho_inf * v(2)^2 * Cd * a_ref) / (2 * m(1))...
        - g * sind(gamma(1)) + ...
        omega^2 * r * cosd(phi) * ( sind(gamma(1) * cosd(phi) - cosd(gamma(1)) * sind(phi) * sind(psi)))];
    
    gamma =     [gamma(1); 
        thrust / (m(1) * v(2)) * sind(epsilon) * cosd(sigma) + ...
        v(2)*cosd(gamma(1)) / (r) + ...
        (rho_inf * v(2) * Cl * a_ref) / ( 2 * m(1)) * cosd(sigma) - g * cosd(gamma(1)) / v(2)];
    
    psi = [ psi(1); 
        (T(1) * sind(epsilon) * sind(gamma) / m(1) * v(1)) + ...
        (rho_inf * v(1) * Cl * a_ref * sind(gamma))/ ( 2 * m(1) * cosd(gamma)) ...
        - v(1) * cosd(gamma) * cosd(psi(1)) * tand(phi(1) / r) +...
        ( 2 * omega) * (tand(gamma) * cosd(phi(1)) * sind(psi(1)) - sind(phi(1))) -...
        (omega^2 * r / ( v*cosd(gamma)) * sind(phi(1)) * cosd(phi(1)) * cosd(psi(1)))];

    theta = [ theta(1);
        v(1) * cosd(gamma(1)) * cosd(psi(1)) / (r * cosd(phi(1)))];
   
    phi =     [ phi(1);
            (v(1)*cosd(gamma(1))  * sind(psi(1))) / r ];
    
end