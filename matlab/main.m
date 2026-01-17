clc; clear; close all;

p = parameters();
y = "medium";

f = @(t, x) model(t, x, y, p);

[t, x] = ode45(f, [0 0.1], p.IC);
plot(t,x,'LineWidth',2)
grid on