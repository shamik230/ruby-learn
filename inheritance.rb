class Animal
  attr_accessor :name
  def initialize name
    @name = name
  end
end

class Cat < Animal
  def initialize name = 'Cat'
    super name
  end
end

class Tiger < Cat
  def initialize name = 'Tiger'
    super name
  end
end

cat = Cat.new
cat1 = Cat.new 'Black cat'
tiger = Tiger.new
tiger1 = Tiger.new 'Black tiger'
p cat.name
p cat1.name
p tiger.name
p tiger1.name
