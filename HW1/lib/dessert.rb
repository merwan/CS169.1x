class Dessert
  attr_accessor :calories
  attr_accessor :name

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    @calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(flavor)
    @name = "#{flavor} jelly bean"
    @calories = 5
    @flavor = flavor
  end

  def delicious?
    @flavor != 'licorice'
  end
end
