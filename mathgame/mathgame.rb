class Player
	attr_accessor :lives, :name
	def initialize
		@name = "player1"
		@lives = 3
	end
	def lose_life
		@lives -= 1
	end
end

class Question
	attr_accessor :answer, :print, :currentplayer
	def initialize
		@currentplayer = "player1"
		@number1 = rand(20)
		@number2 = rand(20)
		@answer = @number1 + @number2
		@print = "What is #{@number1} + #{@number2} equal to?"
	end
end


class Game
    player1 = Player.new
    player1.name = "Player 1"
    player2 = Player.new
    player2.name = "Player 2"
    currentplayer = player1
    while player1.lives > 0 && player2.lives > 0
        puts "-----NEW QUESTION!-----"
        game1 = Question.new
        puts game1.print
        input_answer = $stdin.gets.chomp
            if game1.answer == input_answer.to_i
                puts "You are correct!"
                puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
                if currentplayer == player1
                    currentplayer = player2
                else
                    currentplayer = player1
                end
            else 
                puts "Wrong answer..."
                currentplayer.lose_life
                puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
                if currentplayer == player1
                    currentplayer = player2
                else
                    currentplayer = player1
            end
        end
    end
end