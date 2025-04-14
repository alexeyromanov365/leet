def group_chars(string)
  string.chars.group_by(&:chars).map { |k, v| [k.first, v.size] }
end

group_chars('aaaabbbccd')

# output => [['a', 4], ['b', 3], ['c', 2], ['d', 1]]
