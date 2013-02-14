
\version "2.17.7"

\context Voice = "basson"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Basson" } }
         \set Staff.midiInstrument = "Bassoon"
         \set Staff.shortInstrumentName = "Bsn"
  		
  		\time 3/4
  		\clef bass % alto
                \key c \major
          	
       r4 c4 b | c4 r g | c, r c' | e, d c | g' c b |
%6
	c r g | c, r c' | e, d c | g' r2 | g4 r2 |
%11
	g4 a f | d g g, | c' r2 | g4 r2 | g4 a8 g f e | 
%16
	d8 c g'4 g, | c c' b | c c, g | c c' b8 c | a g a b c a | 
%21
	d2. | d,4 es d8 c | bes4 a bes | g d' d, | g g' f |
%26
	e2 c4 | f4. g8 a f | g4 c,2 | g4 g f | e2 c'4 | 
%31
	f8 e f g a f | g c, g2 | c4 c' b	
%reprise au segno	
	c4 r g | c, r c' | e, d c | g' c b |
%6
	c r g | c, r c' | e, d c | g' r2 | g4 r2 |
%11
	g4 a f | d g g, | c r2 | g4 r2 | g'4 a8 g f e | 
%16
	d8 c g'4 g, | c c' b | c c, g | c c' b8 c | a g a b c a | 
%21
	d2. | d,4 es d8 c | bes4 a bes | g d' d, | g g' f |
%26
	e2 c4 | f4. g8 a f | g4 c,2 | g4 g f | e2 c'4 | 
%31
	f8 e f g a f | g c, g2 | c4 c' b
	\set Score.currentBarNumber = # 34
%34
	a a gis-+
%35
	a2 a4 | g f2-+ | e4 cis a | d2 d4 |d c b |
%40
	a4 e'2 | a8 bes a g f e | d c d e f d | g f g a g f | e d c d e c | 
%45
	f e d e f d | g2 g4 | g8 a g f e d | c4 g' g, | c c' b 
	

	
}

