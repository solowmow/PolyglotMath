% Monte Carlo Simulation for Estimating Pi in MATLAB

function estimated_pi = monte_carlo(num_points)
    % Function to estimate the value of Pi using a Monte Carlo simulation
    % Input: num_points - Number of random points to generate
    % Output: estimated_pi - Estimated value of Pi using the Monte Carlo method
    
    points_inside_circle = 0;
    total_points = 0;

    for i = 1:num_points
        x = rand();
        y = rand();

        distance = x^2 + y^2;

        if distance <= 1
            points_inside_circle = points_inside_circle + 1;
        end

        total_points = total_points + 1;
    end

    estimated_pi = 4 * (points_inside_circle / total_points);
    fprintf('Estimated value of Pi using %d points in Monte Carlo simulation:\n', total_points);
    disp(estimated_pi);
end