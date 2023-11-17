# Sorting Algorithms in Julia

# Bubble Sort
function bubble_sort(arr)
    n = length(arr)
    for i in 1:n-1
        for j in 1:n-i
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    println("After Bubble Sort:")
    println(arr)
end

# Insertion Sort
function insertion_sort(arr)
    for i in 2:length(arr)
        key = arr[i]
        j = i - 1
        while j > 0 && arr[j] > key
            arr[j + 1] = arr[j]
            j -= 1
        end
        arr[j + 1] = key
    end
    println("After Insertion Sort:")
    println(arr)
end

# Selection Sort
function selection_sort(arr)
    n = length(arr)
    for i in 1:n-1
        min_idx = i
        for j in i+1:n
            if arr[j] < arr[min_idx]
                min_idx = j
            end
        end
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    end
    println("After Selection Sort:")
    println(arr)
end

# Example Usage
nums = [64, 25, 12, 22, 11]

bubble_sort(nums)
insertion_sort(nums)
selection_sort(nums)