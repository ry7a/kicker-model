function output = induntace(x, p)
    output = constIndutance(p) + xDepIndutance(x, p);
end

function output = constIndutance(p)
    output = rollDependentConst(p)*(p.A2 + p.A1*(p.u1+p.u2)/2)*(sqrt(p.R.^2+p.L.^2)-p.R);
end

function output = xDepIndutance(x, p)
    output = rollDependentConst(p)*p.A1*(p.u1-p.u2)/2*(sqrt(p.R.^2+x.^2)-sqrt(p.R.^2+(p.L-x).^2));
end

function output = rollDependentConst(p)
    output = (p.N^2 * p.u0)/(p.L.^2);
end
