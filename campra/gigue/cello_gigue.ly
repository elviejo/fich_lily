\version "2.17.6"

\context Voice = "cello"

\relative c { 
	 
	 \set Staff.instrumentName = \markup { \column { "Cello" } }
         \set Staff.midiInstrument = "cello"
         \set Staff.shortInstrumentName = "Cello"

  		\time 6/8
  		\clef  bass
                \key g \major
                
	       r4. g'4. | b, a | g r | r g' | fis e | 
%6
	d r | r d' | cis d | a fis8. e16 fis8 | g8. fis16 g8 a4 a,8 | d4. g |
%12
	d d' | g, a | b r | r e, | a b | e, r |
%18
	r4. e | a8. g16 a8 fis8. e16 d8 | g4. g, | fis g | d r | 
%22
	r4. g' | e cis | d4. d'8. cis16 d8 | b8.-+ a16 g8 d4 d,8 | g4. r 	
	 
  }               
