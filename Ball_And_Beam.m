clc;
close all;
clear all;

m = 0.111;
R = 0.015;
g = -9.8;
L = 1.0;
d = 0.03;
J = 9.99e-6;

s = tf('s');
P_ball = -m*g*d/L/(J/R^2+m)/s^2

H = -m*g/(J/(R^2)+m);
A = [0 1 0 0
   0 0 H 0
   0 0 0 1
   0 0 0 0];
B = [0 0 0 1]';
C = [1 0 0 0];
D = [0];
ball_ss = ss(A,B,C,D)