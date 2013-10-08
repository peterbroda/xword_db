clues_4g_coverage = Array.new
clues_4g_coverage.push(Entry.create(row: 1, col: 1, dir: 'Across', answer: 'STY', number: 1, clue: 'Messy room', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('STY'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 1, dir: 'Down', answer: 'SIGN', number: 1, clue: 'Gemini, e.g.', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('SIGN'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 2, dir: 'Down', answer: 'TRIO', number: 2, clue: 'Gemini + 1, e.g.', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('TRIO'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 3, dir: 'Down', answer: 'YARD', number: 3, clue: 'Distance for 19-Down', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('YARD'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 5, dir: 'Across', answer: 'DRAYS', number: 4, clue: 'Horse-drawn carts', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('DRAYS'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 5, dir: 'Down', answer: 'DRYHUMP', number: 4, clue: 'Feature of a lap dance, maybe', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('DRYHUMP'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 6, dir: 'Down', answer: 'RAR', number: 5, clue: 'Compressed file type', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('RAR'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 7, dir: 'Down', answer: 'AVER', number: 6, clue: 'Swear', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('AVER'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 8, dir: 'Down', answer: 'YETI', number: 7, clue: 'Giant in the Himalayas', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('YETI'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 9, dir: 'Down', answer: 'SLICER', number: 8, clue: 'Deli counter machine', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('SLICER'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 11, dir: 'Across', answer: 'TPAIN', number: 9, clue: '"I Am ___" (iPhone Auto-Tune app)', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('TPAIN'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 11, dir: 'Down', answer: 'THEHOTS', number: 9, clue: 'Feelings (for)', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('THEHOTS'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 12, dir: 'Down', answer: 'PAM', number: 10, clue: 'Aerosol oil brand', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('PAM'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 13, dir: 'Down', answer: 'ANEW', number: 11, clue: 'From the top', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('ANEW'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 14, dir: 'Down', answer: 'IONA', number: 12, clue: 'Tourist destination in the Inner Hebrides', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('IONA'))]))
clues_4g_coverage.push(Entry.create(row: 1, col: 15, dir: 'Down', answer: 'NITS', number: 13, clue: 'They\'re picked by the picky', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('NITS'))]))
clues_4g_coverage.push(Entry.create(row: 2, col: 1, dir: 'Across', answer: 'IRA', number: 14, clue: '"Potato, po-tah-to, tomato, to-mah-to" writer Gershwin', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('IRA'))]))
clues_4g_coverage.push(Entry.create(row: 2, col: 5, dir: 'Across', answer: 'RAVEL', number: 15, clue: 'Contemporary of Debussy', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('RAVEL'))]))
clues_4g_coverage.push(Entry.create(row: 2, col: 11, dir: 'Across', answer: 'HANOI', number: 16, clue: 'Capital of Vietnam', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('HANOI'))]))
clues_4g_coverage.push(Entry.create(row: 3, col: 1, dir: 'Across', answer: 'GIRLYRETIREMENT', number: 17, entry_type: 'theme', clue: 'Reason for spending pension money on Cosmopolitans and Louis Vuitton accessories?', :solvables => [Solvable.create(word_type: 'answer|silly', word: Word.find_or_create_by_grid_text('GIRLYRETIREMENT')), Solvable.create(word_type: 'base_phrase', word: Word.find_or_create_by_grid_text('EARLYRETIREMENT'))]))
clues_4g_coverage.push(Entry.create(row: 3, col: 4, dir: 'Down', answer: 'LUCY', number: 18, clue: 'Beatles title girl', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('LUCY'))]))
clues_4g_coverage.push(Entry.create(row: 3, col: 10, dir: 'Down', answer: 'ROMO', number: 19, clue: 'Cowboys quarterback Tony', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('ROMO'))]))
clues_4g_coverage.push(Entry.create(row: 4, col: 1, dir: 'Across', answer: 'NODUH', number: 20, clue: '"Ya think?!"', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('NODUH'))]))
clues_4g_coverage.push(Entry.create(row: 4, col: 7, dir: 'Across', answer: 'RICOH', number: 21, clue: 'Xerox competitor', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('RICOH'))]))
clues_4g_coverage.push(Entry.create(row: 4, col: 13, dir: 'Across', answer: 'WAS', number: 22, clue: 'Is last week?', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('WAS'))]))
clues_4g_coverage.push(Entry.create(row: 5, col: 4, dir: 'Across', answer: 'CUP', number: 23, clue: 'One in a porno with two girls', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('CUP'))]))
clues_4g_coverage.push(Entry.create(row: 5, col: 6, dir: 'Down', answer: 'PEES', number: 24, clue: 'Takes part in some watersports, maybe', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('PEES'))]))
clues_4g_coverage.push(Entry.create(row: 5, col: 9, dir: 'Across', answer: 'EMOS', number: 25, clue: 'Swoosh and guyliner sporters', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('EMOS'))]))
clues_4g_coverage.push(Entry.create(row: 5, col: 12, dir: 'Down', answer: 'SHAG', number: 26, clue: 'Powers\' ball?', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('SHAG'))]))
clues_4g_coverage.push(Entry.create(row: 6, col: 2, dir: 'Across', answer: 'GAYMENBROTHER', number: 27, entry_type: 'theme', clue: 'Response from one monk to another asking what "Queer as Folk" is about?', :solvables => [Solvable.create(word_type: 'answer|silly', word: Word.find_or_create_by_grid_text('GAYMENBROTHER')), Solvable.create(word_type: 'base_phrase', word: Word.find_or_create_by_grid_text('AMENBROTHER'))]))
clues_4g_coverage.push(Entry.create(row: 6, col: 2, dir: 'Down', answer: 'GOTAB', number: 27, clue: 'Did more than well enough to pass', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('GOTAB'))]))
clues_4g_coverage.push(Entry.create(row: 6, col: 3, dir: 'Down', answer: 'ALIBI', number: 28, clue: '"I was at home writing a crossword all night, I swear", e.g.', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('ALIBI'))]))
clues_4g_coverage.push(Entry.create(row: 6, col: 7, dir: 'Down', answer: 'NAH', number: 29, clue: '"I\'m good"', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('NAH'))]))
clues_4g_coverage.push(Entry.create(row: 6, col: 8, dir: 'Down', answer: 'BRAVO', number: 30, clue: '"You\'re good!"', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('BRAVO'))]))
clues_4g_coverage.push(Entry.create(row: 6, col: 13, dir: 'Down', answer: 'EXALT', number: 31, clue: 'Praise', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('EXALT'))]))
clues_4g_coverage.push(Entry.create(row: 6, col: 14, dir: 'Down', answer: 'ROMPS', number: 32, clue: 'Frolics', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('ROMPS'))]))
clues_4g_coverage.push(Entry.create(row: 7, col: 1, dir: 'Across', answer: 'LOL', number: 33, clue: 'Letters in a Facebook status with a link to a Louis C.K. video, say', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('LOL'))]))
clues_4g_coverage.push(Entry.create(row: 7, col: 1, dir: 'Down', answer: 'LOB', number: 33, clue: 'It might yield a smashing return?', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('LOB'))]))
clues_4g_coverage.push(Entry.create(row: 7, col: 5, dir: 'Across', answer: 'PEAR', number: 34, clue: 'Peculiarly shaped fruit', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('PEAR'))]))
clues_4g_coverage.push(Entry.create(row: 7, col: 11, dir: 'Across', answer: 'SAXON', number: 35, clue: 'The S in WASP', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('SAXON'))]))
clues_4g_coverage.push(Entry.create(row: 7, col: 15, dir: 'Down', answer: 'NES', number: 36, clue: 'Third generation console, familiarly', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('NES'))]))
clues_4g_coverage.push(Entry.create(row: 8, col: 1, dir: 'Across', answer: 'OTIS', number: 37, clue: 'R&B singer Redding', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('OTIS'))]))
clues_4g_coverage.push(Entry.create(row: 8, col: 4, dir: 'Down', answer: 'SEGA', number: 38, clue: 'Fourth generation console, familiarly', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('SEGA'))]))
clues_4g_coverage.push(Entry.create(row: 8, col: 6, dir: 'Across', answer: 'SHAME', number: 39, clue: 'Feeling when your 10GB porn collection is found', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('SHAME'))]))
clues_4g_coverage.push(Entry.create(row: 8, col: 9, dir: 'Down', answer: 'MER', number: 40, clue: '53-Across to 15-Across', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('MER'))]))
clues_4g_coverage.push(Entry.create(row: 8, col: 10, dir: 'Down', answer: 'ERRS', number: 41, clue: 'Shits the bed, as they say', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('ERRS'))]))
clues_4g_coverage.push(Entry.create(row: 8, col: 12, dir: 'Across', answer: 'GAME', number: 42, clue: '"Go" or "Boggle", e.g.', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('GAME'))]))
clues_4g_coverage.push(Entry.create(row: 9, col: 1, dir: 'Across', answer: 'BABES', number: 43, clue: 'Hotties', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('BABES'))]))
clues_4g_coverage.push(Entry.create(row: 9, col: 5, dir: 'Down', answer: 'SOTOSAY', number: 44, clue: '"In the parlance of our times"', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('SOTOSAY'))]))
clues_4g_coverage.push(Entry.create(row: 9, col: 8, dir: 'Across', answer: 'VERB', number: 45, clue: '"Go" or "boggle", e.g.', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('VERB'))]))
clues_4g_coverage.push(Entry.create(row: 9, col: 11, dir: 'Down', answer: 'BEERGUT', number: 46, clue: 'Thing often found under a mustard-stained undershirt', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('BEERGUT'))]))
clues_4g_coverage.push(Entry.create(row: 9, col: 13, dir: 'Across', answer: 'LPS', number: 47, clue: 'DJ\'s crateful', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('LPS'))]))
clues_4g_coverage.push(Entry.create(row: 10, col: 2, dir: 'Across', answer: 'BIGOTTORRENTS', number: 48, entry_type: 'theme', clue: 'Downloadable audio files of Westboro Baptist sermons?', :solvables => [Solvable.create(word_type: 'answer|silly', word: Word.find_or_create_by_grid_text('BIGOTTORRENTS')), Solvable.create(word_type: 'base_phrase', word: Word.find_or_create_by_grid_text('BITTORRENTS'))]))
clues_4g_coverage.push(Entry.create(row: 10, col: 6, dir: 'Down', answer: 'TRUE', number: 49, clue: 'Half of a type of easy quiz', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('TRUE'))]))
clues_4g_coverage.push(Entry.create(row: 10, col: 7, dir: 'Down', answer: 'TAICHI', number: 50, clue: 'Badass thing to do on a mountain top at sunrise, if movies have taught me anything', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('TAICHI'))]))
clues_4g_coverage.push(Entry.create(row: 10, col: 12, dir: 'Down', answer: 'NAIR', number: 51, clue: 'Product used on a landing strip, maybe?', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('NAIR'))]))
clues_4g_coverage.push(Entry.create(row: 11, col: 4, dir: 'Across', answer: 'ATRA', number: 52, clue: 'Gillette razor which was the first to have a pivoting head', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('ATRA'))]))
clues_4g_coverage.push(Entry.create(row: 11, col: 10, dir: 'Across', answer: 'SEA', number: 53, clue: 'Sixth of six three-letter words in Hemingway title', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('SEA'))]))
clues_4g_coverage.push(Entry.create(row: 12, col: 1, dir: 'Across', answer: 'ADE', number: 54, clue: 'Gator tail?', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('ADE'))]))
clues_4g_coverage.push(Entry.create(row: 12, col: 1, dir: 'Down', answer: 'AFAR', number: 54, clue: 'Hardly within spitting distance', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('AFAR'))]))
clues_4g_coverage.push(Entry.create(row: 12, col: 2, dir: 'Down', answer: 'DIKE', number: 55, clue: 'Levee', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('DIKE'))]))
clues_4g_coverage.push(Entry.create(row: 12, col: 3, dir: 'Down', answer: 'EVIL', number: 56, clue: 'Like many a twin in horror fiction', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('EVIL'))]))
clues_4g_coverage.push(Entry.create(row: 12, col: 5, dir: 'Across', answer: 'OUIJA', number: 57, clue: 'Board whose name is simply two foreign words for "yes" put together', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('OUIJA'))]))
clues_4g_coverage.push(Entry.create(row: 12, col: 8, dir: 'Down', answer: 'JOIN', number: 58, clue: 'Take part (in)', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('JOIN'))]))
clues_4g_coverage.push(Entry.create(row: 12, col: 9, dir: 'Down', answer: 'ANNE', number: 59, clue: 'Murray who was called a bitch in the song "Blame Canada"', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('ANNE'))]))
clues_4g_coverage.push(Entry.create(row: 12, col: 11, dir: 'Across', answer: 'RISKS', number: 60, clue: 'They\'re weighed before making a decision', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('RISKS'))]))
clues_4g_coverage.push(Entry.create(row: 12, col: 13, dir: 'Down', answer: 'SURI', number: 61, clue: 'Celebrity toddler who will likely be raised a Scientologist', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('SURI'))]))
clues_4g_coverage.push(Entry.create(row: 12, col: 14, dir: 'Down', answer: 'KEYS', number: 62, clue: 'Tumbler lifters', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('KEYS'))]))
clues_4g_coverage.push(Entry.create(row: 12, col: 15, dir: 'Down', answer: 'SLUT', number: 63, clue: '"The Office ___" (Cheri Oteri character on "SNL")', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('SLUT'))]))
clues_4g_coverage.push(Entry.create(row: 13, col: 1, dir: 'Across', answer: 'FIVESECONDGRUEL', number: 64, entry_type: 'theme', clue: 'Instant snack for Oliver Twist?', :solvables => [Solvable.create(word_type: 'answer|silly', word: Word.find_or_create_by_grid_text('FIVESECONDGRUEL')), Solvable.create(word_type: 'base_phrase', word: Word.find_or_create_by_grid_text('FIVESECONDRULE'))]))
clues_4g_coverage.push(Entry.create(row: 13, col: 4, dir: 'Down', answer: 'ERA', number: 65, clue: 'Each lecture in a history course might cover one', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('ERA'))]))
clues_4g_coverage.push(Entry.create(row: 13, col: 10, dir: 'Down', answer: 'DDR', number: 66, clue: 'Arcade game that doesn\'t require the use of your hands, for short', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('DDR'))]))
clues_4g_coverage.push(Entry.create(row: 14, col: 1, dir: 'Across', answer: 'AKIRA', number: 67, clue: 'Animated cyberpunk classic', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('AKIRA'))]))
clues_4g_coverage.push(Entry.create(row: 14, col: 7, dir: 'Across', answer: 'HINDU', number: 68, clue: 'Apu, e.g.', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('HINDU'))]))
clues_4g_coverage.push(Entry.create(row: 14, col: 13, dir: 'Across', answer: 'RYU', number: 69, clue: 'Character that has appeared in every "Street Fighter" installment', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('RYU'))]))
clues_4g_coverage.push(Entry.create(row: 15, col: 1, dir: 'Across', answer: 'RELAY', number: 70, clue: 'Many-legged thing in a tournament', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('RELAY'))]))
clues_4g_coverage.push(Entry.create(row: 15, col: 7, dir: 'Across', answer: 'INERT', number: 71, clue: 'Like a layabout', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('INERT'))]))
clues_4g_coverage.push(Entry.create(row: 15, col: 13, dir: 'Across', answer: 'IST', number: 72, clue: 'Ass-end for sex?', :solvables => [Solvable.create(word_type: 'answer', word: Word.find_or_create_by_grid_text('IST'))]))
Puzzle.create(title: '4G Coverage', grid: 'STY.DRAYS.TPAIN|IRA.RAVEL.HANOI|GIRLYRETIREMENT|NODUH.RICOH.WAS|...CUP..EMOS...|.GAYMENBROTHER.|LOL.PEAR..SAXON|OTIS.SHAME.GAME|BABES..VERB.LPS|.BIGOTTORRENTS.|...ATRA..SEA...|ADE.OUIJA.RISKS|FIVESECONDGRUEL|AKIRA.HINDU.RYU|RELAY.INERT.IST', :constructors => Constructor.where(:name => 'Peter Broda'), :sources => Source.where(:name => 'The Cross Nerd'), publication_date: '2012-02-14', entries: clues_4g_coverage, puzzle_type: 'themed', size: '15x15')
