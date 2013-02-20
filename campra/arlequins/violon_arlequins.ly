\version "2.17.7"

\context Voice = "violon"

\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Violon" } }
         \set Staff.midiInstrument = "violin"
         \set Staff.shortInstrumentName = "Vln"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 

  
  	\time 3/4
        \clef treble  
        \key f \major
       
      f8 e d4 e4 | f f f  | g8 f g a g f | e4 e e | e a a  
%6
	a4. g8 f4 | e8 d e f g e | f4 f f | a a a | c e,8 f g e | f4 f f 
        
        e8 d e f g e | a4 f f | f f8 e d4 | c c c | c c c 
        
        c c f | f c c | c b8 c d b | c4 c g' | fis4 fis4. fis8
        
        e4 a f | e e e | e cis e | d d d | d d d | 
        
        e e e | e f f | e a a8 g | f e d4 d | a' e8 f g e | f4 f f 
}        
