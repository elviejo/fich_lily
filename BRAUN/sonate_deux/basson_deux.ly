\version "2.17.7"

\context Voice = "basson_un"

  
\relative c' { 
	\set Staff.instrumentName = \markup { \column { "Bsn II" } }
	\set Staff.midiInstrument = "Bassoon"
	%\set Staff.shortInstrumentName =#"bsn"
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
 

		
  		\time 4/4
  		\clef bass %alto
                \key c \major
                
                \partial 4
       r4 |r4 r16 g16 a b c8 e,16 f g8 f |
       e c r16 g' a b c8 e,16 f g8 f |
       e c b g c4 d-+ 
       e f-+ g8 g, g4 
       r4 r16 g' b c d8 a b g 
%6
	fis4. d8 g4. d8 |  
	e8 c d d, g g' g f
	e4~ e16 c d e f8 g a g |
	fis4~ fis16 d e fis g8 a b a |
%10
	gis4~ gis16 e fis gis a8 a, a'16 gis fis e 
	d4. d8 e4. e8 | 
	cis4. cis8 d4. c8 | 
	b4. b8 e4. a,8 |
	d4. e8 f4. c8 |
%15
	d4 e8 e, a4 r4 
	r8 a16 b cis8 a d4 r4 |
	r8 g,16 a b8 g c4. g'16 f |
%18
	e4. c8 f f, f a'16 g |
	fis4. d8 g g, g' fis 
%20
	e8 c r16 g'a b c8 e,16 f g8 f |
	e c r16 g' a b c8 e,16 f g8 f |
	e c b g c4 d -+ |
	e fis-+ g4. b,8 
	e c d d, g4 s4 \bar "||" \break
	
	
%Allegro page 6
	\time 4/4
	\repeat volta 2 {\bar ".|:" 
	c4 c b g 
	a b c8 d e c 
	f f f e16 d e4. e8
	f4. f8 g d b g 
	b4. b8 c e e16 d c b 
	a4. a8 d8 d' a fis
%31
	d4 c b g
	a d, g b 
	c c' b fis
	g8 b, c d g,2 	
	}
	\repeat volta 2
%35
	{e'4  c f r
	fis d g r
	gis e a4. a8
	d, c b a g4. b8 |
	c b a g f4. a8
	b a gis f e4. gis!8
	a4 b c8 a' c a |
	gis 4 e a,8 a' c a
 %43
	gis4 e a,8 b c d
	e4 e, a8 a' c a 
	fis4 d g,8 g' b g
	e4 c f,8 f' a f 
	e4 c d b
	c8 c e c g g' g f
%49
	e4 r e r 
	e c f,8 a' a g  |
	fis4 r fis r 
	f d g,8 g' e c 
	f,4 f' e b
	c8 e f g c, c e c
%55
	g4 g g g
	c8 e, f g c2
	g4 g g g 
	c8 e, f g c,2	\break
 	
	}
% poco allegro page 7	
	\time 3/4	
	\repeat volta 2 { \bar ".|:" 
	c' 4
	e g
	e c e  |  f d g  |  e c e  | f f, f'  | e e, e'  | b c c,  |  
	g' g'8 f e d  |  c4 e g  |  e c e  | 
%69
	f e g  | e c e | f f, f' | e e, e' | f g g, | c2. \fermata
	}        
	c2 b4  | c2 b4 | a c a  | d d c  | 
%79
	b2. r4 e e,  | a2.  | r4 d d, | g2.  |  r4 g' e  |
	c d d,   g2.^\markup "Da Capo" \bar "||" a4 gis e  |
%88
	a b c  | d f d  | e2 d4  | c2.  | a  | b  |  gis  |  a  | c'8 b a g f e
%97
	d4 e e,  | a c8 d c b  | a4 a' fis | d2.  | d4 fis d  | g d b  |
	g g' e  | c2.  | c4 e c  | f c a  | f d f  | g2 g'4  | f8 e d4 c  | 
	g g'8 f e d ^\markup {\halign #+1"Da Capo"} \bar "||" \break
%%% allegro page 8

	\time 2/2
	%\repeat volta 2 {
	s 2. \repeat volta 2 {
	c4| c e e c | 
	d c b g |
	c e f g | c, c' g e  | c e e c  |d c b g |
	c e f g | c,2. \fermata  }
	
	
	\repeat volta 2 {	
	
	c4 | c e e c |
%121
	b g' g b,  | c a8 b c4 a  | d2 c  | b g  | a4 g fis d  |
	g b c d  | g,2.^\markup \bold \italic "Da Capo" \bar "||" c4 |
	c e e c | 
%%
	f a8 g f e d c  |  b4 d d b  | e2 c   |  d b  |  c4 e a c, | 
	f d e e,  | a4 c'8 b a g fis e   | d2 fis  |
%%	
	g g,  | c e  | f2. f4  |
	e2. e4  | d2 b  | c4 f, a f  | g2. 	
	
	}	     
%% Minoetto
	\time 3/4
	\repeat volta 2 {
	c4 d2 | 
	 e2 e4 | f2 f4  | g2 f4  | e c2  | d4 fis,2  | g4 b d  |  g,2.
	  }
	
	\repeat volta 2 {	
	d'4 e fis  | g2 f4 e c2  | d4 g, c  | a f2  | g4 b2  | c4 e, g | c,2.
	}
	
%%% Minoetto 2°
	\key bes \major
	\repeat volta 2 { c'4 b g  | c d c  | b g b  | c c, f' | es2 c4 |
	f d es  | c d d,  | g2. }		
		
	\repeat volta 2 { g'4 fis d  | g bes g  | fis2 d4  | g f es | f d bes  |
	es g b, | c g g  | c,2. 		
	 }		

	
	
	
	
	
	
}
	
	
	


