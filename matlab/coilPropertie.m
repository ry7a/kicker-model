function output = coilPropertie(x, p)
    output = geometry(x, p) .* properties(p);
end

function output = geometry(x, p)
    output = 1/2.*(x/(sqrt(p.R.^2+x.^2)) + (p.L-x)./(sqrt(p.R.^2+(p.L-x).^2)));
end

function output = properties(p)
    output = (p.u0 .* p.N.^2/2.*p.L.^2).*p.A1.*(p.u1-p.u2);
end