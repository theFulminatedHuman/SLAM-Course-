function p = t2v(M)
    x = M(1, 3);
    y = M(2, 3);
    theta = atan2(M(2, 1), M(1, 1)); % Extract orientation from the rotation matrix
    p = [x; y; theta];
end

