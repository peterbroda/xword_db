clues_blah = Array.new
Puzzle.create(title: 'Default title', grid: '', :constructors => Constructor.where(:name => 'Ben Tausig'), :sources => Source.where(:name => 'Ink Well'), publication_date: '/home/peter/xpf_files/ink_well/blah.puz.xpf', entries: clues_blah)
