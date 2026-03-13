clc; clear; close all;

p = parameters();
y = "weak";
f = @(t, states) model(states, t, y, p);

[t, y] = ode45(f, [0 0.1], p.IC);

plot(t, y, 'LineWidth', 2)
grid on

xlabel("Tempo (s)");

legend("x", "v", "q", "i");

