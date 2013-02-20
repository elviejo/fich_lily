\version "2.17.7"

\context Voice = "basson"

\relative c { 
	 \set Staff.instrumentName = \markup { \column { "Quinte" } }
         \set Staff.midiInstrument = "bassoon"
          \set Staff.shortInstrumentName = "Bsn"
%       

  \once \override Staff.TimeSignature.style = #'() 

  
  	\time 3/4
        \clef alto %bass  
        \key f \major
        
       f'4 f e | d d f | e e e | e8 f e d cis b | a4 a a |
% 6
	a d d | a a a | f d a' | d f f | e e c | c a c | 
%11
	c g'8 f e d | c4  c f | d d bes | bes g c | a f a |
% 16
	a a a | f f a | a g d' | c c c | c b4. b!8 |
%21
	b4 e d | b b8 c d b | cis4 e cis | d2. | bes8 a bes c bes a |
%26
	g2 b4 | a d4. d8 | e d cis b a4 | a a f' | e e e | d a d |
	
  
  }
