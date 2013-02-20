\version "2.17.7"

 \context Voice = "recorder"


\relative c'' { 
	\set Staff.instrumentName = "Dessus"
	%\markup { \column \magnify #1.5 { "Dessus" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"Fl"

	
  		\time 2/2
  		\clef treble 
                \key c \major
                	
                \partial 4
                \set Score.currentBarNumber = #346

	c4 | d4-+ c b a | g2 c4 c | f2 f4 e | d2.-+ e4 | d-+ c b a |
%351	
<<	{g2 c4 c | f2 f4 d | e2. e4 | d e d c | b2 e4 e | e2 d4. d8 |} \\
	{g,2 c4 c | f2 f4 d | e2. e4 | gis, a b a | gis2 gis4 gis | a2 a4 b | }
>>	
%357
<<      {b2.-+ e4 | cis cis d e | f2 f4 d | b2-+ b4 e | cis2 e4 e | f2 f4 f |} \\
%357 2ème voix
        {gis,2. e'4 | cis cis d e | f2 a,4 a | a2 a4 gis | a2 e'4 e | f2 f4 f }
>>
%363
<<	{d2. d4 | g f e d | c2 c4 f | d2-+ d4 g |} \\
%363 2ème voix	
	{d2.-+ b4 | e d c b | a2 c4 f | d2-+ d4 g }
>>

%367
	e8-+ g, a b c b c d | e c d e f d e f |
%369
	g e f g a f g a | d, e d c b-+ b c d | e d e f e d c d | 
	b-+ a b c b c d b | e d e f e d c b |
%374
	a bes a g f g a b | c d c b a b c d | e b c d e f g a | 
	d, g, a b c d e f | g fis, g a b c d e |
%379
	f g f e d c d b | c b c d c d e f | b, b' a b gis b, c d |
	e e, fis gis a gis a b | gis b c d e f e d |
%384
	c a b c d c d b | c gis a b c d e f | b, e, fis gis a b c d | 
	e4 e8 e e4 e | e e8 e e4 a | fis a fis a |
%390
	d,4 d8 d d4 d | d d8 d d4 g | e g e g | 
	c, e d c b2-+ b4 e | cis8 a' g f e d cis b |
%396
	a8 b c d c d c bes | a g a bes a bes c a | d f g a bes a g f |
	e f e d cis d cis b | a bes a g f g a b |
%401
	c d c bes a bes c a | bes a g a bes c d e | 
	f cis d e f g a bes | cis, a b cis d e f g | a4 e8 e e4 a 
%406
	fis4 a fis a | d, d8 d d4 d | d d8 d d4 g | e g e g |
	c, g'8 g g4 g | e d c b |
%412
	a2-+ a4 d | b8-+ b c d e f g a | d, e d c b b c d |
	e d e f e d c d | b a b c b c d b |
%417
	e d e f e d c b | a bes a g f g a b | c d c b a b c d |
	e b c d e f g a | d, g, a b c d e f |
%422
	g4 d8 d d4 g | e g e g | c, g'8 g g4 g | g g8 g g4 g | e g e g 
	 c, g'8 g g4 g	
%428
	e4 e d-+ c | d2 d4 d | d1 | R1 | g4 g f e | d2-+ d4 g | e1-+ \bar "||"
		
}	
	
