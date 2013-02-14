\version "2.17.7"

\context Voice = "taille"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Taille" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"Tvn"
	
  		\time 2/2
  		\clef alto 
                \key c \major
                
                \set Score.currentBarNumber = #259
                \partial 4
                
               
                g4 | g e e e | f f f a | g g g g |  g g g g | 
%263
	g e e e | f f f a |  g g g g | g2.
	g4 | g g a e | f g d e |
%269
	f g d e | d2 d4 c | g' g a e | f g d e | g e f d | e2.
%2ème rigaudon
	\key bes \major

	g4 f2 f | es2. aes4 | g4 f es d | es2 es4 g | f2 f | es2. aes4 |
%281
	g f es d | es2. 
	g4 | g2 g | es2. f4 | g g f f | f2. g4 |
%287
	aes2 bes | aes4. bes8 aes4 bes | bes g aes f | 
	g2. es4 | f2 g | g4. aes8 g4 g |
%293
	es4 es f f | d2. es4 | es2 d | es4. f8 g4 aes | g2 g g2.
                
                
} 
       
              
