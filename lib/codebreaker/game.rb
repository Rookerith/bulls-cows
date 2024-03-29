module Codebreaker
	class Game
		def initialize(output)
			@output = output
		end
		def start(secret)
			@secret = secret
			@output.puts 'Welcome to Codebreaker!'
			@output.puts 'Enter guess:'
		end

		def guess(guess)
			mark = ''
			(0..3).each do |index|
				if exact_match?(guess,index)
					mark << '+'
				elsif number_match?(guess, index)
					mark << '-'
				else
					mark << ''
				end
			end
			@output.puts mark
		end

		def exact_match?(guess, index)
			guess[index] == @secret[index]
		end

		def number_match?(guess, index)
			@secret.include?(guess[index])
		end
	end
end