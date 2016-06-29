def RPS_game
	begin
		array=["R","P","S"]
		puts "Please enter R P S"
		x=gets.chomp.upcase
		#puts " input #{x}"
	end while !array.include?(x)
	judgement(x,array)
end

def judgement(x,array)
			result =array.sample(1)[0]
		puts "result = #{result}"

		if (x ==result)
			puts "draw game"	
		elsif(x != "S" && result != "S")
				if (x == "P")
					puts "You win"
				else
					puts "You loss"
				end
		elsif(x != "P" && result != "P")
				if (x=="R")
					puts "You win"
				else
					puts "You loss"	
				end
		else
				if (x == "S")
					puts "You win"
				else
					puts "You loss"	
				end
		end
end

def ask_continue
		begin
		    puts "Play Again?: Y / N"
		    continue = gets.chomp.upcase
		end while !["Y", "N"].include?(continue)

		if (continue =="Y")
			RPS_game()
			ask_continue()
		else
			puts "bye bye"
		end
end
RPS_game()
ask_continue()