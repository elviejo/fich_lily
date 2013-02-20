\version "2.17.7"

\context Voice =  "basson"
\relative c { 
	
	 \set Staff.instrumentName = \markup { \column { "Quinte" } }
         \set Staff.midiInstrument = "bassoon"
         \set Staff.shortInstrumentName = "bsn"

  
  	\time 2/2
        \clef bass  
        \key bes \major
        
         d'2 d4 d | d4. c8 bes! a g4 | d' d d c | bes2 c4 c | d bes c d |
         
         d a bes c | d4. c8 bes a g4 | d' d d g, | 
         d'1 | d
	
        bes2 d4 f | bes, bes bes f8 g | a4 a8 g f4 bes | bes d es f | f c c d |
        
        d c8-+ bes a4.-+ bes8 | bes4. c8 d4 c | bes4. f8 bes4 bes |
        bes c c a | a d, d' d8 c 
         
        bes4 d c e | d2 a4 a | bes g d' d 
        d1 | d

  }
  
