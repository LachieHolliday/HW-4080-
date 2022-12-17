function x0 = EOM_full(t, x0)
global Cd 
global Cl 
global rho_inf
global a_ref
global Isp
global T
global grav
global re
global eps
global counter

% xdot = zeros(8,1);
%   [x0(1) x0(2) x0(3) x0(4) x0(5) x0(6) x0(7) x0(8)]
%   [m0    m1    v     v1    g     g1    h     h1]
%-------------mass----------
    %mass
    x0(2) =  (-T/(Isp*grav)); 
    
     tableIncorporate(2, In1, In2)
    % velocity
%     x0(4) =  (((T*cosd(eps))/x0(1) - (rho_inf*(x0(3)^2)*Cd*a_ref)/(2*x0(1))) - grav*sind(x0(5)));
    x0(4) = 0
%     x0(4) =  (((T*cosd(eps))/x0(2) - (rho_inf*(x0(4)^2)*Cd*a_ref)/(2*x0(2))) - grav*sind(x0(6)));
%   x0(4) = 1800;
%   gamma
%     x0(6) =  ((T/(x0(1)*x0(3)))*sind(eps) + x0(3)*cosd(x0(5))/(re + x0(7)) + (rho_inf*x0(3)*Cl*a_ref) + grav * cosd(x0(5))) ;
x0(6) = 0;
% x0(6) =  ((T/(x0(2)*x0(4)))*sind(eps) + x0(4)*cosd(x0(6))/(re + x0(8)) + (rho_inf*x0(4)*Cl*a_ref) + grav * cosd(x0(6))) ;
   % x0(6) =  10;
   % height
%    x0(8) =  (x0(4)*sind(x0(6)));
x0(8) =  (x0(3)*sind(x0(5)));

   x0(1) =  x0(2);
   x0(3) =  x0(4);
   x0(5) =  x0(6);
   x0(7) =  x0(8);
   x0 = x0(:);
