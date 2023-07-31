class Bolwing
  attr_reader :player1, :player2, :roll1, :roll2
  attr_writer

  def initialize(input_options)
    @player1 = input_options[:player1]
    @player2 = input_options[:player2]
    @roll1 = input_options[:roll1]
    @roll2 = input_options[:roll2]
  end

  def array
    @new_array = new_array
  end


  def score
    score1_array = []
    2.times do
      first_roll = gets.chomp
      if first_roll == 10
        score1_array << 10
      elsif 

      
    end
      
    
    
  
  end




end

