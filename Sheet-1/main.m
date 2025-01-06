% Main script for SLAM exercise

% Initial pose of the robot
xt_1 = [0; 0; 0]; % [x, y, theta]

% Example odometry commands
odometry = struct('r1', pi/4, 't', 1, 'r2', pi/4);

% Compute new pose using motion model
xt = motion_command(xt_1, odometry);
disp('New Pose:');
disp(xt);

% Test transformations
p1 = [1; 1; pi/4];
p2 = [2; -1; -pi/6];

M1 = v2t(p1);
M2 = v2t(p2);

% Compute relative transformation
relative_transform = inv(M1) * M2;
relative_pose = t2v(relative_transform);
disp('Relative Pose:');
disp(relative_pose);

% Compute landmark location
z = [2; 0; 1]; % Observation in homogeneous coordinates
p1_matrix = v2t([1; 1; pi/2]);
landmark_global = p1_matrix * z;
disp('Landmark Location:');
disp(landmark_global(1:2));

