#!/usr/bin/ruby



class WrongNumberOfPlayersError < StandardError ; end

class NoSuchStrategyError < StandardError ; end

class RockPaperScissors
	attr_accessor :gameStrategy
	def initialize(gameStrategy)
		@gameStrategy = gameStrategy
	end
	
	def Analyze
		raise WrongNumberOfPlayersError unless gameStrategy.length == 2
		raise NoSuchStrategyError unless gameStrategy[0][1] == "P" || gameStrategy[0][1] == "R" || gameStrategy[0][1] == "S" 
		raise NoSuchStrategyError unless gameStrategy[1][1] == "P" || gameStrategy[1][1] == "R" || gameStrategy[1][1] == "S"
		if gameStrategy[0][1] == 'R'
			if gameStrategy[1][1] == 'S'
				puts "The Winner is #{gameStrategy[0][0]}"
			else
				puts "The Winner is #{gameStrategy[1][0]}"
			end
		elsif gameStrategy[0][0] == 'S'
			if gameStrategy[1][1] == 'P'
				puts "The Winner is #{gameStrategy[0][0]}"
			else
				puts "The Winner is #{gameStrategy[1][0]}"
			end
		else
			if gameStrategy[1][1] == 'R'
				puts "The Winner is #{gameStrategy[0][0]}"
			else
				puts "The Winner is #{gameStrategy[1][0]}"
			end
		end
	end
end

if __FILE__ == $0
 g = RockPaperScissors.new([["karthik","Q"],["kk","P"],["ff","R"]])
 g.Analyze
end
		

