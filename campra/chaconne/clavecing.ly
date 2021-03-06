
  \version "2.17.7"

\context Voice = "clavecing"

%resetBarnum = \context Score \applyContext % pour la numérotation des mesures
%  #(set-bar-number-visibility 3)
  
\relative c' { 
%	\set Staff.instrumentName = \markup { \column { "Clavecing" } }
	\set Staff.midiInstrument = "Harpsichord"
%	\set Staff.shortInstrumentName =#"cel."
	
	
	
%  {     \override Score.BarNumber.break-visibility =#end-of-line-invisible
%  	  \resetBarnum
%         \override  Score.BarNumber.self-alignment-X = #LEFT
%  }
  	
  	\time 3/4
        \clef "bass"  
        \key g \major
            r4 g4. g8 | fis4 fis d | e b b | c d d, | g g'4. g8         
%736
	fis4 fis d | e b b | c d d, | g g' g, | d'4. e8 fis g | a4 a,2 |
%742
	d4 d'8 c b a | g2 g,4 | d'4. e8 fis g | a4 a,2 | d4. e8 d c | b4 r2 |
%748
	b4 r2 | c4. a8 b c | d4 d,2 | g4 r2 | b4 r2 | c4. a8 b c |
%page 214
	d4 d,2 | g2 g'4 | c8 b a g fis e | d2 e4 | c d4. c8 | b a g2 |
%760
	c8 b a g fis e | d2 c4~ | c d2 | g4 r
	\clef treble
	fis'' | g r d |  g r b, |
%36
	c d2 | g,4 g' fis | g r d | g  r b, | c d2 | g,4 
	\clef bass 
%771
	g g | fis d f | e2. | d8 e d c b a | g2. | fis4 d f |
%page 216
	e2. | d4 d''8 e d c | b4 g g, | c c' c | c2 c4 | 
%782
	c d d, | g2 g,4 | c4. b8 a4 | d4. c8 b4 | c4 d d, |
%page 217
	g4 \bar "||" 
	\key bes \major g'4. g8 | a4 a a | bes4. a8 bes c | d4. c8 bes a | g2 g,4 |
%792
	a4 a a | bes4. a8 bes c | d2 d,4 | g2 g'4 | a2 a4 |
%page 218
	bes8 a g a bes c | d4 d,2 | g g,4 | a2 a4 | bes8 a g a bes c |
%802
	d4 d,2 | g4
	
	\clef "treble"
%page 218 mes.73 (nouvelle numérotation) ou 803
	r4 g'' | es2 es4 | f2 f4 | bes, bes'8 c bes a |
%77
	g2 g4 | es2 es4 | f2 f4 | bes, bes'8 c bes a | g2 bes,4
%82
	c4. bes8 a4 | d4. c8 bes4 | c4 d2 | g,2 b4 |
%86
	c4. bes8 a4 | d4. c8 bes4 | c4 d2 
	\clef "bass" 	

	 \key g \major
	 g,,4 r8 g' g g
%page 220 mes. 820
	fis2 fis4 | e2 e4 | d2 d4 | g, r8 g' g g | fis2 fis4 | e2 e4 | d2 d4 |
%827
	g,8 b' g e r e | c c' a c a fis | d d' b g r g | c a d d, fis d |
%831
	g b g e g e | c c' a fis a fis | d d' b g r g | e c d4 d, | g g'4. g8 
%Page 222
	r2 g8 g | b2 b8 g | c2 c4 | a d d, | g g g | 
	e a a, | d d d' | b4.-+ b8 b4 | c a4. g8 | g4 g f |
%page 223 mes - 846
	f4 f8 e f d | e4 e c8 c | d4 d d | e2 e,4 | a2 \clef "treble" a'4 |
	e'4. d8 c4 | b a g | d' d g | fis-+ fis8 fis g  c,  d4 d b8 b | 
%page 224
	c4 d e | d2 d4 | g, r fis' | g r d | g r b, | 
	c d2 | g,4 r fis' | g r d | g r b, | c d \clef bass 
	d,8 d | 
%page 225 - mes. 866
	g2 g8 g | c2 c4 | a b b, | e e e | a4. g8 fis4 |
	e4 d cis | d d e | fis fis8 fis e d | a'4 a fis8 fis
% page 226
	b4 b g | a2 a4 | d,2 
	r4 | R2.*11
% page 227	
	r4 g4. g8 | fis4 d f | e2. | d4. c8 b a | g2 g4 
	fis4 d f | e2. | d4 d'' c | b4. a8 g4 | c2 c4 |
%Page 228
	c4 b8 a b c | d4 d,2 | g2 g,4 |  c a8 b c a | d4. d8 e4 | c d d |
	g2 g8 g | a2 a4 | b b g | c c e, | f4. g8 a4 |
% page 229
	f4 g g,4 | c2 r4 | R2.*5	
%	g4. g8 g4 | fis e4.-+ d8 | d2 \clef bass 
	r2 d'8 c | b2 b4 | c b a 
%page 230
	g4 g b, | e4. fis8 g4 | c, d d | g,2 g'8 g | a2 a4 |
	b2 b4 | c a4. g8 | fis4 d b | c4. d8 e4 | c d4. d,8 | g2. \bar "|."
	

}
