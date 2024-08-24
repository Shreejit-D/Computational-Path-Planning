# Gradient-Based Path Planning with Artificial Potential Fields

This project involves developing code to guide a robot from one location to another in a 2D configuration space using artificial potential fields. The robot is modeled as a red sphere moving across an energy surface, where it is attracted towards the goal while repelled by obstacles.

## Overview

### Concept

Artificial potential fields are used in path planning to navigate a robot towards a goal while avoiding obstacles. The robot's movement is influenced by a potential function, which is lower near the goal and higher near obstacles. The robot effectively "rolls down" this energy surface towards the goal.

### Implementation

The main task is to complete the `GradientBasedPlanner` function, which controls the robot's motion based on the gradient of the potential field.

#### Function Signature

```matlab
function route = GradientBasedPlanner(f, start_coords, end_coords, max_its)
