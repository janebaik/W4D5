# def my_min(array)  # => O(n^2)
#     min = nil
#     array.each do |num| #O(n)
#         min = num if array.all? { |num2| num2 >= num } #O(n)
#     end
#     min
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def my_min(array) # => O(n)
    array.inject do |accum, num| #0(n)
        if accum > num 
            num 
        else 
            accum
        end
    end
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def largest_contiguous_subsum(array)   # ==> O(n^3)
    subs = []
    (0...array.length).each do |i1| #O(n)
        (i1...array.length).each do |i2| #O(n)
            subs << array[i1..i2] #O(n)
        end
    end
    subs.map {|sub| sub.sum }.max # 0(n^3)
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])

