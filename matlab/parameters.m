function p = parameters()
    
U0 = 172;
C0 = 4.4e-3;
Q0 = U0.*C0;

    % Mechanical properties
    p.R = 7.21e-3;
    p.L = 35e-3;
    p.A1 = 74.6e-6;
    p.A2 = 88.5e-6;
    p.K = 21.2;
    p.m = 62e-3;
    
    % Magnetic properties
    p.u0 = 4.*pi().*10e-7;
    p.u1 = 8.298;
    p.u2 = 1.000022;
    
    % Eletrical properties
    p.C = 1.5e-3;
    p.Res = 3;
    p.N = 360;
    
    
    % Initial conditions
    p.V0 = 227;
    p.Q0 = p.V0 .* p.C;
    p.x0 = 7e-3;
    p.I0 = 0;
    p.v0 = 0;
    p.IC = [p.x0 p.v0 p.Q0 p.I0];
end