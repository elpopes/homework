def linear_search(arr, val)
    #what is the run time?
    n (=size of the array)
    #best case is if ele is in front of array. 
    # worst case is the ele isn't in array at all
    # average case is harder question
    # big o is the asymptotic worst case runtime
    #O(n) #stands for ordnung or order of approximation
    #gives us an upper bound
    arr.each_with_index do |ele, i|
        return i if ele == val
    end
    -1
end