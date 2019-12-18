% This code is the first example of Kelly 2017.
% It solve the trajectory optimization using direct collocation, and 
% transform the problem into a quadratic programming problem.
% https://epubs.siam.org/doi/pdf/10.1137/16M1062569

clc; clear; close all;
%% System Parameters.
x0 = 0;
v0 = 0;

xn = 1;
vn = 0;

dt = 0.01;
times = 0 : dt : 1;

N = size(times,2);

%% Problem Formulation.
options = optimoptions('fmincon', 'Display','iter', 'MaxFunctionEvaluations', 1e4);

fun = @(z) ForceSquared(z, dt, N);

A = [];
b = [];
Aeq = [];
beq = [];
lb = [];
ub = [];
nonlcon = @(z) cons(z, dt, N);

% Init state.
z_init = ones(2,N);
z_init(1,:) = times * (xn -x0) + x0;
z_init = z_init'; z_init = z_init(:);
% Append the control init guest.
u_init = zeros(1,N);
z_init = [z_init; u_init(:)];

tic;
[z, fval] = fmincon(fun,z_init,A,b,Aeq,beq,lb,ub,nonlcon,options);
toc;

%% Verify Constraints.


%% Plot.
figure;
plot(times, z(1:N)); title("position vs time");
figure;
plot(times, z(N+1:2*N)); title("velocity vs time");
figure;
plot(times, z(2*N+1:3*N)); title("force vs time");
