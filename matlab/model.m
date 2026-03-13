function dstates = model(states, t, y, p)
%MODEL Summary of this function goes here
%   Detailed explanation goes here

    lim = 50e-3;
    if (strcmp(y, "weak"))
        lim = 5e-3;
    end
    
    if (strcmp(y, "medium"))
        lim = 10e-3;
    end
    
    if (states(3) > 0 && t < lim)
        dx = states(2);
        dv = (-p.K .* states(1) + xDelInductance(states(1), p) .* states(4).^2 ./ 2) ./ p.m;
        dq = -states(4);
        di = -(p.Res .* states(4) - states(3) ./ p.C + xDelInductance(states(1), p) .* states(2) .* states(4)) ./ inductance(states(1), p);
    else
        dx = states(2);
        dv = (-p.K .* states(1) + xDelInductance(states(1), p) .* states(4).^2 ./ 2) ./ p.m;
        dq = 0;
        di = -(p.Res .* states(4) + xDelInductance(states(1), p) .* states(2) .* states(4)) ./ inductance(states(1), p);
    end

    dstates = [dx; dv; dq; di];

end