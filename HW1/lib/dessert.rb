class Dessert
  attr_accessor :calories
  attr_accessor :name

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    @name == "apple"
  end
  def delicious?
    @name = 'cake'
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
  end
end
