\version "2.17.7"

\context Voice = "cello"


\relative c { 
	\set Staff.instrumentName = \markup { \column { "Cello" } }
	\set Staff.midiInstrument = "cello"
	\set Staff.shortInstrumentName =#"Cello"

  
  	\time 3/4
        \clef bass  
        \key c \major
        
       R 2. | R2.*3 | r4 c' b
%6
	c r g | c, r c' | e, d c | g' r2 | R2.*4 | g,4 r2 | g'4 a8 g f e |
%16
	d8 c g'4 g, | c c' b | c c, g | c c' b8 c | a g a b c a |
%21
	d2. | d,4 es d8 c | bes4 a bes | g d' d, | g g' f | 
%26
	e2 c4 | f4. g8 a f | g4 c,2 | g4 g f | e2 c'4 |
%31
	f8 e f g a f | g c, g2 | c4 r2 |
%reprise au segno
	       R 2. | R2.*2 | r4 c' b
%6
	c r g | c, r c' | e, d c | g' r2 | R2.*4 | g,4 r2 | g'4 a8 g f e |
%16
	d8 c g'4 g, | c c' b | c c, g | c c' b8 c | a g a b c a |
%21
	d2. | d,4 es d8 c | bes4 a bes | g d' d, | g g' f | 
%26
	e2 c4 | f4. g8 a f | g4 c,2 | g4 g f | e2 c'4 |
%31
	f8 e f g a f | g c, g2 | c4 c' b | a a gis-+
%35
	a2 a4 |g f2 | e4 cis a | d2 d4 | d c b |
%40
	a4 e'2 | a8 bes a g f e | d c d e f d | g f g a g f | e d c d e c |
%45
	f e d e f d | g2 g4 | g8 a g f e d | c4 g' g, | c r2 |

	
	
  
  }
