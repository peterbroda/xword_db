spec_feat = '1_1:N3|1_2:N9|1_3:N16|1_4:N16|1_5:N2|1_7:N21|1_8:N9|1_9:N25|1_10:N9|1_11:N8|1_12:N15|1_13:N24|2_1:N9|2_3:N9|2_5:N23|2_7:N2|2_9:N13|2_11:N2|2_13:N21|3_1:N16|3_2:N9|3_3:N15|3_4:N15|3_5:N9|3_6:N1|3_7:N23|3_9:N8|3_10:N2|3_11:N23|3_12:N10|3_13:N1|4_1:N16|4_3:N19|4_5:N4|4_7:N9|4_9:N16|4_11:N20|4_13:N17|5_1:N2|5_2:N12|5_3:N11|5_4:N7|5_5:N2|5_6:N18|5_7:N12|5_9:N24|5_10:N23|5_11:N25|5_12:N13|5_13:N24|6_1:N16|6_7:N6|6_9:N18|6_11:N2|7_1:N16|7_2:N2|7_3:N26|7_4:N12|7_5:N9|7_6:N22|7_8:N3|7_9:N1|7_10:N7|7_11:N7|7_12:N1|7_13:N7|8_3:N2|8_5:N19|8_7:N25|8_13:N9|9_1:N20|9_2:N24|9_3:N15|9_4:N21|9_5:N24|9_7:N12|9_8:N18|9_9:N24|9_10:N17|9_11:N17|9_12:N24|9_13:N18|10_1:N1|10_3:N2|10_5:N8|10_7:N13|10_9:N14|10_11:N13|10_13:N24|11_1:N22|11_2:N2|11_3:N26|11_4:N26|11_5:N24|11_7:N19|11_8:N1|11_9:N13|11_10:N15|11_11:N20|11_12:N25|11_13:N12|12_1:N4|12_3:N24|12_5:N18|12_7:N19|12_9:N20|12_11:N16|12_13:N2|13_1:N2|13_2:N15|13_3:N15|13_4:N24|13_5:N22|13_6:N18|13_7:N1|13_9:N24|13_10:N5|13_11:N13|13_12:N9|13_13:N3'
instructions = 'This week\'s contest answer is a six-letter word comprised of the letters represented by 3, 9, 11, 18 ,19, and 24 in this week\'s Kaidoku.'
explanation = '<MA>CIPHER</MA><TEXT>The letters indicated in the instructions anagram to the answer.</TEXT>'
Puzzle.create(title: 'MGWCC #11 - "Watashi-wa Kaidokusha"', grid: 'PIZZA.VISIBLE|I.I.N.A.U.A.V|ZILLION.BANJO|Z.C.M.I.Z.D.K|ATHWART.ENSUE|Z.....Y.R.A..|ZAFTIG.POWWOW|..A.C.S.....I|DELVE.TREKKER|O.A.B.U.X.U.E|GAFFE.COULDST|M.E.R.C.D.Z.A|ALLEGRO.EQUIP', :constructors => Constructor.where(:name => 'Matt Gaffney'), :sources => Source.where(:name => 'Matt Gaffney\'s Weekly Crossword Contest'), publication_date: '2008/8/15', instructions: instructions, explanation: explanation, special_features: spec_feat)