function xdot = EOM_full(t, x0)
% [m m1 v v1 g g1 h h1]
global Cd 
global Cl 
global rho_inf
global a_ref
global Isp
global T
global grav
global rho_inf 
global re
global eps

%   [x0(1) x0(2) x0(3) x0(4) x0(4) x0(4) x0(7) x0(8)]
%   [m0    m1    v     v1    g     g1    h     h1]

   xdot = [x0(2);
    -T/(Isp*grav);  
    x0(4);
    ((T/x0(1)*cosd(eps) - (rho_inf*(x0(3)^2)*Cd*a_ref)/(2*x0(1))) - grav*sind(x0(4)));
    x0(6);
    ((T/(x0(1)*x0(3)))*sind(eps) + x0(3)*cosd(x0(4))/(re + x0(7)) + (rho_inf*x0(3)*Cl*a_ref));
    x0(7);
    x0(3)*sind(x0(4))];

end