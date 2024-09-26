require_relative 'sortear_palavra'

class JogoForca
	def adivinhar
		palavra = SortearPalavra.sortear
		acertou = false
		letras = []
		erros = 0
		saida = ""

		until acertou || (erros == 6) do


			File.open(File.expand_path("../figs/fig#{erros}.txt", __FILE__), 'r') do |arq|
				while line = arq.gets
					puts line
				end
			end

			print 'Insira uma letra: '
			input = gets.chomp

			if input.length == 0
				system('cls')
				next #Reseta o loop until
			end

			system('cls')

			letra_atual = input[0]
 
			if letras.include?(letra_atual)
				puts 'Letra Repetida'
				puts "Letras: #{letras.join(", ")}"
				puts saida
				next #Reseta o loop until
			else
				letras.push(letra_atual)
			end

			puts "Letras: #{letras.join(", ")}"

			saida = ""
			errou = true
			palavra.each_char do |l|
				if letras.include?(l)
					saida += l

				else
					saida += '_'
				end
			end

			unless saida.include?(letra_atual)
				erros += 1
				puts 'Errou'
			end

			puts saida

			if erros == 6
				File.open(File.expand_path("../figs/fig#{erros}.txt", __FILE__), 'r') do |arq|
					while line = arq.gets
						puts line
					end
				end
				puts "Você perdeu :( a palavra era: #{palavra}"
			end

			acertou = (saida == palavra)
			if acertou
        		puts "Parabéns! Você acertou a palavra: #{palavra}"
        	end
		end
	end
end
