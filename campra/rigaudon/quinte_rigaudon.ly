\version "2.17.7"

\context Voice = "quinte"


\relative c' { 
	\set Staff.instrumentName = \markup { \column { "Quinte" } }
	\set Staff.midiInstrument = "bassoon"
	\set Staff.shortInstrumentName =#"Bsn"
	
  		\time 2/2
  		\clef alto %bass 
                \key c \major
                
                \set Score.currentBarNumber = #259
                \partial 4
                
               
       e4 | e c c c | c c c d | d d d d | e e e e |
%263
	e c c c | c c c d | d d d d | c2. 
	e4 | e e f g | a e f g |
%269
	d e f e | g2 g4 e | e e f g | a e f g | g, c c g | g2.
	
%2ème rigaudon
	\key bes \major

	c4 | c2 bes | bes2. bes4 | bes d c d | c2 c4 c | c2 bes | bes2. bes4 |
%281
	bes d c d| c2. 
	c4 | d2 bes | c2. c4 | c c c c | bes2. bes4 |
%287
	f'2 bes, | f'4. es8 d4 g, | bes g' f f | es2. bes4 | d2 g, | g2. g4
%293
	c2 d | d2. es4 | c2 bes | c2 es4 c | g'2 d | es2.
	
	
} 
       
              
