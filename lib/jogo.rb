require 'tty-cursor'
require 'tty-spinner'

module Jogo
  def self.inicializar
    system('cls')
    cursor = TTY::Cursor
    print cursor.move_to(0, 5)
    spinner = TTY::Spinner.new("[:spinner] Carregando ...", format: :pulse_2)
    spinner.auto_spin
    sleep(2)
    spinner.stop('Pronto!')
    system('cls')
  end

  def self.jogar_novamente
    puts 'Jogar novamente? [y/n]'
    resposta = gets.chomp
    return resposta == 'y'  # Retorna true se 'y', caso contrário false
  end
end
