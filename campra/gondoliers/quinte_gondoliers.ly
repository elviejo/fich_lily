\version "2.17.7"

\context Voice = "quinte"


\relative c' { 
	\set Staff.instrumentName = \markup { \column { "Quinte" } }
	\set Staff.midiInstrument = "bassoon"
	\set Staff.shortInstrumentName =#"Bsn"
	
  		\time 3/4
  		\clef bass 
                \key c \major
                
                \set Score.currentBarNumber = #102
                \partial 4
                
               
       g4 | c c e | d8 e d c b4 | c4 g g  | g g g | c c e | d8 e d c b4 
%108
	c d g, | g g g | c c c | c c c8 b | c4 c c | d d d | c d d |
%115
	c c c | c8 b a b c a | b4 b g | c c e | d8 e d c b4 | c g g
%121
	g g g | c c e | d8 e d c b4 | c d g, | g g c | d d bes | c c a |
%128
	d c4. c8 | c4 a bes | a d d | d c c | c g4. g8 | g4 g g | c c e
%135
	d8 e d c b4 | c g g | g g g | c c e | d8 e d c b4 | c d g, | g g 
	

                
} 
       
              
