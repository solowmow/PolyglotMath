function monteCarlo(numPoints) {
    let pointsInsideCircle = 0;
    let totalPoints = 0;

    for (let i = 0; i < numPoints; i++) {
        let x = Math.random();
        let y = Math.random();

        let distance = x * x + y * y;

        if (distance <= 1) {
            pointsInsideCircle++;
        }

        totalPoints++;
    }

    let estimatedPi = 4 * (pointsInsideCircle / totalPoints);
    console.log(`Estimated value of Pi using ${totalPoints} points in Monte Carlo simulation:`);
    console.log(estimatedPi);
    return estimatedPi;
}

monteCarlo(10000); // Change the number of points for estimation as needed