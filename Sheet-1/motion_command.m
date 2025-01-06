function xt = motion_command(xt_1, u)
    % Extract values from the previous pose and odometry commands
    x_prev = xt_1(1);
    y_prev = xt_1(2);
    theta_prev = xt_1(3);
    
    delta_rot1 = u.r1; % First rotation
    delta_trans = u.t; % Translation
    delta_rot2 = u.r2; % Second rotation
    
    % Compute the new pose
    x_new = x_prev + delta_trans * cos(theta_prev + delta_rot1);
    y_new = y_prev + delta_trans * sin(theta_prev + delta_rot1);
    theta_new = theta_prev + delta_rot1 + delta_rot2;
    
    % Normalize theta to the range [-pi, pi]
    theta_new = mod(theta_new + pi, 2 * pi) - pi;
    
    % Return the updated pose
    xt = [x_new; y_new; theta_new];
end

