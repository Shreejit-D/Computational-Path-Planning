# Configuration Space for a Two-Link Robotic Arm

This project involves the practical application of Configuration Space (C-Space) for a two-link robotic arm navigating through a workspace with obstacles. The objective is to implement a path-planning algorithm that guides the robotic arm from a start configuration to an end configuration while avoiding collisions with obstacles.

## Overview

### Configuration Space

The Configuration Space (C-Space) represents all possible configurations of a robot. In this project, the two-link robotic arm's configuration is defined by two joint angles, θ1 and θ2, which range from 0 to 360 degrees. The primary goal is to navigate this C-Space while avoiding obstacles that can be represented as a collection of triangles.

### Triangle Intersection

Collision detection is simplified by determining the intersection between triangles representing the robot and obstacles. The intersection cases considered include:

1. Non-intersecting triangles
2. Single point intersection (line-point or point-point)
3. Line overlap intersection
4. Multiple points intersection
5. Complete overlap of one triangle over another

### DijkstraTorus

The `DijkstraTorus` function is an extension of the grid-based path planning algorithm implemented in Week 1 (DijkstraGrid). Here, the algorithm is applied to the toroidal C-Space derived from triangle intersections. The function calculates the shortest feasible route from a starting configuration to an ending configuration.

## Project Structure

### Functions

- **triangle_intersection.m**: This function determines whether two triangles intersect, which is crucial for identifying collisions between the robotic arm and obstacles in the workspace.
  - **Inputs**: 
    - `P1`, `P2`: 3x2 arrays representing the vertices of two triangles.
  - **Output**: 
    - `flag`: Boolean value indicating whether the triangles intersect (true) or not (false).

- **DijkstraTorus.m**: Implements Dijkstra's algorithm to find the shortest path in the C-Space, considering the toroidal nature of the space.
  - **Inputs**: 
    - `input_map`: A logical array where free cells are `false` (0) and obstacles are `true` (1).
    - `start_coords`, `dest_coords`: Coordinates of the start and end configurations.
  - **Output**: 
    - `route`: An array containing the linear indices of the cells along the shortest route from start to destination or an empty array if no route exists.

### Testing

To test your implementation, you can use the provided scripts and sample data:

- **TwoLinkCspace.m**: Generates the configuration space based on the robotic arm's geometry and workspace obstacles.
- **TestScript.m**: A script provided for testing your implementation of `DijkstraTorus` and `triangle_intersection`.

### Example Usage

1. **triangle_intersection.m**:
   ```matlab
   P1 = [0, 0; 1, 0; 0.5, 1];
   P2 = [0.5, 0.5; 1.5, 0.5; 1, 1.5];
   flag = triangle_intersection(P1, P2);

2. **DijkstraTorus.m**:
   ```matlab
    map(1:5, 6) = true; % Add obstacles
    start_coords = [1, 1];
    dest_coords = [10, 10];
    route = DijkstraTorus(map, start_coords, dest_coords);

   
