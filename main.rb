require "./player.rb"
require "./question.rb"


player_1 = Player.new("Player 1");
player_2 = Player.new("Player 2");

while player_1.health > 0 && player_2.health > 0
  question = Question.new()
  player_1.answerQuestion(question)
  puts "P1:#{player_1.health} vs P2:#{player_2.health}"
  if player_1.health < 0
  break
    puts "---- NEW TURN ----"
    question = Question.new()
    player_2.answerQuestion(question)
    puts "P1:#{player_1.health} vs P2:#{player_2.health}"
    puts "---- NEW TURN ----"
  end   
 
end

if player_1.health > player_2.health
  puts "player_1 wins with a score of #{player_1.health}/3"
else puts "player_2 wins with a score of #{player_2.health}/3"
  puts "GAME OVER"
  puts "Good bye!"
end 



 





