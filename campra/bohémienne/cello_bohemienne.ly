\version "2.17.6"

\context Voice = "basson"

\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "cello" } }
         \set Staff.midiInstrument = "Cello"
         \set Staff.shortInstrumentName = "Cello"

  \once \override Staff.TimeSignature.style = #'() 

  
  	\time 2/2
        \clef "bass"
        \key a \minor
        
        r2 r4 a | a2. a4 | a2. a4 | a a gis e |
        a2. a,4 | a2. a4 | a2. a4 | a f d e | a2. a'4
%10
	a,2. a'4 | a2. e4 | a2. a,4 | a2. e4 |
	a2. a'4 | b c g g, | c2. c4 | g' a b c | g a b c |
%19
	g a f g | c,2. a4 | e' a gis e | a e e a | e a gis e |
	a e e'2 | e,4 fis gis a | e2 c' | c,4 d e e, | a2. a'4 |

        
  }
