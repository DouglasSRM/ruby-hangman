require 'tty-cursor'
require 'tty-spinner'

class Inicializacao
	def self.inicializar
		system('cls')

		cursor = TTY::Cursor
		print cursor.move_to(0, 5)

		spinner = TTY::Spinner.new
		spinner = TTY::Spinner.new("[:spinner] Carregando ...", format: :pulse_2)
		spinner.auto_spin
		sleep(2)
		spinner.stop('Pronto!')
		system('cls')
	end
end