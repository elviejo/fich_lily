\version "2.17.7"

\context Voice = "basson_un"

  
\relative c' { 
	\set Staff.instrumentName = \markup { \column { "Bsn I" } }
	\set Staff.midiInstrument = "Bassoon"
	%\set Staff.shortInstrumentName =#"bsn"
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
	\override Score.MetronomeMark #'outside-staff-padding = #5 % espace entre
	% le tempo et la 1ère ligne de la partition (modifier le chiffre du padding)

		
  		\time 4/4
  		\clef bass %alto
                \key c \major
                
  %              \tempo 4=60
                
                \partial 4
                
        r16 g^\markup  {\halign #+1 \bold \italic {\fontsize #2 "Largo"}}  a b |
        c8 e,16 f g8 f e c r16 g' a b |
        a8 e16 f g8 f e c b g | c4 d-- e8 c'4 b8 |
        c d16 e d8.-+ c16 b8 g r16 g b c
%5
	d8 a b g fis4 g-+ | 
	a8 d, c'4. b16 a b a g f |
	g8. a16 a8.-+ g16 g8 g, r16 g' a b |
	c8 \appoggiatura d8 bes bes8.-+ a16 a4~ a16 a b c |
	d8. c16 c8.-+ b16 b4~ b16 b c d
%10
	e8. d16 d8.-+ c16 c4~ c16 c d e |
	f8. e16 d c b a gis8 e gis b
 	e8.d16 cis b a g f8 d f a |
 	d8. c16 b a g fis gis 8 e c'4~ |
 	c16 c b a a4~ a16 c b a a4~
%15
	a16 c b a a8.-+ gis16 a8 a, a8 a'16 b |
	cis8. d16 e16 g, f e f8 d d,8 g'16 a |
	b8.-+ c16 d f, e d e8 c c,16 c' e f |
%18
	g8 a bes a16 g a8 f r16 d f g |
	a8 b c b16 a b8 g r16 g a b |
%20
	c8 e,16 f g8 f e c r16 g' a b |
	c8 e,16 f g8 f e c b g | 
	c4 d-+ e8 c'4 b8 | 
	c d16 e e8.-+ c16 b8 d, g4~ 
	g4 fis4-+ g4 s4 \bar "||:" \break
\repeat volta 2 {
	
	
%Allegro page 6
	\time 4/4
%	\repeat volta 2 {
\bar ".|:" 

	 c8^\markup  {\halign #+1 \bold \italic {\fontsize #2 "Allegro"}}  
	 c, e c g' g, a g 
	f'f f e16 d e8 c r8 g'8 |
	a8 a a g16 f g8 a16 b c8 g
%28
	a f'16e d8 c b g g,4
	d''8 b16 c d8 d, e c c4 |
	c'8 a16 b c8 e, fis d d4 |
%31
	d'8 d, fis d g g, b g |
	c8 c c b16 a b8 g g d' |
	e c fis d g d a' d, |
	b' a16 g a8 fis g2 
	
	}
	\repeat volta 2 {c8 c, e c a' c, f, a' |
	d d, fis d b' d, g, b' |
	e e, gis e c' c, a c' |
	f a, d, c b d' e f |
	e g, c, b a c' d e |
	d d, b a gis b' c d |
	c16 a b c d b c d e8 a, a f' |
	e b b c16 d c8 a a f' |
	%43
	e b b c16 d c8 gis a d |
	c4 b-+ a8 a, a4 |
	d'8 d, fis d b' d, g,4
	c'8 c, e c a' c, f, a' 
	g c e,16 f g e f8 d' d,16 e f d
	e8 c' c,16 d e c d8 g, g4 
%49
	c'8 c, e c c' c, e c 
	bes' bes bes a16 g a8 f f,4 |
	d''8 d, fis d d' d, fis! d |
	c'8 c d b16 a b8 g g, g' 
	a f b g c g d' g, 
	e' d16 c d8 b c g c,4
%55
	g'8 g, b g f' g, b g |
	e' d16 c d8 b c16 g a b c d e f 
	g8 g, b g f' g, b g 
	e' d16 c d8 b c2 \pageBreak	
	}
% poco allegro page 7	
	\time 3/4	
	\repeat volta 2 { \bar ".|:" 
	c' 4^\markup  {\halign #+1 \bold \italic 
	{\fontsize #2 "Poco allegro"}} _\segno g e		
	 c2 c'8 b 
	a (b) b2-+ |c g4 |
	a8 f d e f d g e c d e c |
	f4 e2  | d8 c b a g4
	c' g e  |c2 g'4 |
%69
	a8 (b) b2-+   |  c g4   |   a8 f d e f d    |   g e c d e c
	d4 g, b   |  c2._\markup \bold \italic "Fine" \fermata  %\bar ":||"
	
	}	          
 
	e4 c g'
	e c g'
	c8 b a b g a |
	fis2-+ \appoggiatura e8 d4 |
%79
	d'4 b g   |   g,4 d''8 b e d    |   c4 a e  |  a, c'8 a d c
	b4 g d    |  g,4 b'8 g c b   | a4 d, fis-+  |
	g4. g8 a b\bar "||" %\segno 
%87
	e,4 b e  |  c b8 c a4  |  c'8 b d c b a  |  gis a b gis e4  |
	e'4 c a  |  c, e'8 c f e  | d4 b f  |  b, d'8 b e d
	c4 a e  | a,4  c'8 a d c  |
%97
	b4 e, gis-+  | a2 a8 b  | c8 a fis g a b  | c a fis g a b 
	c a d c b a  | b4-+ a8 b g4   |  bes8 g e f g a  | bes8 g e f g a 
%105
	bes g c bes a g   | a4-+ g8 a f4  | a8 g f e d c  | 
	b a g a b c  | d e f4 e   | d2-+ g,4 \segno  \bar "||" \break
	
%%% allegro page 8

	\time 2/2
	\tempo 4=60 
	s 2.  \repeat volta 2 {
	g'4\segno ^\markup  {\halign #+2 \bold \italic 
	{\fontsize #2 "Allegro"}}| g c c e, | 
	f2. g8 f |
	e4 c' d, b' | c c, e g   | g c c e,  |f2. g8 f |
	e4 c' d, b' | c2. _\markup \bold \italic "Fine" \fermata  \pageBreak}
	
	
	\repeat volta 2 {	
	
	g4 | g c c8 d e4 |
%121
	d b b g  | g c8 b a4 g  | fis8 g fis g a4 d,  | d g g b,  | c2. d8 c  |
	b4 g' a, fis'  | g4 g, g  \bar "||" c'8 d
	e4 c c a  | 
%%
	a f f b8 c  |  d4 b b gis  | g e e c'  |  c d, d b'  |  b c, c a' | 
	d, b' e, gis  | a2. a8 g  | fis 4 d' d a  |
%%	
	b d8 c b a g f  | e4 c' c g  | a c8 b c4 a  | g c8 b c4 g  |
	f d'8 c d4 f,  | e a8 g f e d c  | b4 a8 b g4 
	_\markup {\halign #+0.5 \bold \italic "Da Capo"} \bar "||" \break
	
	}	     
%% Minoetto
	\time 3/4
	\repeat volta 2 {
	e'4^\markup  {\halign #+0.2 \bold \italic {\fontsize #2 "Minoetto"}} f2-+ | g8 e (d c) c' b  | a f (e d) d' c  |
	b4-+ a8 b g4  | c8 (d e) c a g  | fis (g a) fis d c  |
	b d g b, a fis' | g4 d g,  }
	
	\repeat volta 2 {	
	d''4 c2-+  | b8 (c d) b a g  | c (d e) c a g  |  f2-+ e4 
	
	f8 g a f d c  | b c d b g f' | e g c e, d b'  | c4 g c, \break

	}
%%% Minoetto 2°
	\key bes \major
	\repeat volta 2 { g'4^\markup  {\halign #+0.2 \bold \italic 
	{\fontsize #2 "Minoetto 2°"}} f2-+ | es8 c8 b c8 aes'bes  |  g4 f2-+
	es8 d b! c aes'4  | g4 c2   | bes4-+ a8 bes g bes   | a4 d, fis  | g2. }		
		
	\repeat volta 2 { d'4 c2  |bes8 g fis g es'4  | d a8 b c d |
	b4-+ a8 b g4  | aes4 f2-+ | g8 c, b c f4  | es4-+ d8 c d b  | c2. 
	_\markup \italic {\halign #+0.2 "Al primo" }}		

		
		
		
		
		
		
		
		
		
	}
