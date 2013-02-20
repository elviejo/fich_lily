\version "2.17.7"

 \context Voice = "hautbois"


\relative c'' { 
	\set Staff.instrumentName = "Haute-contre"
	%\markup { \column \magnify #1.5 { "Haute-contre" } }
	\set Staff.midiInstrument = "oboe"
	\set Staff.shortInstrumentName =#"Htb"

	
  		\time 2/2
  		\clef alto 
                \key c \major
                	
                \partial 4
                
	c4 | g fis g d | e2 g4 c | b2-+ b4 c | b2. c4 | g fis g d |  
%351
	e2 g4 c | c2 c4 b | c2. c,4 | b a gis a | e'2 e4 e | f2 f4 d |
%357
	e2. gis4 | a a b cis | d2 d,4 d | e2 e4 e | a2 cis4 cis | d2 d4 d |
%363
	b2.-+ g4 | e e e e | f2 a4 a | g2 g4 g | g2 r4 g | g c a d |
%369
	c4 c c8 b c d | b c b a g4 g | g8 f e d e f g a |
	g4 g8 g g4 g | g4 g8 g g4 g |
%374
	c,8 c d e f4 f | e4 e8 e f4 f | e4 g8 g g4 g | 
	g4 g8 g g a b c | d4 g, g b
%379
	d4 a8a a4 a | a4 a8a a4 a | gis b8 b b4 b | 
	c e,8 e e4 e | e8 gis a b c d c b |
%384
	a4 a8 g f g f d |a'4 a8 a a4 a | gis e8 e e4 e |
	e b'8 b b4 e | cis e cis e | e d8 d d4 d |
%390
	a d a d | b d b d | c c8 c c4 c | c c gis a | a2 a4 gis | a a8 a a4 a |
%396
	a4 e8 e e4 e | f8 g f e f4 f | f bes bes bes | 
	a a8 a a4 e | f8 e f g a4 a |
%401
	a4 e f f | f f8 f g4 g | f a8 a a4 a |
	a4  a8 a a4 a | a cis8 cis cis4 cis |
%406
	d4 d8 d d4 d | d a8 a a4 d |b d b d | c c8 c c4 c | 
	c c8 c c4 c | c g fis g |
%412
	g2 g4 fis | g g8 g g4 c | b8 c b a g4 g | g8 f e d e f g a | g4 g8 g g4 g 
%417
	g g8 g g4 g | c,8 c d e f4 f | e e8 e f4 f | e g8 g g4 g | g g8 g g a b c |
%422
	d4 b8 b b4 b | c c8 c c4 c | c c8 c c4 c |
	b d b d | c c8 c c4 c | c c8 c c4 c |
%428
	c c g a | b2 b4 b | b1 | R1 | e4 e b c | c2 c4 b | c1 |
	
	
	
	
	
	
	
	
	
	
}
