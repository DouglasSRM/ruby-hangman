require_relative 'lib/jogo_forca'
require_relative 'lib/jogo'

jogo = JogoForca.new
#Jogo.inicializar

repetir = true

while repetir
	system('cls')
	jogo.adivinhar
	repetir = Jogo.jogar_novamente
end

puts 'Obridado por jogar!'
