\version "2.17.7"

\context Voice = "cello"

\relative c { 
	 \set Staff.instrumentName = \markup { \column { "Cello" } }
         \set Staff.midiInstrument = "Cello"
          \set Staff.shortInstrumentName = "Cello"

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 3/4
        \clef bass  
        \key f \major
        
        d'4 d d |bes8 a bes c bes a | g4 g g | a8 g a bes a4 | cis,4 a cis |
        
        d8 cis d e f g | a 4 a a, | d d d | d' d d | c8 bes c d c c, | f4 f f, | 
        
        c'8 bes c d c bes | a4 a a | bes8 a bes c d bes | c4 c c, | f f f 
        
        f' f f  | f8 e f g f e | d4  g g, | c8 b c d e c | d c d e fis d |
        
        e4 c d | e e e, | a'8 g a bes a g | fis 2. | g8 f g a g f |
        
        e2. a8 g f e f d | cis4 a cis | d8 cis d e f g | a4 a a, | d d d 
      
} 
