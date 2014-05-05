def sum(integers)
  sum = 0
  integers.each { |i| sum += i }
  sum
end

def max_2_sum(integers)
  return 0 if integers.empty?
  return integers[0] if integers.length == 1
  sum(integers.sort.reverse_each.take(2))
end
