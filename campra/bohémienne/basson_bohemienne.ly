\version "2.17.6"

\context Voice = "basson"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Quinte" } }
         \set Staff.midiInstrument = "bassoon"
         \set Staff.shortInstrumentName = "Bsn"
 
  \once \override Staff.TimeSignature.style = #'()

  		
  	\time 2/2
        \clef "bass"
        \key a \minor

        r2 r4 c | c4. b8 a4 a | c4. b8 a4 a | c a b b | c2. c4 | 
        c4. b8 a4 a |  c4. b8 a4 a | c c d b | c2. c4
%10
	c2. a4 | c c c e | c a a c |  c c c e | 
	c a a a | d e g d | e2. c4 | d2. c4 | d2. c4
%19
	d a d d | c2. e4 | e a, e' b | c e b a | b a e' b |
	c e gis,2 | e b'4 a | b2 a | a4 a e' b | c2. c4

}
