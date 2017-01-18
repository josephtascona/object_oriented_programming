class Paperboy
  attr_accessor :name, :experience
  attr_reader :earnings
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end
  def quota
    50 + @experience/2
  end
  def deliver(start_address, end_address)
    goal = quota
    deliveries = end_address - start_address
    @experience += deliveries
    if deliveries >= goal
      @earnings += (deliveries-goal) * 0.5
      @earnings += goal * 0.25
    else
      @earnings += deliveries * 0.25
      @earnings -= 2
    end
  end
  def report
    puts "I'm #{name}, I've delivered #{experience} and I've earned #{earnings}$ so far!"
  end
end

joey = Paperboy.new("Joey")

puts joey.quota
puts joey.deliver(101, 150)
puts joey.earnings
puts joey.report

puts joey.quota
puts joey.deliver(1, 75)
puts joey.earnings
puts joey.report
