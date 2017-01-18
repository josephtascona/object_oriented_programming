class Cat
  attr_accessor :name, :preferred_food, :meal_time
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end
  def eats_at
    return "11 AM"
  end
  def meow
    return "My name is #{@name} I eat #{@preferred_food} at #{eats_at}"
  end
end

cat1 = Cat.new("Billy", "Fish", 7)
cat2 = Cat.new("Snuggles", "Dog Treats", 3)
puts cat1.meow
puts cat2.meow
