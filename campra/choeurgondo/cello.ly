\version "2.17.7"

 \context Voice = "cello"


\relative c' { 
	\set Staff.instrumentName =  "Cello" 
	\set Staff.midiInstrument = "cello"
	\set Staff.shortInstrumentName =#"cello"

	
  		\time 2/2
  		\clef bass 
                \key c \major
                	
                \partial 4
                \set Score.currentBarNumber = #346
                
	c4 | b-+ a g f | e2-+ e4 e | d2 d4 c | g'2. c4 | b-+ a g f |
%351
	e2-+ e4 f d2-+ d4 g | c2. 
	\set fontSize = #-4
	\clef alto
	\stemUp c4 | \stemNeutral b a gis a | e'2 e4 e | f2 f4 d |
%357
	e2. \clef bass \unset fontSize  e,4 |
	a g f e | d2 
	\set fontSize = #-4 \clef alto
	d'4 d | e2 e4 e | a,2 \unset fontSize \clef bass a4 a | d,2 d4 d
%ù63
	g2. \set fontSize = #-4
	\clef alto  g'4 | e4 e e e | f2
	\unset fontSize \clef bass f,4^\markup \italic "tous" f |
	g2 g4 g | c,2 r8 g a b | c a b c d b c d | 
%369
	e c d e f d e f | g d e f g g, a b  | c b c d c d e f | 
	g f g a g a b g | c b c d c bes a g |
%374
	f g f e d e f g | a bes a g f g a b | c g, a b c d e f| 
	g g f e d c b a | g d e f g a b c | 
%379
	d e d e f g f g | a g a b a b c d | e b, c d e f e d |
	c d c b a b c d | e f e d c d e c |
%384
	f g f e d e f g | a e, fis gis a b c d | e e' d c b a g f |
	e4 e'8 e e4 e | a, cis a cis | d d8 d d4 d |
%390
	d d8 d d4 d | g, b g b | c c8 c c4 c | c c, b-+ a | 
	e'2 e4 e, | a8 a b cis d e f g | 

%396
	a g a bes a bes a g | f e f g f g a f | bes c bes a g a bes g
	a g a bes a bes a g | f g f e d e f g |
%401
	a bes a g f g a f | bes c bes a g a bes c | d a, b cis d e f g |
	a a g f e d cis b | a4 a'8 a a4 a |
%406
	d d8 d d4 d | d, fis d fis | g b g b |
	c c8 c c4 c | c, e c e | c' b a-+ g
%412
	d2 d4 d | g,8 g a b c d e f | g d e f g g, a b |
	c b c d c d e f | g f g a g a b g |
%417
	c b c d c bes a g | f g f e d e f g | a bes a g f g a b |
	c g, a b c d e f | g g f e d c b a |
%422
	g4 g'8 g g4 g | c c8 c c4 c | c, e c e | g b g b | c c8 c c4 c | c, e c e
%428
	c' c b-+ a | g2 g4 g | g1 | R1 | e4 e d c | g2 g4 g | c,1


	
}	
