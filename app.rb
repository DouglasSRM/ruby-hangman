require_relative 'lib/jogo_forca'
require_relative 'lib/inicializacao'
require_relative 'lib/jogar_novamente'

jogo = JogoForca.new
Inicializacao.inicializar

repetir = true

while repetir
	system('cls')
	jogo.adivinhar
	repetir = JogarNovamente.jogar_novamente
end

puts 'Obridado por jogar!'
