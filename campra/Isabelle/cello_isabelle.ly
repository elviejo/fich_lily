\version "2.17.7"

 \context Voice = "cello"


\relative c { 
	\set Staff.instrumentName =  "Cello" 
	\set Staff.midiInstrument = "cello"
	\set Staff.shortInstrumentName =#"cello"

		
		\time 12/8
  		\clef bass
                \key c \major

               \set Score.currentBarNumber = #615
  %             \set fontSize = #-3
               
	R1. | r4 r8 r4 g'8 a4 g8 a4 b8 | c4 c,8 c4 r8 f4. r4 r8 |
%618
	e4. r4 r8 d4. r4 r8 | c4 r8 e c e f d f g e g | a4 r8 b4 r8 c4 r8 d4 r8
	\clef alto
%621
	e c e f d f g4 r8 g, f g | e4. r4 r8 r4 r8 r4 r8 \bar "||"
	r4 r8 r4
	\clef bass 
	g8 a4 g8 a4 b8 |
%624
	c4 c,8 c4 g'8 f4 e8 f g f | e4 c8 c4 e'8 d4 c8 b4 a8 | 
	g4 d8 g4 a8 b a g d4 d8
%627
	g4. r8 r fis g b c d4 d,8 | g4. r8 r g c d c b4 g8 | c b c g4 e8 d4 c8 b4 a8 | 
%630
	g4. r4 r8 r4 r8 r4 r8 | r r g'8 a4 b8 c e,f g4 g,8 |c4 a'8 a bes a g4. g8 a g
%633
	f4. f8 g f e4 f8 g4 g,8 | c4. r4 r8 r4 r8 r4 r8 | c'4 r8 d4 r8 e e, f g4 g,8
%636
	c4. r8 c'd e e, f g4 g,8 | c4 r8 g'4 r8 c4 r8 d4 r8
	\clef alto 
	e c e f d f g4 r8 g, f g 
%639
	|c,4. \fermata \bar "||" 
	\clef bass 
	c'4 r8 b4 r8 e,4 r8 | a a b c d c b gis a b c b |
%641
	a4 r8 r4 r8 r4 r8 r4 r8 | r4 r8 a4 r8 g4 r8 f4 r8 
%643
	e f e d e d c b a e'4 e,8 | a4 r8 r4 r8 r4 e'8 a4 b8 | 
	c4 r8 r4 r8 r4 r8 r4 r8 
%646
	a4 r8 b4 r8 c c, d e4 e,8 | a4. a'8 b a g4. g8 a g |
	f4. f8 g f e c d e4 e,8 |
%649
	a4 r8 e'4 r8 a4 r8 b4 r8 | c a c d b d e c, d e4 e,8 | 
	a4.r4 r8  r4 r8 r4 r8 
	
	
	
	
	
	
}	
