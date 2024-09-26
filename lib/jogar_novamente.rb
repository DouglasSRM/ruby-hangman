class JogarNovamente
	def self.jogar_novamente
		puts 'Jogar novamente? [y/n]'
		resposta = gets.chomp
		if resposta == 'y'
			return true
		else
			return false
		end
	end
end