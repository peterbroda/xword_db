Word.create(grid_text: "STY", full_text: "sty")
Word.create(grid_text: "AREA", full_text: "area")
Word.create(grid_text: "TESTING", full_text: "testing")
Word.create(grid_text: "HOWNOWBROWNCOW", full_text: "how now brown cow?")
Word.create(grid_text: "IMLOVINIT", full_text: "I'm lovin' it")

File.foreach('./db/seed_wordlist.txt') { |line|
  puts line
  Word.find_or_create_by_grid_text(line)
}
#e.solvables.create(word: Word.find_or_create_by_grid_text("RAILS"))
Entry.create(row: 1, col: 1, dir: 'Across', answer: 'STY', number: 1, clue: 'Messy room', :solvables => [Solvable.create(word: Word.find_or_create_by_grid_text("STY"))])

