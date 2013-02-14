\version "2.17.7"

\context Voice = "cello"


\relative c { 
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
	c, g4. g8 | c4 c c | c' c f, | c' c c,8 d | e4  e c | g' g g | a b g |
%115
	c c c,8 b | a4 d d, | g g c | c' c c, | g' g g | c, c c |
%121
	 g g c | c' c c, | g' g g | c, g4. g8 | c4 c c' | b bes bes | a a a |
%128
	g c c, | f f d8 e | f4 f f | e e e | f g g, | c c c | c' c c, |
%135
	g' g g | c, c c | g g c | c' c c, | g' g g | c, g4. g8 | c4 c 
      
                
} 
       
              
