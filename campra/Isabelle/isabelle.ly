\version "2.17.7"

 \context Voice = "isabelle"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column %\magnify #1.5 
	{ "Isabelle" } }
	\set Staff.midiInstrument = "voice oohs"
	\set Staff.shortInstrumentName =#"Isa."

	
  		\time 12/8
  		\clef treble 
                \key c \major
                	
   %             \partial 8*7
               \set Score.currentBarNumber = #615
   	
        R1.*7        
	r4 r8 r4 g8 a4 g8 a4 b8 | c4\segno (g8) g4 r8 r4 r8 r4 r8 |                
%624
	r4 r8 r r g a4 g8 a4 b8 | c4 (g8) g4 g'8 f4 e8 d4 c8 |
	b4-+ a8 b4-+ c8 d c b b-+ a g |
%627
	g4. r4 r8 r4 r8 r4 r8 | r4 r8 r r g' e4.-+ d4 r8 |
	r4 r8 r r g f4 e8 d4-+ c8 |
%630
	d4 g,8 r r g' f4 e8 d4-+ c8 | d4 g,8 c4 d8 e d c b4-+ c8 |
	c4 f8 f4 f8 f e-+ d e4.~
%633
	e8 d-+ c d4.~ d4 a8 b4-+ c8 | c d c d e d e c e f d f (| 
	g4.) r4 r8 r4 e8 e-+ d c |
%636
	c8 e f g4. r8 r e e-+ d c |c4. r4 r8 r4 r8 r4 r8 | 
	R1.
%639
	r8^\markup \bold "fin" c d \bar "||" e f e d b c d e d | 
	c b a r4 r8 r4 r8 r4 r8 
%641
	r8 c d e f e d b c d e d | c b a r f'4 r8 e4 r8 d4 |
%643
	r8 c4 r8 r b e d c c-+ b a | a4 b8 c4 d8 e4.~e4.-+~ |
	e8 c d e f e d b c d e d |
%646
	c a c d b d (e4) c8 c-+ b a | a4 c8 f4. r8 r b,8 e4 e8 | 
	e f e d-+ c d (e4) c8 c-+ b a |
%649
	a4 r8 r4 r8 r4 r8 r4 r8 | R1. | r4 r8 r4 g8 a4 g8 a4 b8 \segno \bar "||"

	}

	
texte_one =	\lyricmode
	 {
	Mi di- ce la spe- ran- za,
	Mi di- ce la spe- ran- za,
	Mi di- ce ch'il tor-  men- to 
	In- con- ten- to si can- - ge- rà
	Mi di- ce mi di-- ce la spe- ran- za,
	Mi di- ce ch'il tor-  men- to 
	In- con- ten- to si can- ge- rà - - - - - - - - - -
	si can- ge- rà - - - - - - - - - - -
	si can- ge- - rà - - -
	si can- ge- - rà
	Tra le spi- ne nas- co- sa
	Si tro- va la ro- sa -
	Tra le spi- ne nas- co- sa
	Si tro- va la ro- sa -
	Fra le pe- ne 
	A- mor tri- - on- fe- - rà, tri- on- fe- rà - - - - - - - - - - - - - - - - -
	tri- on- fe- - rà
	A- mor tri- on- fe- rà - - - - -
	tri- on- fe- - rà
	
	Mi di- ce la spe- 
	 
	 }
               
                
                
             
                
                
                
                
                
                
                

       
              
