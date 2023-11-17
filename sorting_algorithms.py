# Sorting Algorithms in Python

def bubble_sort(arr):
    n = len(arr)
    for i in range(n - 1):
        for j in range(0, n - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]

def insertion_sort(arr):
    n = len(arr)
    for i in range(1, n):
        key = arr[i]
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key

def selection_sort(arr):
    n = len(arr)
    for i in range(n):
        min_idx = i
        for j in range(i + 1, n):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]

# Example Usage
if __name__ == "__main__":
    nums = [64, 25, 12, 22, 11]

    print("Original Array:")
    print(nums)

    bubble_sort(nums)
    print("\nAfter Bubble Sort:")
    print(nums)

    nums = [64, 25, 12, 22, 11]  # Reset array for other sorts

    insertion_sort(nums)
    print("\nAfter Insertion Sort:")
    print(nums)

    nums = [64, 25, 12, 22, 11]  # Reset array for other sorts

    selection_sort(nums)
    print("\nAfter Selection Sort:")
    print(nums)