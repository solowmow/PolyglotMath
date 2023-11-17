# Sorting Algorithms in R

# Function for Bubble Sort
bubble_sort <- function(arr) {
    n <- length(arr)
    for (i in 1:(n - 1)) {
        for (j in 1:(n - i)) {
            if (arr[j] > arr[j + 1]) {
                temp <- arr[j]
                arr[j] <- arr[j + 1]
                arr[j + 1] <- temp
            }
        }
    }
    print("After Bubble Sort:")
    print(arr)
}

# Function for Insertion Sort
insertion_sort <- function(arr) {
    for (i in 2:length(arr)) {
        key <- arr[i]
        j <- i - 1
        while (j > 0 && arr[j] > key) {
            arr[j + 1] <- arr[j]
            j <- j - 1
        }
        arr[j + 1] <- key
    }
    print("After Insertion Sort:")
    print(arr)
}

# Function for Selection Sort
selection_sort <- function(arr) {
    n <- length(arr)
    for (i in 1:(n - 1)) {
        min_idx <- i
        for (j in (i + 1):n) {
            if (arr[j] < arr[min_idx]) {
                min_idx <- j
            }
        }
        temp <- arr[min_idx]
        arr[min_idx] <- arr[i]
        arr[i] <- temp
    }
    print("After Selection Sort:")
    print(arr)
}

# Example Usage
nums <- c(64, 25, 12, 22, 11)

bubble_sort(nums)
insertion_sort(nums)
selection_sort(nums)