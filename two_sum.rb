# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# Example 1:
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:
# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:
# Input: nums = [3,3], target = 6
# Output: [0,1]

def two_sum(nums, target)
  max_index = nums.size - 1
  x_init = max_index
  y_init = max_index - 1

  x_init.downto(0) do |x|
    y_init.downto(0) do |y|
      next if x == y
      return [x, y] if (nums[x] + nums[y]) == target
    end
  end
end
