neville_constructors = [Constructor.find_by_name('Neville Fogarty'), Constructor.find_by_name('Andy Kravis')]
crossnerd_constructors = [Constructor.find_by_name('Erik Agard'), Constructor.find_by_name('Peter Broda'), Constructor.find_by_name('Steve Riley'), Constructor.find_by_name('Drew Lawn')]
cc_constructors = [
	Constructor.find_by_name('Caleb Madison'),
	Constructor.find_by_name('Milo Beckman'),
	Constructor.find_by_name('Steve Riley'),
	Constructor.find_by_name('Peter Broda')
]
av_constructors = [
	Constructor.find_by_name('Ben Tausig'),
	Constructor.find_by_name('Matt Jones'),
	Constructor.find_by_name('Matt Gaffney'),
	Constructor.find_by_name('Tyler Hinman'),
	Constructor.find_by_name('Caleb Madison'),
	Constructor.find_by_name('Aimee Lucido'),
	Constructor.find_by_name('Zoe Wheeler'),
	Constructor.find_by_name('Deb Amlen'),
	Constructor.find_by_name('Brendan Emmett Quigley'),
	Constructor.find_by_name('Byron Walden'),
	Constructor.find_by_name('Francis Heaney')
]

Source.create(name: 'Ink Well', url: 'https://groups.google.com/group/inkwell', description: 'Ben Tausigs InkWell puzzles', :constructors => Constructor.where(:name => 'Ben Tausig'))
Source.create(name: 'Anoa Place', url: 'http://terpconnect.umd.edu/~eagard/home.html', description: '14-puzzle miniseries by Erik Agard', :constructors => Constructor.where(:name => 'Erik Agard'))
Source.create(name: 'Glutton For Pun', url: 'http://gluttonforpun.blogspot.com', description: 'Crossword puzzles that make you laugh. Updated every Wednesday', :constructors => Constructor.where(:name => 'Erik Agard'))
Source.create(name: 'The Cross Nerd', url: 'http://thecrossnerd.blogspot.com', description: 'A sassy and irreverent take on crossword puzzles. Reviews, musings, epiphanies, and a new free puzzle every Tuesday morning.', constructors: crossnerd_constructors)
Source.create(name: 'The Onion AV Club', url: '#', description: 'now-defunct original AV club', constructors: av_constructors)
Source.create(name: 'American Values Club', url: 'http://www.avxword.com/', description: 'The American Values Club xword is a reincarnation of the beloved but now dead Onion A.V. Club xword feature, edited by Ben Tausig.', constructors: av_constructors)
Source.create(name: 'Campus Crosswords', url: '#', description: 'Campus Crosswords description', constructors: cc_constructors)
Source.create(name: 'Matt Gaffney\'s Weekly Crossword Contest', url: 'http://xwordcontest.com/', description: 'Meta puzzle every Friday', :constructors => Constructor.where(:name => 'Matt Gaffney'))
Source.create(name: 'The Wrath of Klahn', url: '', description: 'Puzzles from the World\'s Toughest Clue Writer', :constructors => Constructor.where(:name => 'Bob Klahn'))
Source.create(name: 'Triple-Stack Crosswords', url: '', description: 'Triple-stacks galore', :constructors => Constructor.where(:name => 'Martin Ashwood-Smith'))
Source.create(name: 'The Autofill Project', url: 'http://autofillproject.wordpress.com/', description: 'A journal of crossword database management', :constructors => Constructor.where(:name => 'Todd McClary'))
Source.create(name: 'Andy Kravis, Cruciverbalist at Law', url: 'http://cruciverbalistatlaw.blogspot.ca/', description: 'New puzzle every weekend', :constructors => Constructor.where(:name => 'Andy Kravis'))
Source.create(name: 'The Chronicle of Higher Education', url: 'http://chronicle.com/section/Crosswords/43/', description: 'Puzzles every Friday (every second Friday over the summer')
Source.create(name: 'Frank Longo Vowelless Crosswords', url: '#', description: 'Vowelless Crosswords', :constructors => Constructor.where(:name => 'Frank Longo'))
Source.create(name: 'Triple Play Puzzles', url: 'http://www.tripleplaypuzzles.com', description: 'Trip Payne\'s site', :constructors => Constructor.where(:name => 'Trip Payne'))
Source.create(name: 'Neville Fogarty', url: 'http://nevillefogarty.wordpress.com', description: 'Puzzles by Neville. Updated every Friday', constructors: neville_constructors)
Source.create(name: '20 Under 30', url: 'http://www.20under30.com')
