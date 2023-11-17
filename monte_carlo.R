# Monte Carlo Simulation for Estimating Pi in R

monte_carlo <- function(num_points) {
    points_inside_circle <- 0
    total_points <- 0

    for (i in 1:num_points) {
        x <- runif(1)
        y <- runif(1)

        distance <- x^2 + y^2

        if (distance <= 1) {
            points_inside_circle <- points_inside_circle + 1
        }

        total_points <- total_points + 1
    }

    estimated_pi <- 4 * (points_inside_circle / total_points)
    cat("Estimated value of Pi using", total_points, "points in Monte Carlo simulation:\n")
    print(estimated_pi)
}

# Example Usage
monte_carlo(10000)  # Change the number of points for estimation as needed