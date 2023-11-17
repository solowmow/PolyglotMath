public class Fibonacci {

    public static void fibonacci(int numTerms) {
        int a = 0, b = 1;

        System.out.print("Fibonacci sequence of " + numTerms + " terms:");
        for (int i = 0; i < numTerms; ++i) {
            System.out.print(" " + a);
            int sum = a + b;
            a = b;
            b = sum;
        }
        System.out.println();
    }

    public static void main(String[] args) {
        int numTerms = 10; // Change the number of terms in the sequence as needed
        fibonacci(numTerms);
    }
}