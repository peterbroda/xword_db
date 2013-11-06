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

Source.create(name: 'Ink Well', display_name: 'Ink Well', url: 'https://groups.google.com/group/inkwell', description: 'Ben Tausigs InkWell puzzles', :constructors => Constructor.where(:name => 'Ben Tausig'), editor: 'Ben Tausig')
Source.create(name: 'Anoa Place (Where We Can Go)', display_name: 'Anoa Place',  url: 'http://terpconnect.umd.edu/~eagard/home.html', description: '14-puzzle miniseries by Erik Agard', :constructors => Constructor.where(:name => 'Erik Agard'), editor: 'Erik Agard')
Source.create(name: 'Glutton For Pun', display_name: 'Glutton For Pun', url: 'http://gluttonforpun.blogspot.com', description: 'Crossword puzzles that make you laugh. Updated every Wednesday', :constructors => Constructor.where(:name => 'Erik Agard'), editor: 'Erik Agard')
Source.create(name: 'The Cross Nerd', display_name: 'Cross Nerd', url: 'http://thecrossnerd.blogspot.com', description: 'A sassy and irreverent take on crossword puzzles. Reviews, musings, epiphanies, and a new free puzzle every Tuesday morning.', constructors: crossnerd_constructors, editor: 'Peter Broda')
Source.create(name: 'The Onion AV Club', display_name: 'Onion AV Club', url: '#', description: 'now-defunct original AV club', constructors: av_constructors, editor: 'Ben Tausig')
Source.create(name: 'American Values Club', url: 'http://www.avxword.com', description: 'The American Values Club xword is a reincarnation of the beloved but now dead Onion A.V. Club xword feature, edited by Ben Tausig.', constructors: av_constructors, editor: 'Ben Tausig')
Source.create(name: 'Campus Crosswords', url: '#', description: 'Campus Crosswords description', constructors: cc_constructors, editor: 'Milo Beckman')
Source.create(name: 'Matt Gaffney\'s Weekly Crossword Contest', display_name: 'MGWCC', url: 'http://xwordcontest.com', description: 'Meta contest puzzle every Friday', :constructors => Constructor.where(:name => 'Matt Gaffney'), editor: 'Matt Gaffney')
Source.create(name: 'The Autofill Project', display_name: 'Autofill Project', url: 'http://autofillproject.wordpress.com/', description: 'A journal of crossword database management', :constructors => Constructor.where(:name => 'Todd McClary'), editor: 'Todd McClary')
Source.create(name: 'Andy Kravis, Cruciverbalist at Law', display_name: 'Andy Kravis', url: 'http://cruciverbalistatlaw.blogspot.ca', description: 'New puzzle every weekend', :constructors => Constructor.where(:name => 'Andy Kravis'), editor: 'Andy Kravis')
Source.create(name: 'Neville Fogarty', url: 'http://nevillefogarty.wordpress.com', description: 'Puzzles by Neville. Updated every Friday', constructors: neville_constructors, editor: 'Neville Fogarty')
Source.create(name: '20 Under 30', url: 'http://www.20under30.com', editor: 'Ben Tausig')
beq_desc = 'Professional puzzlemaker Brendan Emmett Quigley has been posting at least two free puzzles every week on his website since late 2008.<br/>Currently, he runs a freestyle puzzle on Monday and a themed puzzle on Thursday, although variety and guest-constructed puzzles are common.'
Source.create(name: 'Brendan Emmett Quigley', display_name: 'BEQ', url: 'http://www.brendanemmettquigley.com', description: beq_desc, editor: 'Brendan Emmett Quigley')
jz_desc = 'Started in 2004, the Jonesin\' syndicated puzzle is the longest-running indie puzzle series that I know of. Written by Matt Jones and edited by Matt Gaffney, the weekly puzzles are generally 15x15 themed, with a freestyle every few months.'
Source.create(name: 'Jonesin', display_name: 'Jonesin\'', url: 'http://www.jonesincrosswords.com', description: jz_desc, editor: 'Matt Gaffney')
#Source.create(name: 'The Chronicle of Higher Education', display_name: 'CHE', url: 'http://chronicle.com/section/Crosswords/43/', description: 'Puzzles every Friday (every second Friday over the summer', editor: 'Jeffrey Harris')
#Source.create(name: 'Frank Longo Vowelless Crosswords', display_name: 'Longo Vwllss', url: '#', description: 'Vowelless Crosswords', :constructors => Constructor.where(:name => 'Frank Longo'))
#Source.create(name: 'The Wrath of Klahn', url: '', description: 'Puzzles from the World\'s Toughest Clue Writer', :constructors => Constructor.where(:name => 'Bob Klahn'))
#Source.create(name: 'Triple-Stack Crosswords', url: '', description: 'Triple-stacks galore', :constructors => Constructor.where(:name => 'Martin Ashwood-Smith'))
#Source.create(name: 'Triple Play Puzzles', url: 'http://www.tripleplaypuzzles.com', description: 'Trip Payne\'s site', :constructors => Constructor.where(:name => 'Trip Payne'))
