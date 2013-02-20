\version "2.17.7"

\context Voice = "hautbois"
\relative c'' { 
	 \set Staff.instrumentName = \markup { \column { "Haute-contre" } }
         \set Staff.midiInstrument = "oboe"
         \set Staff.shortInstrumentName = "htb"
 
  \once \override Staff.TimeSignature.style = #'()

  		
  		\time 3/4
  		\clef treble
                \key f \major
        a4 a a | bes bes bes | bes bes bes | a a a | a cis8 d e4 |
% 6      
       d f,8 g a bes | a4 a a | a a a | d8 c d e f d | e4 c c | c c c | 
% 11
	c c c | c c c | bes bes bes | g8 f g a bes g | a4 a a |
%16
	f f8 g a bes | a g a bes a g | f4 g g | g g c | a d4. d8
%21
	b4 c a | e' e e | cis a a | a2. | g4 g g |
%26
	g2. | a4 a a | a8 b cis d e4 | d f,8 g a bes | a4 a a | a a a |
	
}
