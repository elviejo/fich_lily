\version "2.17.7"

\context Voice = "Violon"

%resetBarnum = \context Score \applyContext % pour la numérotation des mesures
%  #(set-bar-number-visibility 3)
  
\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Violon" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"vln"
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
 
%  {     \override Score.BarNumber.break-visibility =#end-of-line-invisible
%  	  \resetBarnum
%         \override  Score.BarNumber.self-alignment-X = #LEFT
%  }
  

  	\time 3/4
        \clef treble  
        \key g \major

    	r4  d8 c b g | d'4 d d | b b d |  e d4. d8 | d4 d8 c b a |  
%6
	d4 d d | b b d | e d4. d8 | d4 g g | fis8 g a g fis4 | e8 d e fis g  a
%12
	fis2 fis4 | r g g | fis8 g a g fis4 | e8 d e fis g e | fis2 fis4 | d r2 | 
%18
	d4 r2 | c8 d e fis g4 | g fis4. (e16 fis) | g4 r2 | d4 r2 | c8 d e fis g4 ~ |
%24
    g4 fis4.-+ (e16 fis) | g2 g4 | g a8 d, d e | fis2 e4~ | e d4. d8 | d4. c8 b a
%30
    g4 c8 d a b | d2 e4 | e d4. d8 | d4 r fis | g r d | g r b,|	
%36
    c4 d2 | g,4 g' fis | g r d | g r b, | c4 d2 | g,4 d' d |
%42
    d2 d4 | d cis4. cis8 | d2 d4 | r b d | d2 d4 |
%47
    d4 cis4. cis8 | d2 d4 | r g g8 g | g4 a4. a8 | a2 a4 |
%52
	a4 a4.-+ g8 | g2 g8 g | g4 a4. a8 | a2 d,4 | e4 d4. d8 |
%57
	d4   \key bes \major  
	
	g4. g8 | g4 f! f | f bes!2 | a a4 | r4 g4. g8 |
%62
	g4 f f | f bes2 | a a4 | r g4. g8 | f2 f4 |
%67
	f4 g g~ | g fis g8 a | g4 d es!~ | es c f~ | f g bes
%72
	g4 fis4. g8 | g4 r g | es2 es4 | f2 f4 | bes, bes'8 c bes a |
%77 - page 219
	g2 g4 | es2 es4 | f2 f4 | bes, bes'8 c bes a | g2 b,4 |
	c4. bes8 a4 | d4. c8 bes4 | c4 d2 | g2 b,4|
	c4. bes8 a4 | d4. c8 bes4 | c4 d2
	
	\key g \major g,4 r8 d' d d |
%90 page 220
	fis!4. fis8 fis fis | g2 g4 | fis d4. d8 | d4 r8 d d d |
	fis4. fis8 fis fis | g2 g4 | fis4 d4. d8 | d4 r d |
%98 - page 221
	g,4 r a | a r d | e fis4.-+ fis8 | g4 r g, |
	g r a | a r d | e d4. d8 | d4 d8 c b a |
% 2ème partie de la chaconne        
       r2 g'8 g | g2 g8 g | g2 g4 | a a a | g d d | 
       d d cis | d d d | d4. g8 g4 | g fis4. g8 | g4 g g
%116 - page 223
	f4 f8 f f f | e4 e e | f f f | e2 e4 e2 a,4 |
	e'4. d8 c4 | b a g | d' d g | fis fis8 fis g c, | d4 d b8 b |
%126 - page 224
	c4 d e | d2 d4 | g, r fis' | g r d | g r b, |
	c4 d2 | g,4 r fis' | g r d | g r b, | c d d8 d |
%136 - page 225
	d2 g8 g | g2 g4 | a fis b | gis e gis | e4. e8 fis4 | 
	g a a | a a g | fis4 fis8 fis g a | a4 a a8 a |
%145 - page 226
	fis4 fis b | a2 a4 | fis2-+ r4 | R2.*11
%159 - page 227
	r4 b,4 d | d2 d4 | d cis4. cis8 | d2 d4 | r b g |
	d'2 d4 | d cis4. cis8 | d2 d4 | r4 d d | c4 e4. e8 |
%169 - page 228
	d2 d4 | d d4. d8 | d4. c8 b4 | c2 c4 | d4. d8 b4 | e4 d4. c8 |
	d2 d8 d | c2 g'4 | d d g | e e e | c4. b8 g4 |
%180 - page 229
	f'4 d g | e2 c8 c | b2 b4 | c a d | g, g g' | 
	g4. g8 g4 | fis4 e4. d8 | d2 fis8 fis | g2 g4 | g g fis |
%190 - dernière page 
	g g d | b4. b8 b4 | e d4. d8 | d2 g8 g | g2 f4 |
	f2 f4 | e fis4.-+ g8 | a4 fis g | g4. d8 g4 | e4 d4. d8 | d2. |
        
        
  }
