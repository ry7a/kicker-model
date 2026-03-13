function p = parameters()
    % Geometry Parameters
    p.A = 164.4e-6;
    p.A1 = 74.6e-6;
    p.A2 = p.A - p.A1;
    p.L = 35e-3;
    p.N = 360;
    p.R = sqrt(p.A / pi());

    % Eletrical Parameters
    p.C = 1.5e-3;
    p.U0 = 227;
    p.Res = 3;
    p.u2 = 1.00022;
    p.u1 = 8.298;
    p.q0 = p.U0 .* p.C;
    p.u0 = 4 .* pi().* 1e-7;
    
    % Mechanical Parameters
    p.m = 62e-3;;
    p.K = 21.2;
    p.x0 = 0;

    p.IC = [p.x0 0 p.q0 0];

end