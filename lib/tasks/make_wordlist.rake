  task :make_wordlist => :environment do

	words = Word.find(:all)

	gnu_wordlist_file = "/home/peter/xword_db/public/wordlists/crossexamination_wordlist_linux.txt"
	dos_wordlist_file = "/home/peter/xword_db/public/wordlists/crossexamination_wordlist_windows.txt"
	mac_wordlist_file = "/home/peter/xword_db/public/wordlists/crossexamination_wordlist_mac.txt"

	File.open(gnu_wordlist_file, 'w') { |file|
		words.each do |w|
			file.write(w.grid_text)
			file.write("\n")
		end
	}
	File.open(dos_wordlist_file, 'w') { |file|
		words.each do |w|
			file.write(w.grid_text)
			file.write("\r\n")
		end
	}
	File.open(mac_wordlist_file, 'w') { |file|
		words.each do |w|
			file.write(w.grid_text)
			file.write("\r")
		end
	}

  end
