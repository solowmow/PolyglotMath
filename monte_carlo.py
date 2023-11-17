# Monte Carlo Simulation for Estimating Pi in Python

import random

def estimate_pi(num_points):
    points_inside_circle = 0
    total_points = 0

    for _ in range(num_points):
        x = random.uniform(0, 1)
        y = random.uniform(0, 1)

        distance = x**2 + y**2

        if distance <= 1:
            points_inside_circle += 1

        total_points += 1

    estimated_pi = 4 * (points_inside_circle / total_points)
    return estimated_pi, total_points

# Example Usage
if __name__ == "__main__":
    num_points = 1000000  # Change this value to increase or decrease the number of points
    pi_estimate, total_points = estimate_pi(num_points)
    
    print(f"Estimated value of Pi using {total_points} points in Monte Carlo simulation:")
    print(pi_estimate)