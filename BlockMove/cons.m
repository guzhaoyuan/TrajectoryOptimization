function [c,ceq] = cons(z, h, N)
    
    pos_end_idx = N;
    vel_end_idx = 2*N;
    
    
    ceq = [];
    for i = 1 : N-1
        ceq = [ceq; z(i+1) - z(i) - 0.5*h*(z(pos_end_idx+i)+z(pos_end_idx+i+1))];
    end
    for i = 1 : N-1
        ceq = [ceq; z(pos_end_idx+i+1) - z(pos_end_idx+i) - 0.5*h*(z(vel_end_idx+i)+z(vel_end_idx+i+1))];
    end
    ceq = ceq(:);
    
    % Initial and Final condition.
    ceq = [ceq; z(1)];
    ceq = [ceq; z(pos_end_idx) - 1];
    ceq = [ceq; z(pos_end_idx+1)];
    ceq = [ceq; z(vel_end_idx)];

    c = [];

end