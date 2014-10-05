#!/usr/bin/ruby



class WrongNumberOfPlayersError < StandardError ; end

class NoSuchStrategyError < StandardError ; end

class RockPaperScissors
	
	def Analyze(*gameStrategy)
			
		raise WrongNumberOfPlayersError unless gameStrategy.length == 2
		raise NoSuchStrategyError unless gameStrategy[0][1] == "P" || gameStrategy[0][1] == "R" || gameStrategy[0][1] == "S" 
		raise NoSuchStrategyError unless gameStrategy[1][1] == "P" || gameStrategy[1][1] == "R" || gameStrategy[1][1] == "S"
		
		if gameStrategy[0][1] == gameStrategy[1][1]
                        return ["Game Drawn"]
                end
		
		if gameStrategy[0][1] == 'R'
			if gameStrategy[1][1] == 'S'
				return gameStrategy[0]
			else
				return gameStrategy[1]
			end
		elsif gameStrategy[0][1] == 'S'
			if gameStrategy[1][1] == 'P'
				return gameStrategy[0]
			else
				return gameStrategy[1]
			end
		else
			if gameStrategy[1][1] == 'R'
				return gameStrategy[0]
			else
				return gameStrategy[1]
			end
		end
	end


	def Tournament(*tournamentArray)
		g = RockPaperScissors.new()
		Array a = g.Analyze(tournamentArray[0],tournamentArray[1])
		Array b = g.Analyze(tournamentArray[2],tournamentArray[3])
		Array c = g.Analyze(a,b)
		puts "#{c}"
	end
end
		

if __FILE__ == $0
 g = RockPaperScissors.new()
 g.Tournament(["kk","S"],["mm","R"],["rr","P"],["qq","S"])
end		
