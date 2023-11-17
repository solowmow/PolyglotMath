import java.util.Random;

public class MonteCarlo {

    public static double monteCarlo(int numPoints) {
        int pointsInsideCircle = 0;
        int totalPoints = 0;

        Random rand = new Random();

        for (int i = 0; i < numPoints; ++i) {
            double x = rand.nextDouble();
            double y = rand.nextDouble();

            double distance = x * x + y * y;

            if (distance <= 1) {
                pointsInsideCircle++;
            }

            totalPoints++;
        }

        double estimatedPi = 4 * ((double) pointsInsideCircle / totalPoints);
        System.out.println("Estimated value of Pi using " + totalPoints + " points in Monte Carlo simulation:");
        System.out.println(estimatedPi);

        return estimatedPi;
    }

    public static void main(String[] args) {
        int numPoints = 10000; // Change the number of points for estimation as needed
        monteCarlo(numPoints);
    }
}