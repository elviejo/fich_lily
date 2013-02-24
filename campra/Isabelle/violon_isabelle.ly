\version "2.17.7"

 \context Voice = "violon"


\relative c' { 
	\set Staff.instrumentName = "Taille"
	%\markup { \column \magnify #1.5 { "Taille" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"Vln"
	
		
  		\time 12/8
  		\clef alto
                \key c \major
                	
                \set Score.currentBarNumber = #615
   %             \set fontSize = #-3
                
	R1. | r4 r8 r4 g'8 c,4 g'8 f4 d8 | g4 e8 e4 r8 f4 r8 r4 r8 |
%618
	g4. r4 r8 a4. r4 r8 | g4 r8 g4 r8 f4 r8 d4 r8 | a'4 r8 g4 r8 g4 r8 a4 r8
%621	
	g4 r8 f4 r8 f4 e8 g4 g8 | e4.-+ r4 r8 r4 r8 r4 r8 \bar "||"
	r4 r8 r4 g8 c,4 g'8 f4 d8 |
%624	
	g4 e8 e4 r8 r4 r8 r4 r8 | R1.*2 |
%627
	r4 r8 r r a g f e a4 a8 | g4. r4 r8 r4 r8 r4 g8 | g4 g8 g4 r8 r4 r8 r4 r8  
%630
	 R1.*2 | r8 r f8 f4 c8 d4. bes4 bes8 |
%633
	c4. a4 f8 g4 a8 g4 g8 | g4. r4 r8  r4 r8 r4 r8 |
	g'4 r8 f4 r8 e4 c8 g'4 g8 |
%636
	e4. r8 e d c4 f8 f4 d8 | e4 r8 g4 r8 g4 r8 a4 r8 |
	g4 r8 f4 r8 f4 e8 g4 g8 |
%639
	e4. \fermata \bar "||" r4 r8 r4 r8 r4 r8 | r a gis a4 a8 d,4 c8 b4 b8 |
%641
	e4 r8 r4 r8 r4 r8 r4 r8 | r4 r8 c4 r8 e4 r8 a,4 r8
%643
	e'4 r8 a,4 d8 g,4 c8 e4 b8 | c4. r4 r8 r4 e8 e4 d8 | 
	c4. r4 r8 r4 r8 r4 r8
%646
	R1. | r4 r8 f4 f8 f4 e8 e4 e8 | e4 c8 d4 a8 e'4 f8 e4 b8 |
%649
	c4 r8 e4 r8 e4 r8 g4 r8 | g4 r8 fis4 r8 e4 c'8 b4-+ b8 | a4. r4 r8 r4 r8 r4 r8 
	
	
}
