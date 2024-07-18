clc;
close all;
clear all;
% Aircraft Pitch Control System Example

% Define the constants and parameters
A = [-0.313 56.7 0; -0.0139 -0.426 0; 0 56.7 0];
B = [0.232; 0.0203; 0];
C = [0 0 1];
D = [0];

% Create the state-space model
pitch_ss = ss(A, B, C, D);

% Display the state-space model
pitch_ss

% Create the transfer function model
s = tf('s');
P_pitch = (1.151*s + 0.1774) / (s^3 + 0.739*s^2 + 0.921*s);

% Display the transfer function model
P_pitch
