c = 0
until c == 7
	system('cls')
	File.open(File.expand_path("../figs/fig#{c}.txt", __FILE__), 'r') do |arq|
		while line = arq.gets
			puts line
		end
	end

	sleep(1)

	c+=1
end


