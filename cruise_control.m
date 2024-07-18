clc;
close all;
clear all;
% Parameters
m = 1000;  % Vehicle mass (kg)
b = 50;    % Damping coefficient (N·s/m)

% State-space model
A = -b/m;
B = 1/m;
C = 1;
D = 0;

cruise_ss = ss(A, B, C, D);

% Display the state-space model
disp('State-space model:');
cruise_ss


% Parameters
m = 1000;  % Vehicle mass (kg)
b = 50;    % Damping coefficient (N·s/m)

% Transfer function model
s = tf('s');
P_cruise = 1/(m*s + b);

% Display the transfer function model
disp('Transfer function model:');
P_cruise
