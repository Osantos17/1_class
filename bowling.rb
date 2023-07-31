#Create a way to keep score from a bowling match

#record the "roll"
#input "roll" into an array
#apply the array to a player
#the array should not exceed the set amount of turns
#set the array into pairs for two turns
#add those two turns together to output one "score" per two throws
      

player1 = []


10.times do
  p "player one's score"
  roll_1 = gets.chomp.to_i
  
  if roll_1 == 10
    roll_1 = 10
    player1 << "X"
  else
    roll_2 = gets.chomp.to_i
    if roll_2 + roll_1 == 10
      player1 << "/"
    else
      roll_1_resut = roll_2 + roll_1
      player1 << roll_1_resut
    end
  end
end


if player1.last == "X"
  2.times do
    roll_1 = gets.chomp.to_i
   if roll_1 == 10
     roll_1 = 10
     player1 << "X"
   else
     player1 << roll_1
   end
  end
end
  

if player1.last == "/"
  roll_1 = gets.chomp.to_i
  if roll_1 == 10
    roll_1 = 10
    player1 << "X"
  else
    player1 << roll_1
  end
end

p player1

i = 0
player1_score = []

while i < player1.length - 3
  if player1[i] == "X"
    strike_1 = 10
    if player1[i + 1] == "X" || player1[i + 1] == "/"
      strike_2 = 10
    else
      strike_2 = player1[i + 1]
    end

    if player1[i + 2] == "X" || player1[i + 2] == "/"
      strike_3 = 10
    else
      strike_3 = player1[i + 2]
    end
  end
  
  if player1[i] == "/"
    strike_1 = 10
    if player1[i + 1] == "X" || player1[i + 1] == "/"
      strike_2 = 10
      strike_3 = 0
    else
      strike_2 = player1[i + 1]
      strike_3 = 0
    end
  end

  score = strike_1 + strike_2 + strike_3
  player1_score << score
  i = i + 1
end

p player1_score
    
p player1_score.sum




#p "player twos score"
#roll_1 = gets.chomp.to_i
#if roll_1 == 10
# roll_result = roll_1
#player_2 << roll_result
#else
#roll_2 = gets.chomp.to_i
#roll_result = roll_1. + roll_2
#player_2 << roll_result
#end

#end

#total_1 = player_1
#total_2 = player_2.sum

#p "Player ones total score is #{total_1}"
#p "Player ones total score is #{total_2}"
#