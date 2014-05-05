def hello(name)
  "Hello, #{name}"
end

VOYELS = ["A", "E", "I", "O", "U"]
def starts_with_consonant?(text)
  return false if text.empty?
  !VOYELS.include?(text[0].upcase)
end
