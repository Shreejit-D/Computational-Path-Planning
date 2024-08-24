# Robotics Path Planning Projects

This repository contains several projects focused on path planning algorithms for robotic systems. Each project involves different approaches to guide robots through various environments while avoiding obstacles. The algorithms implemented here range from grid-based pathfinding to advanced probabilistic methods and potential field-based planning.

## Project Summaries

### 1. Dijkstra's and A* Algorithms on a Grid

**Description**: Implementation of Dijkstra's and A* algorithms for pathfinding on a 2D grid. The grid represents a configuration space where obstacles are marked, and the algorithms find the shortest path from a start to a destination point.

- **Key Features**:
  - Grid representation with obstacles and free spaces.
  - Dijkstra's Algorithm: Explores all possible routes to find the shortest path.
  - A* Algorithm: Uses a heuristic to prioritize nodes closer to the destination for more efficient pathfinding.
- **Files**:
  - `DijkstraGrid.m`
  - `AStarGrid.m`
  - `TestScript.m`

### 2. Configuration Space for a Two-Link Robotic Arm

**Description**: This project extends path planning to a two-link robotic arm navigating through a workspace with obstacles. The configuration space is derived by checking for intersections between the triangles representing the robot and obstacles.

- **Key Features**:
  - Collision detection using triangle intersections.
  - Dijkstra's Algorithm applied to a toroidal configuration space.
- **Files**:
  - `triangle_intersection.m`
  - `DijkstraTorus.m`
  - `TwoLinkCspace.m`
  - `TestScript.m`

### 3. Probabilistic Roadmap (PRM) for a Six-Link Robot

**Description**: Implementation of a Probabilistic Roadmap (PRM) for a six-link robot, where the configuration space is sampled randomly. This method is suitable for high-dimensional spaces where traditional grid-based methods become computationally infeasible.

- **Key Features**:
  - Random sampling of configuration space.
  - Local planner to connect configurations without collision.
  - Construction of a roadmap used to find the shortest path.
- **Files**:
  - `PRM.m`
  - `SixLinkPRMScript.m`
  - `RandomSample.m`
  - `Dist.m`
  - `LocalPlanner.m`

### 4. Gradient-Based Path Planning with Artificial Potential Fields

**Description**: Path planning for a robot in a 2D environment using artificial potential fields. The robot is guided towards the goal by rolling down an energy surface, avoiding obstacles modeled by repulsive potential fields.

- **Key Features**:
  - Potential fields to represent attraction towards the goal and repulsion from obstacles.
  - Gradient-based motion planning.
  - Visualization of the robot’s path.
- **Files**:
  - `GradientBasedPlanner.m`
  - `PotentialField.m`
  - `TestScript.m`

## Getting Started

### Prerequisites

- MATLAB (compatible with most recent versions)

### Usage

Each project is self-contained with specific instructions and example usage provided in the respective sub-directory's `README.md`. Refer to those for detailed instructions on how to run and test the algorithms.
