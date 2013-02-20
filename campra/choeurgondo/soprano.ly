\version "2.17.7"

 \context Voice = "soprano"


\relative c' { 
	\set Staff.instrumentName = \markup { \column %\magnify #1.5 
	{ "Choeur" } }
	\set Staff.midiInstrument = "voice oohs"
	\set Staff.shortInstrumentName =#"Sopr."

	
  		\time 2/2
  		\clef treble 
                \key c \major
                	
                \partial 4
                \set Score.currentBarNumber = #346
                
	e'4 | d-+ c b a | g2 c4 c | f2 f4 e | d2.-+ e4 | d c b a |
%351
	g2 c4 c | f2 f4 d | e2. e4 | d e d c | b2-+ e4 e | e2 d4. d8 |
%357
	b2. e4 | cis cis d e | f2 f4 d | b2-+ b4 e | cis2 e4 e | f2 f4 f |
%363
	d2. d4 | g f e d | c2 c4 f | d2-+ d4 g | e2-+ r | 
%368
	R1*2 |
%370
	r4 d d d | e8 d e f e d c d | b-+ a b c b c d b | e4 e r e8 e |
%374
	a,4. a8 a g a b | c d c b a b c d | e2 e4 e | d2-+ r | r4 d d d |
%379
	f8 g f e d c d b | c b c d c d e f | b,4-+ b r e8 e | 
	a,4. a8 a gis a b | gis b c d e f e d |
%384
	c a b c d c d b | c2 c4 c | b2-+ r | r4 e8 e e4 e | e2 e4 a | fis2 fis
%390
	r4 d8 d d4 d | d2 d4 g | e2-+ e | e4 e d c | b2-+ b4 e | cis2 r 
%396
	r4 e e e | a,8 g a bes a bes c a | d4 d8 d d4 g | 
	e4-+ e r e8 e | a,4. a8 f g a b |
%401
	c d c bes a bes c a | bes a g a bes c d e | f2 f4 f | cis2 r | r4 e8 e e4 a |
%406
	fis2-+ fis4 a | d,2 d | r4 d8 d d4 g | e2-+ e4 c | g'2 g | e4 d c b |
%412
	a2-+ a4 d | b2 r | r4 d d d | e8 d e f e d c d | b a b c b c d b |
%417
	e4 e r e8 e | a,4. a8 f g a b | c d c b a b c d | e2 e4 e | d2-+ r
%422
	r4 d8 d d4 g | e2-+ e4 c | g'2 g | r4 g8 g g4 g | e2-+ e4 c | g'2 g |
%428
	e4 e d-+ c | d2 d4 d | d1 | R1 | g4 g f e | d2-+ d4 g | e1-+ \bar "||"
                
                

	}

	
texte_one =	\lyricmode
	 {
	Tout rit à nos dé- sirs
	Ne son- geons qu'aux plai- sirs
	Tout rit à nos dé- sirs
	Ne son- geons qu'aux plai- sirs
	Tout rit à nos dé- sirs
	Ne son- geons qu'aux plai- sirs
	Tout rit à nos dé- sirs
	Ne son- geons qu'aux plai- sirs
	Ne son- geons qu'aux plai- sirs
	Tout rit à nos dé- sirs
	Ne son- geons qu'aux plai- sirs
%370
	Que le vent gron- - - - - - - - - - - - - - - - - de
	Que la mer soû- lè- - - - - - - - - - - - - ve ses flots 
	Que le vent gron- - - - - - - - - - - - - - - - - de
	que la mer soû- lè- - - - - - - - - - - - - - - - - - - - - ve ses flots 
%387
	Que le Ciel en feu leur ré- pon- de
	Que le Ciel en feu leur ré- pon- de
	Nous goû- tons i- cy le re- pos
	
	Que le vent gron- - - - - - - - - de
	Que le vent gron- de
	que la mer soû- lè- - - - - - - - - - - - - - - - - - - - - -ve ses flots
%405
	Que le Ciel en feu leur ré- pon- de
	Que le Ciel en feu leur ré- pon- de
	Nous goû- tons i- cy le re- pos
%414
	Que le vent gron- - - - - - - - - - - - - - - - - de
	que la mer soû- lè-- - - - - - - - - - - - - ve ses flots 
%422	
	Que le Ciel en feu leur ré- pon- de
	Que le Ciel en feu leur ré- pon- de
	Nous goû- tons i- cy le re- pos
	Nous goû- tons i- cy le re- pos
	}
               
                
                
             
                
                
                
                
                
                
                

       
              
