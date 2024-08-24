function route = GradientBasedPlanner (f, start_coords, end_coords, max_its)
% GradientBasedPlanner : This function plans a path through a 2D
% environment from a start to a destination based on the gradient of the
% function f which is passed in as a 2D array. The two arguments
% start_coords and end_coords denote the coordinates of the start and end
% positions respectively in the array while max_its indicates an upper
% bound on the number of iterations that the system can use before giving
% up.
% The output, route, is an array with 2 columns and n rows where the rows
% correspond to the coordinates of the robot as it moves along the route.
% The first column corresponds to the x coordinate and the second to the y coordinate

    [gx, gy] = gradient (-f);
    route = [start_coords];
    for i=1:max_its
        x_prev = route(end, 1);
        y_prev = route(end, 2);

        % Interpolate the gradient values at the current (x_prev, y_prev) position
        gx_val = interp2(gx, x_prev, y_prev, 'linear', 0);
        gy_val = interp2(gy, x_prev, y_prev, 'linear', 0);

        if gx_val ~= 0
            x_nxt = x_prev + gx_val / abs(gx_val);
        else
            x_nxt = x_prev;
        end

        if gy_val ~= 0
            y_nxt = y_prev + gy_val / abs(gy_val);
        else
            y_nxt = y_prev;
        end

        route = [route; [x_nxt, y_nxt]];
        dist_from_goal = sqrt((x_nxt - end_coords(1))^2 + (y_nxt - end_coords(2))^2);
        if dist_from_goal < 2
            return
        end
    end

end
