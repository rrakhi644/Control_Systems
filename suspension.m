clc;
close all;
clear all;
% Parameters
M1 = 2500;   % 1/4 bus body mass (kg)
M2 = 320;    % Suspension mass (kg)
K1 = 80000;  % Spring constant of suspension system (N/m)
K2 = 500000; % Spring constant of wheel and tire (N/m)
b1 = 350;    % Damping constant of suspension system (N.s/m)
b2 = 15020;  % Damping constant of wheel and tire (N.s/m)

% Transfer function models
s = tf('s');
G1 = ((M1 + M2) * s^2 + b2 * s + K2) / ...
     ((M1 * s^2 + b1 * s + K1) * (M2 * s^2 + (b1 + b2) * s + (K1 + K2)) - (b1 * s + K1) * (b1 * s + K1));
G2 = (-M1 * b2 * s^3 - M1 * K2 * s^2) / ...
     ((M1 * s^2 + b1 * s + K1) * (M2 * s^2 + (b1 + b2) * s + (K1 + K2)) - (b1 * s + K1) * (b1 * s + K1));

% Display the transfer functions
disp('Transfer function G1:');
G1

disp('Transfer function G2:');
G2
