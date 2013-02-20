\version "2.17.6"

\context Voice = "recorder"

\relative c'' { 
	 
	 \set Staff.instrumentName = \markup { \column { "Dessus" } }
         \set Staff.midiInstrument = "recorder"
         \set Staff.shortInstrumentName = "Rec"

  \once \override Staff.TimeSignature.style = #'()

  	\time 2/2
        \clef "treble"
        \key a \minor
        
         \repeat volta 2 { 
        r2 r4 a |\bar ".|:" c4.\segno d8 e4 e | c4. d8 e4 e  | c e b e |
%5
	c a a a | c4. d8 e4 e | c4. d8 e4 e | c a b gis | 	
     }
        \alternative {    
        
        	{a2.^\markup \bold \italic "  Fin" a4 }
        	{a2. e'4}
        }     
        a a a gis | a g8 f e4 e | a a a gis |
%12
	a4 g8 f e4 e | f e d g | e-+ c c e | d2. e4 | d2. e4 |
%17
	d c d b | c2. c4 | b c d e | c4-+ b b c | b c d e | 
%22
	c4-+ b e, fis |	gis a b c  | b2-+ a' | e4 d8 c b a b c | 
	a2. a4 \mark \markup {\musicglyph #"scripts.segno"} \bar "||" 


}      
                
