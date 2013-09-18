clues_19rickroll = Array.new
clues_19rickroll.push(Entry.create(dir: 'Across', answer: 'NEVER', number: 1, clue: '"When hell freezes over!"', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('NEVER'))]))
clues_19rickroll.push(Entry.create(dir: 'Across', answer: 'GONNA', number: 8, clue: 'Fixin\' to', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('GONNA'))]))
clues_19rickroll.push(Entry.create(dir: 'Across', answer: 'GIVE', number: 14, clue: 'Collapse under pressure', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('GIVE'))]))
clues_19rickroll.push(Entry.create(dir: 'Across', answer: 'YOU', number: 15, clue: 'Someone likely to be rickrolled, apparently', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('YOU'))]))
clues_19rickroll.push(Entry.create(dir: 'Across', answer: 'UP', number: 16, clue: 'Wide awake', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('UP'))]))
clues_19rickroll.push(Entry.create(dir: 'Down', answer: 'NEVER', number: 1, clue: 'Emphatic no', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('NEVER'))]))
clues_19rickroll.push(Entry.create(dir: 'Down', answer: 'GONNA', number: 2, clue: '"___ Fly Now" ("Rocky" theme)', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('GONNA'))]))
clues_19rickroll.push(Entry.create(dir: 'Down', answer: 'LET', number: 3, clue: 'Do-over during Wimbledon', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('LET'))]))
clues_19rickroll.push(Entry.create(dir: 'Down', answer: 'YOU', number: 4, clue: 'Golden rule ender', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('YOU'))]))
clues_19rickroll.push(Entry.create(dir: 'Down', answer: 'DOWN', number: 5, clue: 'On toast, in diner slang', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('DOWN'))]))
explanation = 'This was a <a href="http://en.wikipedia.org/wiki/Rickrolling" target="_blank">rickroll</a>, which was big at the time, and not actually a puzzle. The grid you see was created by BEQ for display in the embedded applet preview pane, with only the eight clues below visible. The answers, which do not actually fit in the grid, are the first ten words of the song.'
Puzzle.create(title: 'THIS IS HOW WE ROLL', subtitle: 'Face the music', grid: '       ..      |       .       |       .       |               |      .   .    |...     .      |.    .     .   |               |   .     .    .|      .     ...|    .   .      |               |       .       |       .       |      ..       ', :constructors => Constructor.where(:name => 'Brendan Emmett Quigley'), :sources => Source.where(:name => 'Brendan Emmett Quigley'), publication_date: '2009-01-19', entries: clues_19rickroll, puzzle_type: 'prank', explanation: explanation, word_count: -999, block_count: -999, white_square_count: -999, avg_word_length: -999, size: 'N/A')