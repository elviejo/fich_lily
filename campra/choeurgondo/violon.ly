\version "2.17.7"

 \context Voice = "violon"


\relative c'' { 
	\set Staff.instrumentName = "Taille"
	%\markup { \column \magnify #1.5 { "Taille" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"Vln"

	
  		\time 2/2
  		\clef alto 
                \key c \major
                	
                \partial 4
                \set Score.currentBarNumber = #346
                
	g4 g a d, b | c2 e4 a | g2 g4 a | g2. g4 | g a d, b |
%351
	c2 c4 c | c2 f4 g | g2. c,4 | b a gis a | e'2 e 4 e | f2 f4 d |
%357
	e2. e4 | e e f g | a2 d,4 d | e2 e4 e | a,2 a'4 a | a2 a4 a |
%363
	g2. g4 |e e e e | f2 f4 f | f2 f4 d | e2 r4 d | c g' f f |
%369
	e e c c | g' d d g8 f | e d c b c b c a | d4. c8 d c b d | c4 e8 e e4 e |
%374
	f c d d | c c8 c c4 c | c e8 e e4 e | d d d8 e d c | b4 d8 d d4 g |
%379
	f f8 f f4 f | e4 e8 e e4 e | e4 e8 e e4 e | e e8 d c d e f | b,4 e8 e e4 g
%384
	f8e f g a4 a | a e8 e e4 e | e f8 e d c b a | gis4 gis'8 gis gis4 gis
	a a8 a a4 a | a fis a fis
%390
	fis a fis a | g g8 g g4 g | g e g e | g g b e, | e2 e4 e | e e8 e e4 e |
%396
	e c8 c c4 c | c c8 c c4 f | f8 d e f g f e d | cis4 e8 e e4 e | d8 c d e f4 f |
%401
	e c c f8 e | d4 d8 d d4 d | d f8 f f4 f | e e8 e e4 e | e a8 a a4 a |
%406
	a fis a fis | a a8 a fis4 a | g4 g8 g g4 g | g e g e | g e8 e e4 e | e g a d, |
%412
	d2 d4 d | d8 g g f e d c4 | g' d d g8 f | e d c b c b c a | d4. c8 d c b d |
%417
	c4 e8 e e4 e | f c d d | c c8 c c4 c | c e8 e e4 e | d d d8 e d c |
%422
	b4 g'8 g g4 g | g e g e | e g e g | g g8 g g4 g | g e g e | e g e g |
%428
	g g g fis g2 g4 g | g1 R1 | g4 e f g | g2 g4 g | g1 |
















}
