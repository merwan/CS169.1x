def sum(integers)
  return 0 if integers.empty?
  integers.reduce(:+)
end

def max_2_sum(integers)
  return 0 if integers.empty?
  return integers[0] if integers.length == 1
  sum(integers.sort.reverse.take(2))
end

def sum_to_n?(integers, n)
  return false if integers.length <= 1
  integers.permutation(2).each do |a|
    return true if sum(a) == n
  end
  return false
end
