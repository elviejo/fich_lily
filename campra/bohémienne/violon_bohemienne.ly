\version "2.17.6"

\context Voice = "violon"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Taille" } }
         \set Staff.midiInstrument = "Violin"
         \set Staff.shortInstrumentName = "Vln"

  \once \override Staff.TimeSignature.style = #'() 

  
  	\time 2/2
        \clef "treble"
        \key a \minor
        
        r2 r4 e | e4. d8 c4 c | e4. d8 c4 c | e e e e |
%5
	e c2 e4 | e4. d8 c4 c | e4. d8 c4 c | e f b, b | a2. e'4
%10
	a,2.  e'4 | e e e e | e e e e | e e e e | 
	e e a a | g g g g | g2. g4 | g2. g4 | g2. g4
%19
	g e f d | e2. e4 |  e2. e4 |e e e e |  e2. e4 |
	e e b2 | b4 a d c | e2 e e4 f e e | e2. e4
        
  }
