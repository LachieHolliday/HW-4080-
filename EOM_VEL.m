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
    [~,p1,~,~] = AtmosphericCalculator(x0(7)/1000);
    temporary = tableIncorporate(2, p1, x0(7)/1000);
    x0(3) = 6 * sqrt(temporary.('Cp (kJ/kg-K)') * (8314/(temporary.('MW (kg/kmol)'))) * temporary.('Temp (K)'));
     % velocity
    x0(4) =  (((T*cosd(eps))/x0(1) - (rho_inf*(x0(3)^2)*Cd*a_ref)/(2*x0(1))) - grav*sind(x0(5)));
     % gamma
    x0(6) =  ((T/(x0(1)*x0(3)))*sind(eps) + x0(3)*cosd(x0(5))/(re + x0(7)) + (rho_inf*x0(3)*Cl*a_ref) + grav * cosd(x0(5))) ;
     % height
    x0(8) =  (x0(3)*sind(x0(5)));

   x0(1) =  x0(2);
   x0(3) =  x0(4);
   x0(5) =  x0(6);
   x0(7) =  x0(8);
   x0 = x0(:);
