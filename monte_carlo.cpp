#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

double monteCarlo(int num_points) {
    int points_inside_circle = 0;
    int total_points = 0;

    srand(time(nullptr));

    for (int i = 0; i < num_points; ++i) {
        double x = static_cast<double>(rand()) / RAND_MAX;
        double y = static_cast<double>(rand()) / RAND_MAX;

        double distance = x * x + y * y;

        if (distance <= 1) {
            points_inside_circle++;
        }

        total_points++;
    }

    double estimated_pi = 4 * (static_cast<double>(points_inside_circle) / total_points);
    cout << "Estimated value of Pi using " << total_points << " points in Monte Carlo simulation:" << endl;
    cout << estimated_pi << endl;

    return estimated_pi;
}

int main() {
    int num_points = 10000;  // Change the number of points for estimation as needed
    monteCarlo(num_points);

    return 0;
}