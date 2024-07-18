clc;
close all;
clear all;

% Parameters for cruise control system
m = 1000;  % Vehicle mass (kg)
b = 50;    % Damping coefficient (N·s/m)

% Transfer function model for cruise control system
s = tf('s');
P_cruise = 1/(m*s + b);

% Display the transfer function model
disp('Transfer function model:');
P_cruise

% Parameters for motor system (example values)
J = 0.01;  % Moment of inertia of the rotor (kg.m^2)
K = 0.01;  % Motor constant (N.m/A or V/(rad/s))
R = 1;     % Electric resistance (Ohms)
L = 0.5;   % Electric inductance (H)

% State-space model for motor system
A = [-b/J,   K/J;
     -K/L,   -R/L];
B = [0;
     1/L];
C = [1, 0];
D = 0;

motor_ss = ss(A, B, C, D);

% Display the state-space model
disp('State-space model for motor:');
motor_ss
