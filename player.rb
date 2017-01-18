class Player
  attr_accessor :gold_coins, :health_points, :lives, :score
  def initialize
    @gold_coins = 0
    @lives = 5
    @health_points = 10
    @score = 0
  end
  def restart
    initialize
  end
  def do_battle
    @health_points -= 1
    if @health_points <= 0
      @lives -= 1
      @health_points = 10
    end
    restart if @lives <= 0
  end
  def level_up
    @lives += 1
  end
  def collect_treasure(number)
    @gold_coins += number
    if @gold_coins >= 10
      @score += 1
      @gold_coins = 0
    end
    if @score >= 10
      level_up
      @score = 0
    end
  end
end

joey = Player.new
puts "Gold: #{joey.gold_coins}", "Health: #{joey.health_points}", "Lives: #{joey.lives}", "Score: #{joey.score}"

65.times do
  joey.do_battle
end
puts "Health After Battle: #{joey.health_points}", "Lives After Battle: #{joey.lives}"

23.times do
  joey.level_up
end
puts "Lives After Level Up: #{joey.lives}"

151.times do
  joey.collect_treasure(1)
end
puts "Gold After Treasure: #{joey.gold_coins}", "Score After Treasure: #{joey.score}", "Lives After Treasure: #{joey.lives}"
