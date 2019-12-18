function J = ForceSquared(z,dt,N)
% Calculate objective J.
    J = 0;
    state_end_idx = 2*N;
    for i = 1 : N-1
       J = J + 0.5 * dt * (z(state_end_idx+i)^2 + z(state_end_idx+i+1)^2);
    end
end