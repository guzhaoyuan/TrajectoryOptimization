% This is the entrance of the sliding box example.
% This code implements the Contact Implicit Optimization by Posa IJRR 2014.
% This code tries to follow the structure from the Kelly.
% The sliding box is sliding along a wall with no friction. If a force is
% applied to the push the box against the wall, friction will generate a
% slow down the box.
% The goal of optimization is to get the box to a specific position.

clc; clear;
%% System Parameters.
v0 = 5;
qf = 1;
mu = 0.5;

times = 0 : 0.01 : 2;

num_steps = size(times,2);
%% Problem Formulation.
options = optimoptions('fmincon', 'Display','iter', 'SpecifyObjectiveGradient',true);

fun = @costfun;
A = [];
b = [];
Aeq = [];
beq = [];
lb = [];
ub = [];
nonlcon = @(z) constrants(z);

x0 = [0;v0];
xf = [qf;0];

tic;
[x, fval] = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options);
toc;

%% Visualization & Animation

