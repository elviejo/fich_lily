\version "2.17.7"

 \context Voice = "hautbois"


\relative c'' { 
	\set Staff.instrumentName = "Haute-contre"
	%\markup { \column \magnify #1.5 { "Haute-contre" } }
	\set Staff.midiInstrument = "oboe"
	\set Staff.shortInstrumentName =#"Htb"
	
		\time 12/8
  		\clef alto 
                \key c \major

               \set Score.currentBarNumber = #615
 %              \set fontSize = #-3
               
	R1. | 
	r4 r8 r4 b8 c4 b8 c4 d8 |  c4 g8 g4 r8 c4 r8 r4 r8  |
%618
	c4. r4 r8 c4. r4 r8 | c4 r8 e,4 r8 a4 r8 g4 r8 | c4 r8 b4 r8 g4 r8 d'4 r8
%621	
	c4 r8 f4 r8 d4 c8 d4 b8 | c4. r4 r8  r4 r8  r4 r8 
	r4 r8 r4 b8 c4 b8 c4 d8 |
%624
	c4 g8 g4 r8  r4 r8 r4 r8 | R1.*2 |
%627	
	r4 r8 r r d'8 d4 e8 d4 d8 | b4. r4 r8   r4 r8 r4 b8 |
	c g a b4 r8 r4 r8  r4 r8 |
%630	
	R1.*2 | r8 r a8_\markup \italic "doux" a4 f8 g4. g4 g8 |
%633
	a4. f4 e8 e d c g4 g8 | g4. r4 r8 r4 r8 r4 r8 |
	c'4 r8 b4 r8 c4 a8 g4 g8 |
%636
	g4. r8 c b c4 a8 g4 g8 | g4 _\markup \italic "fort" r8 b4 r8 g4 r8 d'4 r8 |
	c4 r8 f4 r8 d4 c8 c4 b8 |
%639	
	c4. \fermata \bar "||" r4 r8 r4 r8 r4 r8 
	r8 c b a4 a8 b b a gis4 gis8 | 
%641
	a4 r8 r4 r8 r4 r8 r4 r8 | r4 r8 a4_\markup \italic "doux" f8 g4 e8 f4 d8
%643
	e4 c8 d4 b8 c d e e4 e8 | e4. r4 r8 r4 gis8 a4 gis8 | a4. r4 r8 r4 r8 r4 r8 
%646	
	R1. | r4 r8 a4 f8 g4. g4 e8 | f4. f4 d8 b c a e'4 e8
%649	
	e4 _\markup \italic "fort" r8 gis4 r8 a4 r8 d4 r8 | 
	c4 r8 a4 r8 e'4 f8 e4 b8 | c4. r4 r8 r4 r8 r4 r8 




}	
