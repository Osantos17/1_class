class Bowling
  attr_reader :roll2, :roll3 

  def initialize(input_options)
    @roll1 = input_options[:roll1]
    @roll2 = input_options[:roll2]
  end

  def score1
    array = []
    2.times do
      array << roll1
    end
  end
end

bowling = Bowling.new(roll1:10, roll2: 5)

p bowling.score1