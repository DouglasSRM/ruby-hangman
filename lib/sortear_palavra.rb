class SortearPalavra
	def self.sortear
		palavras = []
		File.open(File.expand_path('../palavras.txt', __FILE__), 'r') do |arq|
			palavras = arq.each_line.map(&:strip) #Coloca todas as palavras em um array e o &:stirp remove a quebra de linha de cada palavra
		end
		return palavras.sample
	end
end