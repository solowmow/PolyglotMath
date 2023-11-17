#include <iostream>
#include <vector>
using namespace std;

void fibonacci(int num_terms) {
    vector<int> fib_sequence(num_terms, 0);
    fib_sequence[1] = 1;

    for (int i = 2; i < num_terms; ++i) {
        fib_sequence[i] = fib_sequence[i - 1] + fib_sequence[i - 2];
    }

    cout << "Fibonacci sequence of " << num_terms << " terms:" << endl;
    for (int num : fib_sequence) {
        cout << num << " ";
    }
    cout << endl;
}

int main() {
    int num_terms = 10;  // Change the number of terms in the sequence as needed
    fibonacci(num_terms);

    return 0;
}