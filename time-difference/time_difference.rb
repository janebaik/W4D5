def my_min(array)  # => O(n^2)
    min = nil
    array.each do |num| #O(n)
        min = num if array.all? { |num2| num2 >= num } #O(n)
    end
    min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# def my_min(array) # => O(n)
#     array.inject do |accum, num| #0(n)
#         if accum > num 
#             num 
#         else 
#             accum
#         end
#     end
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def largest_contiguous_subsum(array)# ==> O(n^3)
    subs = []
    (0...array.length).each do |i1| #O(n)
        (i1...array.length).each do |i2| #O(n)
            subs << array[i1..i2] #O(n)
        end
    end
    subs.map { |sub| sub.sum }.max # 0(n^3) + n
end #space => subs = n^2 subarrays, each subarrays = n eles; n^3

# def efficient_largest_sub_sum(array)
#     max_sum = 0
#     array.inject do |accum, el| 
#         accum += el 
#         if accum > max_sum
#             max_sum = accum 
#         end
#     end
#     max_sum
# end
# list = [5, 3, -7, 900]

# p efficient_largest_sub_sum(list) # => 8

def efficient_largest_sub_sum(array)
current_sum = array.first
max_sum = array.first

  array.each_with_index do |num, i| 
    next if i == 0
    current_sum = current_sum + num
    if current_sum < num
        current_sum = num
    end     
    if current_sum > max_sum
        max_sum = current_sum
    end
  end
    max_sum
end
list = [5, 3, -7]
p efficient_largest_sub_sum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p efficient_largest_sub_sum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p efficient_largest_sub_sum(list) # => -1 (from [-1])




# list = [-5, -1, -3]
# p efficient_largest_sub_sum(list) # => -1 (from [-1])

# list = [5, 3, -7]
# p efficient_largest_sub_sum(list) # => 8

# list = [2, 3, -6, 7, -6, 7]
# p efficient_largest_sub_sum(list) # => 8 (from [7, -6, 7])



