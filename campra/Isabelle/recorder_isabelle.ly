\version "2.17.7"

 \context Voice = "recorder"


\relative c'' { 
	\set Staff.instrumentName = "Dessus"
	%\markup { \column  { "Dessus" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"Dess."

	
  		\time 12/8
  		\clef treble 
                \key c \major
                	
                \set Score.currentBarNumber = #615

	r4 r8 r4 g8 a4 g8 a4 b8 | c4 g8 g4 g'8 f4-+ e8 f g f | 
	e4-+ c8 c4 g'8 a f g a bes a
%618
	g e f g a g f d e f g f | e-+ d c g4 r8 a4 r8 b4  r8|
	c8 d c d e d e c e f d f |
%621
	g4 r8 a4 r8 b4 c8 e,-+ d c | c4. r4 r8 r4 r8 r4 r8 \bar "||" 
	r4 r8 r4 g'8 f4-+ e8 f g f |
%624
	e4-+ c8 c4 r8 r4 r8 r4 r8 | R1.*2 |
%627
	r8 r d g4 a8 b a g fis4 g8 | g4.  r4 r8   r4 r8   r4 g8 |
	e-+ d c d4 r8 r4 r8 r4 r8 |
%630
	r8 r g f4 e8 d4 c8 b4-+ a8 | g4. r4 r8 r4 r8 r4 r8 |
	r8 r c c d c bes4. bes8 c bes 
%633
	a4. a8 bes a g f e d4-+ c8 | c4 r8 g'4 r8 c4 r8 d4 r8 | 
	e c e f d f g4 c,8 c4 b8-+
%636
	c4. r8 e f g4 c,8 c4 b8 | c8_\markup \italic "fort" d c d e d e c e f d f |
	g4 r8 a4 r8 b4 c8 e,-+ d c |
%639
	c4. \fermata \bar "||" r4 r8 r4 r8 r4 r8 | r c d e f e d b c d e d |
%641
	c b a c4_\markup \italic "doux" r8 b4 r8 e,4 r8 |
	a a b c d c b c b a b a |
%643
	g a g f g f e4 a8 a4 gis8 | a4 e8 a4 b8 c4 b8 c4 d8 | 
	e a, b c d c b gis a b c b |
%646
	a4 r8 r4 r8 r4 r8 r4 r8 | r a b c d c b g a b c b |
	a4. a8 b a gis e a a4 gis8
%649
	a8_\markup \italic "fort"b a b c b c a c d b d | 
	e4 r8 fis4 r8 gis e a a4 gis8  | a4. r4 r8 r4 r8 r4 r8 \bar "||"
	
	
	
}
