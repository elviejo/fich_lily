\version "2.17.7"

\context Voice = "cello"


\relative c { 
	\set Staff.instrumentName = \markup { \column { "Cello" } }
	\set Staff.midiInstrument = "cello"
	\set Staff.shortInstrumentName =#"Cello"

	
  		\time 2/2
  		\clef bass 
                \key c \major
                
                \set Score.currentBarNumber = #259
                \partial 4
      
        c4 | c c' c c | f, f f f | g g g g, | c8 b c d c4 c |
%263
	c c' c c | f,8 e f g f4 f | g g g g, | c2.
	c4 c' bes a g | f e d c |
%269
	f e d c | g2. c4 | c' bes a g | f e d c | g a f g c,2.
	
%2ème rigaudon
	\key bes \major

	c''4 | aes2 bes | es,2. d4 | es f g g, | c2. c'4 aes2 bes | es,2. d4 |
%281
	es f g g, | c2. 
	c'4 | bes2 g | aes4. g8 aes4 f | c' bes a f | bes2. g4 |
%287
	f2 es | aes4. g8 f4 es | d es aes, bes | 
	es,2. es'4 | d2 c | g'4. f8 g4 es |
%296
	aes4 g aes f | g2. g4 | aes2 bes | es,4. d8 es4 f | g2 g, | c2.
%Air

	
	c'4 | aes2 bes | es,2. d4 | es f g g, | c2. c'4 |
%303
	aes2 bes | es,2. d4 | es f g g, c2. s4 | c2. c'4
%307
	bes2 g | aes2. f4 | c' bes a f | bes2. g4 | f2 es |
%312
	aes4. g8 f4 es | d es aes, bes | es,2. es'4 | d2 c | g'4. f8 g4 es |
%317
	aes4 g aes f | g2. g4 | aes2 bes | 
	es,4. d8 es4 
	\once \override  Score.RehearsalMark #'#'self-alignment-X = #right
	f | g2 g, | c2.
      
                
} 
       
              
