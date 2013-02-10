

\version "2.17.7"

\context Voice = "Alto"

\relative c' { 
	\set Staff.instrumentName = \markup { \column { "Alto" } }
	\set Staff.midiInstrument = "viola"
	\set Staff.shortInstrumentName =#"alto"

	
 
%  {     \override Score.BarNumber.break-visibility =#end-of-line-invisible
%  	  \resetBarnum
%         \override  Score.BarNumber.self-alignment-X = #LEFT
%  }
  	

  		
  		\time 3/4
  		\clef alto
                \key g \major
          	
       r4 b4. b8 | a4-- a a | e'4 d8  c b a | g4-- c a | b b4. b8 |  
     
%736
	a4-- a a | e' d8 c b a | g4-- c a | b d8 c b g | a4-- d d | a2 a4 | a2 r4 | 
	r d8 c b g | a4-- d d | a2 a4 |  a2 a4 | b r2 |
%748
	b4 r2 g4-- c b8 g | d' c d e d c | b4 r2 | b4 r2 | g4 c b8 g | 
%page 214
	d'8 c d e d c | b4. b8 c d | c4. g8 a e' | a,4 d c~ | c4. c8 b a | b2 b4
%760
	c8 g a b fis g | a2 e4 | g d d' | b r fis' | g r d | g r b, |
%766
	c4 d2 | g,4-- g' fis | g4-- r d | g-- r b, | c-- d2 | g,4-- b g |
%772
	a4-- fis! d | g-- e e' | a,2 a4 | r b g | a-- fis! d |
%page 216
	g4-- e e' | a,2 a4 | r b d | c-- c e | d2-- d4 | 
%782
	c4-- a d | d4. c8 b a | g fis e4 a | a2 g4 | a-- a d, |
%page 217
	d4 \bar "||" 
	\key bes \major bes'!4. bes8 | a4-- c c | d-- bes g | d'2 d4 | r bes4. bes8 |
%792
	a4-- c c | d-- bes g | d'2 d4 | r d es!4~ | es c a
%page 218
	d8 c bes a g4 | d'4 d4. d8 | d4 g,8 a bes!4 | c2 a4 | d8 c bes a g4 |
%802
	d'2 d4 | d r g\p | es2 es4 | f2 f4 | bes, bes'8 c bes a |
%page 219
	g2 g4 | es2 es4 | f2 f4 | bes, bes'8 c bes a | g2 b,4 | 
%812
	c4. bes8 a4 | d4. c8 bes4 | c d2 | g, b4\pp| 
%816
	c4. bes8 a4 | d4. c8 bes4 | c d2 |\bar "||"
	 \key g \major
	 g,4 r8 b! b b
%Page 220
	 a2 a4 | g e! e' | a,2 a4 | b r8 b b b | a2 a4 | g e e' | a,2 a4 | b r g |
% page 221
	g4 r c | a r b | c d4. d8 | d4 r d | c r c | a r b! | 
	a a4.-+ g8 | g4 b4. b8 \bar "||"

		
	\time 3/4
%Page 222
	r2 d8 d | d2 d8 d | c2 c4 | e d d | d b b | 
	e e e | d d fis | g4. g8 g4 | e c2 d4 d c |
%page 223 - mes. 846
	c4 c8 c c b | b4 b a8 a | a4 a a | e'2 b4 | c2 a4 | 
	e'4. d8 c4 | b a g | d' d g | fis-+ fis8 fis g c, | d4 d b8 b 
%page 224 - mes. 856
	 c4 d e | d2 d4 | g, r fis' | g r d | g r b, | 
	 c d2 | g,4 r fis' | g r d | g r b, | c d a8 a | 
% page 225 - mes. 866
	b2 g'8 g | e2 e4 | e b b | b b e | e4. e8 d4 |
	g, d' a | d d g | d d8 d cis d | e4 e a,8 a | 
%page 226 - mes 875
	d4 d d | a2 a4 | a2 \bar "" \break
	r4 | R2.*11  		
%page 227 - mes 889
	r4 d g, | a fis d | g e e' | a,2 a4 | r d g,| 
	a fis d | g e e' | a,2 a4 | r b4. b8 | c2 c4 |
%page 228
	d4. c8 b g | d'4 d a | b4. a8 g4 | g a4. a8 | a2 e'4 | e a, d |
	b2 b8 b | a2 a4 | d d d | c c g | a4. d8 a4 |
%page 229 - mes. 910
	a4 d g, | g2 c8 c | b2 b4 | c a d | g, g g' |
	g4. g8 g4 | fis e4. d8 | d2 d8 d | d2 d4 | c g c | b b g | g4. d8 g4 
%page 230 mes 922
	a4 a4.-+ a8 | b2 d8 d | c2 c8 c | 
	g2 g4 | c c4. d8 | d4 d d | c4. c8 b4 | a a4.-+ g8 | g2. \bar "|."
	
	
}

%%%%%%%%%%%%%%%%%%%%%%%%           fin voix 4  (basson)           %%%%%%%%%%%%%%
