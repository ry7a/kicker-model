function output = xDelInductance(x, p)
%XDELINDUNTANCE Calculates the partial derivative of the induntance
%
arguments (Input)
    x
    p
end

arguments (Output)
    output
end

    output = physicalDependece(p) .* xGeometry(x, p);
end

function output = physicalDependece(p)
    output = p.u0 .* p.N.^2 .* p.A1 .* (p.u1 - p.u2) ./ (p.L.^2);
end

function output = xGeometry(x, p)
    output = (x./sqrt(p.R.^2 + x.^2) + (p.L - x)./sqrt(p.R.^2 + (p.L - x).^2))./2;
end






