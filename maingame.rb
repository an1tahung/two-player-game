
require_relative 'fun_game.rb'

  start_game

until @playeronelives == 0 || @playerotwolives == 0
  game_setup 
  verify_answer
  generate_question
  congratulate
  track_turn
end

puts "Game over! Go back to Number 4, Privet Drive."

if @playeronescore < @playertwoscore
  puts "#{@nametwo} wins with #{@playertwoscore} correct answers! #{@nameone} had #{@playeronescore}."
elsif @playeronescore == @playertwoscore
  puts "You are tied! The final score is #{@playertwoscore}, #{@playeronescore}."
else
  puts "#{@nameone} wins with #{@playeronescore} correct answers! #{@nametwo} had #{@playertwoscore}."
end
