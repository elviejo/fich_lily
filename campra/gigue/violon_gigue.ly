\version "2.17.6"

\context Voice = "Taille"

\relative c'' { 
	 
	 \set Staff.instrumentName = \markup { \column { "Taille" } }
         \set Staff.midiInstrument = "violin"
         \set Staff.shortInstrumentName = "Vln"

  	\time 6/8
        \clef "treble"
        \key g \major

          	
       r4. d | d e4 a8 | d,4. r | r d | fis8. g16 a8 g8. fis16 e8 |
%6
	a4. r | r fis8. g16 a8  | g8. fis16 e8 fis8. g16 fis8 | 
	e4. fis8. g16 fis8 | d4. cis8. d16 e8 | d4. d
%12
	d fis8. g16 a8 | g4 b8 a4 a8 | fis4. r | r g4 g8 | 
	g8. fis16 e8 b'4 b8 | b4. r
%18
	r gis8. fis16 gis8 | a4 e8 fis8. g16 a8 | d,4. d4 d8 | 
	d4 a8 b8. c16 d8 | d4. r |
%22
	r4. g4 g8 | g4. e4 a8 | a8. g16 fis8 a4 a8 |
	g8. fis16 g8 fis8. g16 a8 | g4. r
	
	
}

