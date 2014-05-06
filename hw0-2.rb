def hello(name)
  "Hello, #{name}"
end

VOYELS = ["A", "E", "I", "O", "U"]
def starts_with_consonant?(text)
  return false if text.empty?
  !VOYELS.include?(text[0].upcase)
end

def binary_multiple_of_4?(text)
  return false if /^[01]+$/.match(text) == nil
  text.to_i(2) % 4 == 0
end
