\version "2.17.7"

\context Voice = "cello"


\relative c' { 
	\set Staff.instrumentName = \markup { \column { "Cello" } }
	\set Staff.midiInstrument = "cello"
	\set Staff.shortInstrumentName =#"Cello"
	
  		\time 3/4
  		\clef bass 
                \key c \major
                
                \set Score.currentBarNumber = #102
                \partial 4
      
        c4 | c' c c, | g' g g | c, c c | g g c | c' c c, | g' g g 
%108
	c g4. g8 | c4 c c | c' c f | c c c,8 d | e4  e c | g' g g | a b g |
%115
	c c c,8 b | a4 d d, | g g c | c' c c, | g' g g | c, c c |
               
      
                
} 
       
              
