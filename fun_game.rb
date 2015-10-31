@playeronescore = 0

@playertwoscore = 0



def generate_question

  numberone = rand(50)
  numbertwo = rand(100)

  puts "Player One: What does #{numberone} plus #{numbertwo} equal to?"

end

def prompt_player_for_answer

  answer = gets.chomp 


end

def verify_answer

generate_question

end

puts verify_answer


