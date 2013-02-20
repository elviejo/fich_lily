\version "2.17.6"

\context Voice = "recorder"

\relative c'' { 
	 
	 \set Staff.instrumentName = \markup { \column { "Dessus" } }
         \set Staff.midiInstrument = "Recorder"
         \set Staff.shortInstrumentName = "Rec"

  	\time 6/8
        \clef "treble"
        \key g \major
        \repeat volta 2 {        
        
        
        r4. g'8. [fis16 e8] \bar ".|:" | d8. c16 b8 c8. d16 c8 | d8.-+ a16 g8 r4.|
        r b8. a16 g8 | d'8. e16 fis8 g8. a16 g8 |
%6
	fis8. e16 d8 r4. | r a'8. g16 fis8 | e8. fis16 g8 fis8. e16 d8 | 
	cis8. b16 a8 a'8. b16 a8 | a8. g16 fis8 e8.-+ d16 cis8 | 
       
   }
        \alternative {
        		{d4. g8. fis16 e8 }
        		{d4. a'8. g16 fis8 } 
        }	
	b8. a16 b8 e,8. fis16 g8 | dis8. cis16 b8 r4. | r b'8. a16 g8 | 
	b8. a16 g8 fis8. g16 a8 |  gis8. fis16 e8 r4. |
%18
	r4. e8. d16 e8 | cis8. b16 a8 d8. cis16 d8 | 
	b8. a16 g8 d'8. c!16 b8 | a8. b16 c8 b8. a16 g8 | fis8.-+ e16 d8 r4. |
%22
	r d'8. c16 b8 | g'8. fis16 e8 a8. g16 a8 | fis8.-+ e16 d8 a'8. g16 fis8 | 
	g8. a16b8 a8.-+ g16 fis8 | g4. r \bar "|."
} 
