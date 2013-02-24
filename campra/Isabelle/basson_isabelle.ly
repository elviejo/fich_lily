\version "2.17.7"

 \context Voice = "basson"


\relative c' { 
	\set Staff.instrumentName = "Quinte"
	%\markup { \column \magnify #1.5 { "Taille" } }
	\set Staff.midiInstrument = "bassoon"
	\set Staff.shortInstrumentName =#"Bsn"
	
		
  		\time 12/8
  		\clef alto
                \key c \major
                	
                \set Score.currentBarNumber = #615
                
	R1. | r4 r8 r4 d8 c4 d8 c4 b8 | e4 e,8 e4 r8 a4 r8 r4 r8   
%618
	c4. r4 r8 d4. r4 r8 | g,4 r8 c4 r8 a4 r8 d4 r8 | 
	c4 r8 g4 r8 c4 r8 f4 r8
%621
	e4 r8 a4 r8 g4 c,8 g4 g8 | g4.r4 r8  r4 r8 r4 r8  | 
	r4 r8  r4 d'8 c4 d8 c4 b8 |
%624
	e4 e,8 e4 r8 r4 r8 r4 r8 | R1.*2 |
%627
	r4 r8  r r d' d4 c8 a4 d8 | d4.r4 r8  r4 r8 r4 d8 |
	c g c b4 r8 r4 r8 r4 r8 
%630
	R1.*2 | r8 r c c4 a8 bes4. bes4 g8 |
%633
	c4. f,4 f8 c'4 c8 b4-+ g8 | e4.-+ r4 r8 r4 r8 r4 r8 
	e'4 r8 d4 r8 c4 c8 g4 g8
%636
	g4. r8 c g c4 c8 g4 g8 | g4 r8 d'4 r8 c4 r8 f4 r8 |
	e4 r8 a4 r8 g4 c,8 g4 g8
%639
	g4. \fermata \bar "||" r4 r8 r4 r8 r4 r8  |
	r8 e' d c4 c8 d4 e8 d4 b8 |
%641
	c4 r8 r4 r8 r4 r8 r4 r8 | r4 r8 a4 r8 e4 r8 a4 r8 
%%643
	c4 r8 f,4 r8 g4 a8 e4 e8 | e4. r4 r8 r4 e'8 c4 b8 | e4. r4 r8 r4 r8 r4 r8  
%646
	R1. | r4 r8  c4 a8 b4. b4 g8 | a4. a b4 a8 e4 e8 |
%649
	e4 r8 b'4 r8 a4 r8 g4 r8 | c4 r8 b4 r8 e,4 a8 e'4 e8 | 
	e4. r4 r8 r4 r8 r4 r8 
	
	
	
	
	
	
	
	
	
}
