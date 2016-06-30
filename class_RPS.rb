class RPS_joiner
	attr_accessor :player,:rps_law

	def initialize(player)
    @player  = player
    @rps_law = ["R", "P", "S"]
  end

end

class Human < RPS_joiner 
  def get_human_input
    begin
      puts "Please choose one  R,P,S"
      self.player = gets.chomp.upcase
    end while !rps_law.include?(player)
  end
end


class Computer < RPS_joiner
  def get_computer_input
    self.player = rps_law.sample
  end
end


class RPS_game

  attr_accessor :human, :computer

  def initialize
    @human = Human.new("User")
    @computer = Computer.new("computer")
  end

  def result
    if human.player == computer.player then "It's a draw"

      elsif human.player == "R" 
        if computer.player == "P" then "You lost"
        elsif computer.player == "S" then "You win"
        end

      elsif human.player == "P" 
        if computer.player == "S" then "You lost"
        elsif computer.player == "R" then "You win"
        end

      elsif human.player == "S" 
        if computer.player == "R" then "You lost"
        elsif computer.player == "P" then "You win"
        end
      end
  end

  def print_result

  puts "==================================="
  puts "User #{human.player}, Computer #{computer.player}."
  puts "#{result}!"
  puts "==================================="

  end

  def play_again
    begin
    puts "Do You Want To Play Again?: Y / N"
    continue = gets.chomp.upcase
    end while !["Y", "N"].include?(continue)
    
    if continue == 'Y'
      game = RPS_game.new.start
    elsif 
      puts "<<<<<  Thanks for playing Rock Paper Scissors!!!  >>>>>"
    end   
  end

  def start
    puts "<<<<<  Welcome to R  P  S GAME!!!  >>>>>"
    human.get_human_input
    computer.get_computer_input
    result

    puts "==================================="
    puts "User #{human.player}, Computer #{computer.player}."
    puts "#{result}!"
    puts "==================================="
    play_again

  end
end



game = RPS_game.new.start