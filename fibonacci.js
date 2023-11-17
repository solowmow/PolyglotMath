function fibonacci(numTerms) {
    let a = 0, b = 1;

    process.stdout.write(`Fibonacci sequence of ${numTerms} terms: `);
    for (let i = 0; i < numTerms; i++) {
        process.stdout.write(`${a} `);
        let sum = a + b;
        a = b;
        b = sum;
    }
    console.log();
}

fibonacci(10); // Change the number of terms in the sequence as needed