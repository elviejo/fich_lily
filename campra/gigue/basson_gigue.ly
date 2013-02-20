\version "2.17.6"

\context Voice = "basson"

\relative c { 
	 
	 \set Staff.instrumentName = \markup { \column { "Quinte" } }
         \set Staff.midiInstrument = "bassoon"
         \set Staff.shortInstrumentName = "Bsn"

  		\time 6/8
  		\clef  bass
                \key g \major
          	
       r4. b'4. | b8. c16 d8 c8. b16 a8 | b4. r | r d8. c16 b8 | a4. b4 e8 |
%6
	a,4. r | r d | e d | e8. d16 cis8 d4 d8 | d4. a4 a8 | fis4.-+ b
%12
	fis4. d'4 d8 | d8. c16 b8 c4 e8 | b4. r | r b | c b | b r | 
%18
	r e4 e8 | e4. d4 a8 | b4. b8. a16 g8 | a4. g8. a16 b8 | a4. r
%22
	r4. b | b a | a d4 d8 | d8. c16 b8 d4 d8 | d4. r
	
	
	
}

