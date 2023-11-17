# Monte Carlo Simulation for Estimating Pi in Julia

function monte_carlo(num_points)
    points_inside_circle = 0
    total_points = 0

    for i in 1:num_points
        x = rand()
        y = rand()

        distance = x^2 + y^2

        if distance <= 1
            points_inside_circle += 1
        end

        total_points += 1
    end

    estimated_pi = 4 * (points_inside_circle / total_points)
    println("Estimated value of Pi using $total_points points in Monte Carlo simulation:")
    println(estimated_pi)
end

# Example Usage
monte_carlo(10000)  # Change the number of points for estimation as needed