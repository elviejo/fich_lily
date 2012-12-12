\version "2.17.7"

\context Voice = "Recorder"

%resetBarnum = \context Score \applyContext % pour la numérotation des mesures
%  #(set-bar-number-visibility 3)
  
\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Recorder" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"rec."
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
 
%  {     \override Score.BarNumber.break-visibility =#end-of-line-invisible
%  	  \resetBarnum
%         \override  Score.BarNumber.self-alignment-X = #LEFT
%  }
  	

  	\tempo 2=55
  	\time 3/4
        \clef "treble"
        \key g \major
         
        r4 b8^\markup \bold "Moderato" c d e \bar ".|:" | d4 \segno a d | g, g' g | g fis8 g a fis | g4 b,8 c d e 
%736
	d4 a d | g, g' g | g fis8 g a fis | g4 g8 a b4 | a8 g fis-+ e d4~ 
%741	
	d cis8 d e fis | d4 a d | r g8 a b4 | a8 g fis-+ e d4~ | d cis8 d e cis | 
%746
	d4 a d | r4 d8 e d e | f4 f8 e f d | e4 a a |  a a4.-+ (g16 a) | 
	b4 d,8 e d e | f4 f8 e f d | e4 a a |
% page 214
	a4 a4.-+ (g16 a) | b8 a g fis e d | e d c b a-+ g| c4 c c~ | c a d~ | d8 c b c d e |
%760
	e d c b a-+ g | c4. b16 a b4~ | b8 c a4.-+ g8 |
	%33
	g4 
% début à 2 voix	
	<<	{d'8 e d4 | r8 c b [c] d4 | r8 c b [c] d4 | } \\
		{r4 a | b r8 a g [fis] | g4 r g | }
	>>		
%36
	
<<	{r8 e' d e d c | b4 d8 e d4 | r8 c b [c] d4 r8 c b [c] d4 | r8 e d [e d c] | b4 } \\
	{ g4 fis8 g a fis | g4 r a | b r8 a g [fis] | g4 r g | g fis8 g a fis | g4 }
>>	
%42
	g4 b a4 b8 c d4 | g, g4.-+ (fis16 g) | a2 d,4 | r4 g b | a b8 c d4 |
%page 216
	g,4 g4.-+ (fis16 g) | a2 d,4 | r d' g8 d | e4 e a8 e | fis4-+ d  g~|
%782
	g8 a fis4.-+ (e16 fis) | g4 d8 d g d | e4 e8 e a e | fis4-+ d g~ | g8 b, a4.-+ g8 |
%page 217
	g4^\markup "Fine" \bar "||" 
	
	\key bes \major 
	
	es'4. es8 | es4 es es | es d g~ g fis8-+ e d4 | r4 es4. es8 |
%792
	es4 es es | es d g~ | g fis8-+ e d4 | r g es | c f4. c8 |
%797
	d4 bes'2~ | bes4 a bes8 c | bes a g f es d | c4 f4. c8 | d4 bes'2~ |
%802
	bes8 a a4. g8 | g4 
	
	<<
		{ d8 c d4 | es4 es8 d es4 | c4-+ c f | d2-+ c4 | } \\
		{ bes8 a bes4 | c c8 bes c4 | a a8 g a4 | bes2 c4   }
	>>		
			
		
%page 219
	<<
	{r4 d8 c d4 | es4 es8 d es4 | c-+ c f | d2-+ d4 | r4 d8 e f g |} \\
	{ r4 bes,8 a bes4 | c c8 bes c4 | a4 a a | bes2 bes4 r4 bes8 c d4 }
	>>		
%812
<<	{ e4 a4. g8 | fis8 e d2 c8 bes a4.g8 | g4 d'8 e f g | } \\
	{ g,4 c4. bes8 |a4.-+ a8 bes4 | a8 g fis4. g8 | g a bes c d4 }
>>
% 816
<<	{ e4 a4. g8 | fis e d2 | c8 bes a4.-+ g8 } \\
	{g4 c4. bes8 | a4.-+ a8 bes 4 | a8 g fis4. g8 }
>>
 \bar "||" 
	\key g \major g8 g16 a b8 d b g | 
% Page 220 - mesure 820
	a8 d16 e f8 a f d | e e16 fis g8 e16 fis g8 e | 
	a a16 g fis g fis e d e d c |b8 g16 a b8 d b g |
%824
	a d16 e fis8 a fis d | e e16 fis g8 e16 fis g8 e | 
	a a16 g fis g fis e d e d c |
%827
	g8 d' b g b g | e e' c a c a | fis16 d e fis g a g a b c d b | 
	e fis g a fis g fis g a g a fis | b8 d, b g b g | 
%832
	e e' c a c a | fis16 d e fis g a g a b c d b | 
	e fis g a fis4.-+ g8 | g4 b,8 c d e \segno \bar ":|." \pageBreak
	
	\time 3/4
%Page 222
	\key g \major
	r2 g8 g | d2 d8 g | e2-+ e4 | c a d | b4-+ g g |
	g' e a | fis-+ d d | g4. d8 d4 | e c4.-+ b8 | b4-+ d c |
%page 223 mes. 846
	c4 c8 c c d | b4-+ b e8 e | e4 d c | c (b4.)-+ a8 | a2 
	<<{ c4 } \\ { e,4} >>
% partie à deux voix, mesure 	
%121
<<  	{b'4. b8 c4 | d c-+ b | a-+ a4 b | c c8 c b c | a4-+ a d8 d | } \\
	{g,4. g8 a4 | b fis g | fis-+ fis g | a-+ a8 a g a | fis4-+ fis b8 b }
>>

%856 page 224 (mes. 126)
<<	{ e4 fis g | g4 (fis4.) g8 | g4 d8 e d4 | r8 c b8 c d4 | r8 c b c b a } \\
	{b4 b4. a8 | b4 (a4.)-+ g8 | g4 r a | b4 r8 a g fis | g4 r b8 a }
>>
% 131
<<	{r8 e' d e d c | b4 d8 e d4 | r8 c b c d4 | r8 c b c d4 | r8 e d e d c | } \\
	{ g4 g fis | g r a | b r8 a g fis | g4 r g | g g fis |}
>>
%136 page 225
<<	{b8 a b c d b | } \\
	{ g8 a b c d b }	
>>
%137 partie commune
		e2 e4 | e e dis | e e e | cis4. cis8 d4 |
		
%page 866
	
	e fis g | fis-+ fis g | a a8 a g fis | e4 e fis8 fis | 
%page 226
	fis4 fis e | fis (e4.-+) d8 | d2 
% nouvelle séquence à deux voix
<<	{d8 c | b2-+ c4 | d c b | } \\
	{d,8 d | g2 a4 | b a g }
>>	

%880 ou 150
<<	{ a4 a d | b4.-+ c8 d4 | e fis g | fis2-+  d8 d | g2 d4
		e4 f8 e d c | d4 b d | g,4. a8 b4 | c4 a4.-+ a8 | } \\
	{fis4 d d | g4.-+a8 b4 | c a-+ g | d'2-+ d8 c | b2 b4 |
		c4 b a | g g b | e,4. fis8 g4 | c,4 d4.-+ fis8 |  }
>>	
%page 227
<<	{ g4 g} \\ { g4 g }
>>	
		b | a b8 c d4 | g, g4.-+ (fis16 g) | a2 d,4 | r g b |
	a b8 c d4 | g, g4.-+ (fis16 g) | a2 d,4 | r g8 a b4 | e, c'8 d e4 |
% page 228
	a,4 d d | d8 c16 b a8 b c d | b4 g8 a b4 | e, c'8 d e4 | 
	a, g8-+ fis g4~ g8 a a4.-+ g8 |
%905
	g8 a b c d b | c2 c4 | d d b | e e c | a4. b8 c4 |
%page 229
	d4 b4.-+ c8 | c2 
% nouvelle séquence à 2 voix (3ème temps mes.181	
<<	{e8 e | d2-+ d4 | e c a | b4-+ b d | d4. d8 e4 | fis g4. a8 | fis2-+ }\\ 
	{a,8 a | a2-+ g4 | g g fis | g g b | b4. b8 cis4 | d cis4. d8 | d2 }
>>	
	
	
	d8 d | g2 d4 | e f8 e d c 
%page 230
	d4 b d | g,4. a8 b4 | c a4.-+ g8 | g2b8 b | c2 c8 c |
	d2 d4 | d c4. b8 | a4-+ a d | e4. fis8 g4 | g fis4. g8 | g2. \bar "|."	
	

 
} %fin 1er dessus


                
%%%%%%%%%%%%%%%%%%          fin 1er dessus       %%%%%%%%%%%%%%%%%%%%%%%%%%%%

