% Sorting Algorithms in MATLAB

function sorted = sorting_algorithms(nums)
    % Function to demonstrate three sorting algorithms: Bubble Sort, Insertion Sort, and Selection Sort
    % Input: nums - Array of numbers to be sorted
    % Output: sorted - Cell array containing sorted arrays using three different sorting algorithms
    
    % Bubble Sort Algorithm
    sorted_bubble = nums;
    n = length(sorted_bubble);
    for i = 1:n-1
        for j = 1:n-i
            if sorted_bubble(j) > sorted_bubble(j+1)
                temp = sorted_bubble(j);
                sorted_bubble(j) = sorted_bubble(j+1);
                sorted_bubble(j+1) = temp;
            end
        end
    end
    disp('After Bubble Sort:');
    disp(sorted_bubble);

    % Insertion Sort Algorithm
    sorted_insertion = nums;
    for i = 2:length(sorted_insertion)
        key = sorted_insertion(i);
        j = i - 1;
        while j > 0 && sorted_insertion(j) > key
            sorted_insertion(j + 1) = sorted_insertion(j);
            j = j - 1;
        end
        sorted_insertion(j + 1) = key;
    end
    disp('After Insertion Sort:');
    disp(sorted_insertion);

    % Selection Sort Algorithm
    sorted_selection = nums;
    n = length(sorted_selection);
    for i = 1:n-1
        min_idx = i;
        for j = i+1:n
            if sorted_selection(j) < sorted_selection(min_idx)
                min_idx = j;
            end
        end
        temp = sorted_selection(min_idx);
        sorted_selection(min_idx) = sorted_selection(i);
        sorted_selection(i) = temp;
    end
    disp('After Selection Sort:');
    disp(sorted_selection);
    
    sorted = {sorted_bubble, sorted_insertion, sorted_selection};
end