# Pathfinding Algorithms on a Grid

This repository contains implementations of Dijkstra's and A* algorithms on a 2D grid using MATLAB. Both algorithms find the shortest path between a starting point and a destination point while navigating around obstacles. A testing script is also provided to demonstrate and compare the performance of these algorithms.

## Features

- **Grid Representation**: The grid is represented as a logical array where obstacles are marked with `true` (or `1`) and free spaces are marked with `false` (or `0`).
- **Pathfinding**:
  - **Dijkstra's Algorithm**: Finds the shortest path by exploring all possible routes and expanding nodes in all directions.
  - **A* Algorithm**: Optimizes the search by using a heuristic to prioritize nodes that are closer to the destination.
- **Visualization**: Both algorithms include an optional visualization mode where the grid is updated with each step of the algorithm.
- **Statistics**: The total number of nodes expanded during the search is returned for both algorithms, allowing for performance comparison.

## Getting Started

### Prerequisites

- MATLAB (compatible with most recent versions)

### Usage

To use the algorithms, you can either run them individually or use the provided testing script to compare their performance.

#### Running Dijkstra's Algorithm ( Similar running for A* Algorithm)

```matlab
map = false(10); % Create a 10x10 grid
map(1:5, 6) = true; % Add an obstacle in the grid
start_coords = [6, 2]; % Define starting coordinates
dest_coords  = [8, 9]; % Define destination coordinates
drawMapEveryTime = false; % Disable map visualization
