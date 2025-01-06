function M = v2t(p)
    x = p(1);
    y = p(2);
    theta = p(3);
    
    % Construct the transformation matrix
    M = [cos(theta), -sin(theta), x;
         sin(theta),  cos(theta), y;
         0,          0,          1];
end

