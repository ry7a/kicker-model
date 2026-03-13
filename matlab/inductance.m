function output = inductance(x, p)
%INDUNTANCE Summary of this function goes here
%   Detailed explanation goes here
arguments (Input)
    x
    p
end

arguments (Output)
    output
end

    output = xDependencePart(x, p) + geometryPart(p);
end

function output = xDependencePart(x, p)
    output = constantPart(p) .* p.A1 .* (p.u1 -  p.u2) .* (sqrt(p.R.^2 + x.^2) - sqrt(p.R.^2 + (p.L - x).^2))./2;
end

function output = geometryPart(p)
    output = constantPart(p) .* (p.A2 + p.A1.*(p.u1 + p.u2)./2).*(sqrt(p.R.^2 + p.L.^2) - p.R);
end

function output = constantPart(p)
    output = p.u0 .* p.N.^2 ./ (p.L.^2);
end