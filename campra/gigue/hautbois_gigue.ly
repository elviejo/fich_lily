\version "2.17.6"

\context Voice = "hautbois"

\relative c'' { 
	 
	 \set Staff.instrumentName = \markup { \column { "Haute-contre" } }
         \set Staff.midiInstrument = "oboe"
         \set Staff.shortInstrumentName = "Htb"

  	\time 6/8
        \clef "treble"
        \key g \major
        \repeat volta 2 {        
        
        
        r4. b8. [a16 g8] \bar ".|:" | g4. g4 fis8 | g4. r | r g | a4 d8 d4 cis8 |
        d4. r | r d | a a | a d4 d8 | b4. a4 a8 |
   }
        \alternative {
        		{a4. b8. a16 g8 }
        		{a4. d4 d8 } 
        }	
	d4. c | b r | r e4 e8 | e4. e4 dis8 | e4. r |
%18
	r4. b4 b8 | a4. a8. g16 fis8 | g4. g | d d d r |
%22
	r b' | e e4 e8 | d4. d8. e16 d8 | d4. d4 d8 | b4.-+ r \bar "|."
}      

