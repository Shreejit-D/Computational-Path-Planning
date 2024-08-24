# Probabilistic Roadmap (PRM) for a Six-Link Robot

This project involves implementing a path planning algorithm based on a Probabilistic Roadmap (PRM) to guide a six-link robot from one configuration to another while avoiding obstacles in the workspace. The robot's configuration is defined by six revolute joints, each of which can rotate between 0 and 360 degrees. This assignment provides experience with planning methods based on random sampling in high-dimensional configuration spaces.

## Overview

### Concept

In a previous assignment, a path planning algorithm was designed based on the configuration space (C-Space) for a robotic arm with two degrees of freedom. This concept is extended here to a six-link robot, increasing the dimensionality of the C-Space. However, as the dimensionality increases, so does the complexity of the configuration space, leading to higher computational demands.

To manage this complexity, a probabilistic approach is used. Instead of uniformly sampling the entire C-Space, configurations are selected randomly. For each selected configuration, the algorithm checks whether it is in free space (i.e., does not result in a collision). If the configuration is valid, it is added to a roadmap of possible paths from the start to the goal configuration.

### Implementation

The main task is to complete the `PRM.m` function, which constructs a probabilistic roadmap of the configuration space. The roadmap is then used to find the shortest path from the start to the goal configuration.

#### Input Arguments

- **RandomSample**: A function that returns a random sample in the free space of the C-Space.
- **Dist**: A function used to compute the distance between a random sample and all the samples generated so far.
- **LocalPlanner**: A function that checks whether two configuration space points, `x1` and `x2`, can be connected by a straight line without intersecting any obstacles. It returns `true` if the path is valid.
- **nsamples**: The total number of random samples to generate (predefined as 100).
- **k**: The number of neighboring samples to consider during PRM construction.

#### Algorithm Steps

1. **Random Sampling**: Generate random samples in the C-Space using the `RandomSample` function.
2. **Distance Calculation**: Use the `Dist` function to compute distances between the new sample and previously generated samples.
3. **Neighbor Selection**: Select the `k` nearest neighbors for the new sample using the computed distances.
4. **Local Planning**: For each neighbor, use the `LocalPlanner` function to determine if a valid path exists between the new sample and the neighbor.
5. **Graph Construction**: If a valid path exists, update the roadmap by adding an edge between the sample and its neighbor, and record the length of this edge.

#### Output

The output of the `PRM` function is a roadmap represented by a set of edges and corresponding edge lengths. This roadmap is used by the `ShortestPathDijkstra` routine to plan the shortest path through the roadmap.

### Example Usage

Below is an example of how the PRM method can be used:

```matlab
% Define parameters
nsamples = 100; % Number of samples
k = 10; % Number of neighbors to consider

% Run PRM algorithm
roadmap = PRM(RandomSample, Dist, LocalPlanner, nsamples, k);

% Find the shortest path using the roadmap
shortest_path = ShortestPathDijkstra(roadmap, start_coords, dest_coords);
