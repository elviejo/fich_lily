\version "2.17.6"

\context Voice = "hautbois"
\relative c'' { 
	 \set Staff.instrumentName = \markup { \column { "Haute-contre" } }
         \set Staff.midiInstrument = "oboe"
         \set Staff.shortInstrumentName = "Htb"

 
  \once \override Staff.TimeSignature.style = #'()

  		
  	\time 2/2
        \clef "treble"
        \key a \minor

        r2 r4 a | a4. b8 c4 c | a4. b8 c4 c | a e e gis
%5
	a4 e2 e4 | a4. b8 c4 c | a4. b8 c4 c | a a f e | e2. a4 | 
%10
	e2. c'4 | c c c b | c c c c | c c c b | 
	c c c c | d c c b | c2. c4 | b2. g4 | b2. g4
%19
	c a a g | g2. a4 | gis4 a b gis | a gis gis a | gis a b gis |
	a gis e2 | e e | gis e | a4 a a gis | a2. a4 


}
