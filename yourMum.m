function [v, g, t, p, m] = EOM(t, vel_inf)

v = [ vel_inf(2); 
    temp / mass * cosd(epsilon) - rho_inf * vel_inf(2)^2 * Cd * a_ref) / (2 * mass()...
    g * sind(gamma) + ...
    omega^2 * r * cosd(phi) * ( sind(gamma(1) * cosd(phi) - cosd(gamma(1)) * sind(phi) * sind(psi))];

g = [gamma(1); 
    temp / (mass * vel_inf(2)) * sind(epsilon) * cosd(sigma) + ...
    vel_inf(2)*cosd(gamma(1)) / (radius_e + h) + ...
    (rho_inf * vel_inf(2) * Cl * area_ref) / ( 2 * mass) * cosd(sigma) - g * cosd(gamma(1)) / vel_inf(2)]

t = [ theta(1);
    vel_inf(1) * cosd(gamma(1)) * cosd(psi(1)) / (r * cosd( phi(1)) )]

p = [ phi(1);
        (vel_inf(1)*cosd(gamma(1))  * sind(psi(1))) / r ]

m = [ mass(1); - ( temp / (Isp * g_o) )]

end