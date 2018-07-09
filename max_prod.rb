def sort_method(nums)
  return if nums.length < 3
  return nums.inject(&:*) if nums.length == 3
  sorted_nums = nums.sort
  
  max_index = nums.length - 1

  first_max  = sorted_nums[0] * sorted_nums[1] * sorted_nums[max_index] 
  second_max = sorted_nums[max_index] * sorted_nums[max_index - 1] * sorted_nums[max_index - 2]

  first_max > second_max ? first_max : second_max
end

def iterative_method(nums)
  return if nums.length < 3
  return nums.inject(&:*) if nums.length == 3

  largest    = 0
  s_largest  = 0
  t_largest  = 0
  smallest   = 0
  s_smallest = 0

  nums.each do |n|
    if n >= largest
      t_largest = s_largest
      s_largest = largest
      largest = n
    elsif n >= s_largest && n < largest
      t_largest = s_largest
      s_largest = n
    elsif n >= t_largest && n < s_largest
      t_largest = n
    elsif n <= smallest
      s_smallest = smallest
      smallest = n
    elsif n <= s_smallest && n > smallest
      s_smallest = n
    end
  end

  first_possible  = largest * s_largest * t_largest
  second_possible = largest * smallest * s_smallest

  first_possible > second_possible ? first_possible : second_possible
end
