def start_game

  puts "What is the first player's name?"
  @nameone = gets.chomp
  puts "What is the second player's name?"
  @nametwo= gets.chomp
  @turn = 0
  @playeronelives = 3
  @playertwolives = 3
  @playeronescore = 0
  @playertwoscore = 0

end


def game_setup
  @numberone = rand(20)
  @numbertwo = rand(20)
  if @turn % 2 == 0
     @active_player = @nameone
  else 
    @active_player = @nametwo 
  end
end


def verify_answer
@correctanswer = (@numberone + @numbertwo)
end


def generate_question
  puts "Player #{@active_player}: What does #{@numberone} plus #{@numbertwo} equal to?"
  @usrinput = gets.chomp.to_f
end

def congratulate

  case @active_player
  when @nameone

    if @usrinput == @correctanswer 
      puts "Yer a wizard, harry"
      @playeronescore = @playeronescore + 1
    else
      puts "Uh oh! You're a muggle."
      @playeronelives = @playeronelives - 1
      puts "#{@nameone} : #{@playeronescore}, #{@nametwo} : #{@playertwoscore}"
    end

  else 

    if @usrinput == @correctanswer 
      puts "Yer a wizard, harry"
      @playertwoscore = @playertwoscore + 1
    else
      puts "Uh oh! You're a muggle."
      @playertwolives = @playertwolives - 1
      puts "#{@nameone} : #{@playeronescore}, #{@nametwo}: #{@playertwoscore}"
    end

  end
end


def track_turn
  @turn = @turn + 1
end







