\version "2.17.7"

\context Voice =  "cello"
\relative c { 
	
	 \set Staff.instrumentName = \markup { \column { "Cello" } }
         \set Staff.midiInstrument = "cello"
         \set Staff.shortInstrumentName = "cello"

  
  	\time 2/2
        \clef bass  
        \key bes \major
        
            g'2 g4 g | g, g' g8 a bes c | d4 c bes a | g2 a4 f | bes4. bes8 a4 g |
        
        d c bes a | g2 g'4 g, | f f' es es, |
        d2 d''4 d | d,,2 d''4 d8 c 
        
        bes2 bes4 bes | bes bes, bes8 c d es | 
        f4 f8 es d2 | es4 d c bes | f2 f'4 d
        
        g es f f, | bes2 bes'4 f | bes4. a8 bes4 bes, | 
        es4. d8 es4 c | d d'8 c bes c bes a 
%21
	g4 g, c a | d2 d4 c | bes8 a bes c d4 d, |
	g2 g'4 g8 a | g,1
} 
   
