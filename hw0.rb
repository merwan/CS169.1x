def sum(integers)
  return 0 if integers.empty?
  integers.reduce(:+)
end

def max_2_sum(integers)
  return 0 if integers.empty?
  return integers[0] if integers.length == 1
  sum(integers.sort.reverse_each.take(2))
end

def sum_to_n?(integers, n)
  return false if integers.length <= 1
  integers.each do |i|
    integers.each do |j|
      return true if i + j == n
    end
  end
  return false
end
