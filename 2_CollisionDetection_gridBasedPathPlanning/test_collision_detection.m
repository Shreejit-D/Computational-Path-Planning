% Create a simple test configuration for the robot
cspace_coords = [0, 0]; % Both joints at 0 degrees
robot_fv = TwoLinkRobot(cspace_coords);

% Create an obstacle to test against
obstacle.vertices = [6 -0.5; 7 -0.5; 7 0.5; 6 0.5];
obstacle.faces = [1 2 3; 1 3 4];

% Check for collisions
collision = CollisionCheck(robot_fv, obstacle);

% Display results
disp(['Collision Detected: ', num2str(collision)]);