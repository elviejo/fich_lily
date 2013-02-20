\version "2.17.7"

 \context Voice = "basson"


\relative c' { 
	\set Staff.instrumentName = "Quinte"
	%\markup { \column \magnify #1.5 { "Taille" } }
	\set Staff.midiInstrument = "bassoon"
	\set Staff.shortInstrumentName =#"Bsn"

	
  		\time 2/2
  		\clef alto 
                \key c \major
                	
                \partial 4
                \set Score.currentBarNumber = #346
                
	c4 | d a b d | g,2 g4 g | f2 f4 c' | d2. c4 | d a b d 	
%351
	g,2 g4 a | a2 a4 g | g2. c4 b a gis a | e'2 e4 e | f2 f4 d |
%357
	e2. e4 | e e a g | f2 d4 d | e2 e4 e | a,2 e'4 e |d2 d4 d |
%363
	d2. g4 | e e e e | f2 c4 c | c2 c4 b | c2 r4 g' | e e d d
%369
	g, c a a | b b b b | e e, e a | g g g g'8 f | e f e d e4 e |
%374
	a, a8 a d4 a | a c c8 b a g | c4 c8 c c4 c | b b8 b b4 g | g b8 b b4 b |
%379
	a d8 d d4 d | c c8 c c4 a | e' b8 b b4 b | a a8 a a4 a | e' e8 e e4 c 
%384
	c8 c d e f4 f | e8 d c b a4 e | e e8 e e4 e |
	b' e8 e e4 e |e e8 e e4 e | fis d8 d d4 d |
%390
	d4 d8 d d4 d | d4 b d b | c c8 c c4 c | 
	c c d e | e2 b4 b | a a a8 g a b
%396
	c4 a8 a a4 a | a a8 a a4 a | bes8 a bes c d4 e | 
	e a,8 a a4 a | a a8 a a4 a |
%401
	a8 g a bes c bes a c | bes a bes c d4 d |d d8 d d4 a |
	a4. a'8 g f e d | cis4 e8 e e4 e |
%406
	d d8 d d4 d |d d8 d d4 d |d d8 d d4 d | e c e c | e c e c | c g c d |
%412
	d2 a4 a | b g8 g g4 g | g8 fis g a b4 b | e e, e c' | g g g g'8 f |
%417
	e f e d e4 e | a, a8 a d4 a | a c c8 b a g | c4 c8 c c4 c | b b8 b b4 g |
%422
	g g8 g d'4 d | c c8 c c4 c | e c e e | d b d d | 
	e e8 e e4 c | c c8 c c4 c |
%428
	c4 c d a | d2 d4 d | d1 R1 | c4 c d g, | g2 g4 g | g1
	
		






}
	
