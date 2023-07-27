require './Player'
require './Question'
require './helper/helper'
require './newturn'

player = ""
p1 = Player.new
p1.player = "Test"
p1.life = 3
p1.score = 0
p2 = Player.new
p2.player = "Test2"
p2.life = 3
p2.score = 0 

i = 0
while i < 30
  if(player == "")
    player = p1.player
  elsif(player == "Test")
    player = p2.player
  elsif(player == "Test2")
    player = p1.player
  end

  q1 = Question.new
  pp "#{player}:#{q1.new_question}"
  pp q1.new_answer
  print "> "
  answer = gets.chomp.to_i
  if(answer == q1.new_answer)
    pp "Yes! you are correct, the answer is : #{q1.new_answer}"
    if(player == p1.player)
    p1.score += 1
    pp "score: #{p1.score}/8"
    end
    
    if(player == p2.player)
    p2.score += 1
    pp "score: #{p2.score}/8"
    end
  else 
    pp "Seriously? No!"
    if(player == p1.player)
      p1.life -= 1
    pp "Life: #{p1.life}"
    end
    
    if(player == p2.player)
    p2.life -= 1
    pp "Life: #{p2.life}"
    end
  end
  if(p1.score == 8 || p2.score == 8)
    pp "player #{p1.player} wins with score 8/8"if(player == p1.player)
    pp "player #{p2.player} wins with score 8/8"if(player == p2.player)
    exit(0)
  end

  if(p1.life == 0 || p2.life == 0)
    pp "player #{p2.player} wins with score #{p2.score}"if(player == p1.player)
    pp "player #{p1.player} wins with score #{p1.score}"if(player == p2.player)
    exit(0)
  end
  newturn
  i += 1
end


# example:
# Case construct
# grade = 'B'

# case grade
# when 'A'
#   puts 'Way to go kiddo'
# when 'B'
#   puts 'Better luck next time'
# when 'C'
#   puts 'You can do better'
# when 'D'
#   puts 'Scraping through'
# when 'F'
#   puts 'You failed!'
# else
#   puts 'Alternative grading system, eh?'
# end
#=> "Better luck next time"