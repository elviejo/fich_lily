\version "2.17.6"

\header {
    title = "Les Festes Venitiennes"
    composer = \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)" }
 %arranger = \markup {\fontsize #2.5 "Joseph Bodin de Boismortier (1682 - 1765)" }
    meter = \markup { \bold \fontsize #2 " Chaconne"   } 
    tagline = \markup {  "Partition gravée avec LilyPond (http://lilypond.org)" 
    }	    
}
date = #(strftime "%d %m %y" (localtime (current-time)))


#(set-default-paper-size "a4")
#(set-global-staff-size 18)


\paper {
	ragged-last-bottom = #'f
  line-width = 190\mm  % ---> je peux mettre n'importe quelle longueur ici,rien ne change !
  left-margin = 10\mm  % ---> par contre, si je mets 50\mm, la marge augmente !!!???
  top-margin = 10\mm	% CA VIENT DE LA CONFIGURATION DE L'IMPRIMANTE 
  bottom-margin = 10\mm
  oddFooterMarkup = \markup {\fill-line {
       \column { \fromproperty #'header:meter }
       \column { \fromproperty #'header:tagline }
       \column { \line {JJG le \date }} 
       } } 
}


%global = { }
globalTempo = {
    \override Score.MetronomeMark.transparent = ##t
		}
	
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
  #(set-bar-number-visibility 3)

%% Identification
voixI =

\context Voice = "voice 1"

\relative c'' { 
	 
	 \set Staff.instrumentName = \markup { \column { "Htb / Rec." } }
         \set Staff.midiInstrument = "Oboe"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'()
 % 	\set Score.currentBarNumber = # 731
  	\tempo 2=55
  	\time 3/4
        \clef "treble"
        \key g \major
        
        r4 b8 c d e \bar ".|:" | d4 \segno a d | g, g' g | g fis8 g a fis | g4 b,8 c d e 
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
	c4 c8 c c d | b4-+ b e8 e | e4 d c | c (b4.)-+ a8 | a2 c4
%851
	b4. b8 c4 | d c-+ b | a-+ a4 b | c c8 c b c | a4-+ a d8 d | 
%page 224
	 e4 fis g | g4~ g4. g8 | g4 d8 e d4 | r8 c b8 c d4 | 
	r8 c b c b a | r8 e' d e d c | b4 d8 e d4 | r8 c b a g fis |
%864
	r8 c' b c d4 | r8 e d e d c |
%page 866
	b8 a b c d b | e2 e4 | e e dis | e e e | cis4. cis8 d4 | 
	e fis g | fis-+ fis g | a a8 a g fis | e4 e fis8 fis | 
%page 226
	fis4 fis e | fis (e4.-+) d8 | d2 d8 c | b2-+ c4 | d c b |
%880
	a4 a d | b4. c8 d4 | e fis g | fis2-+  d8 d | g2 d4
	e4 f8 e d c | d4 b d | g,4. a8 b4 | c4 a4.-+ a8
%page 227
	g4 g b | a b8 c d4 | g, g4.-+ (fis16 g) | a2 d,4 | r g b |
	a b8 c d4 | g, g4.-+ (fis16 g) | a2 d,4 | r g8 a b4 | e, c'8 d e4 |
% page 228
	a,4 d d | d8 c16 b a8 b c d | b4 g8 a b4 | e, c'8 d e4 | 
	a, g8-+ fis g4~ g8 a a4.-+ g8 |
%905
	g8 a b c d b | c2 c4 | d d b | e e c | a4. b8 c4 |
%page 229
	d4 b4.-+ c8 | c2 e8 e | d2-+ d4 | e c a | b4-+ b d | 
	d4. d8 e4 | fis g4. a8 | fis2-+ d8 d | g2 d4 | e f8 e d c 
%page 230
	d4 b d | g,4. a8 b4 | c a4.-+ g8 | g2b8 b | c2 c8 c |
	d2 d4 | d c4. b8 | a4-+ a d | e4. fis8 g4 | g fis4. g8 | g2. \bar "|."	
	

}      
                
%% fin voix 1 ----------------------------------------------
         
voixII =
\context Voice = "voice 2"
\relative c'' { 
	 \set Staff.instrumentName = \markup { \column { "2è dessus" } }
         \set Staff.midiInstrument = "recorder"
%         \set Staff.printKeyCancellation = ##f
 
  \once \override Staff.TimeSignature.style = #'()
%  \set Score.currentBarNumber = # 731
  		
  		\time 3/4
  		\clef treble
                \key g \major
        r4 g8 a b4 | a fis fis | e d d' | c8 b a b c d | b4 g8 a b c | 	
%6
	a4 fis fis | e d d' | c8 b a b c d  | b4 b8 c d4 | d2-- a4-. a2-- c4-.|
%12   	
	a fis d | r4 b'8 c d4 | d2-- a4-| a2-- a4-| a fis d | g r2 | 
	g4 r2 | g4 c d8 e | a,4-- d-. d-.| d-. r2 | g,4 r2 | g4 c d8 e |
%24
	a,4 d d | d4. d8 c b | c g fis g d g | a4 fis g~ | 
	g fis4.-+ (e16 fis) g4. a8 g fis |  
%30
	e4 fis8 g a d, | fis4 d g | g fis4.-+ g8 | g4 r fis | g r d | g r b, |
%36
	c4 d2 | g,4 g' fis | g r d | g r b, | c d2 | g,4 g' g |
%42
	d2 d4 | e e4.-+ (d16 e) | fis4 d2 | r4 d d | d2 d4 |
%47
	e4 e4. (d16 e) | fis4 d2 | r4 b'4 b8 b | c4 c c8 c | d2 d4| 
%52
	e4 d8 e d c | b2 b8 b | c2 c8 c | d2 d4 | g, fis4. g8 |
%57
	g4 
	\key bes \major 
	
	bes4. bes8 | c4 c c | bes4. c8 d es | d2 d4 | r bes4. bes8 |
%62
	c4 c c | bes4. c8 d es | d2 d4 | r bes4. bes8 | a4. a8 c4 |
%67
	bes4. c8 d es | d4 d4. d8 | d c bes a g bes | a4. bes8 c4 | bes4. c8 bes c
%72
	d2 d4 | bes r g | es2 es4 | f2 f4 | bes, bes'8 c c bes |
%77
	g2 g4 | es2 es4 | f2 f4 | bes, bes'8 c bes a | g2 b,!4 |
%82
	c4. bes8 a4 | d4. c8 bes4 | c4 d2 | g2 b,!4 |
%86
	c4. bes8 a4 | d4. c8 bes4 | c4 d2 
	
	\key g \major
	g4 r8 g g g |
%90
	d4 d' d | d cis4. cis8 | d4 d fis, | g4 r8 g g g | 
%94
	d4 d' d | d cis4. cis8 | d4 d fis, | g4 r g |  
%98
	c,4 r c | d r g | g8 c a4 d | d4 r d, |
%102
	c4 r c | d r g | g8 c a4 d | d g,8 a b4 |
%106 (page 222) 
	r2 b8 b | b2 b8 b | c2 g4 | g g g | g g g | 
%111
	b a a | a a a | b4. b8 b4 | g a2 | d,4 b' b |
%116
	a4 a8 gis a b | gis4 gis c8 c | a4 a a | a gis4. a8 | a2 a,4 |
%121
	e'4. d8 c4 | b a g | d' d g | fis-+ fis8 fis g c, | d4 d b8 b |  
%126
	c4 d e | d2 d4 | g, r fis' | g r d | g r b, |
%131
	c4 d2 | g,4 r fis' | g r d | g r b, | c4 d2 |
%136
	g,2 b'8 b | c2 c4 | c b b | b b b | a4. a8 d4 |
%141
	cis d e | d d cis | d d8 d e fis | cis4 cis cis8 cis |
%145
	d4 d d | d (cis4.) d8 | d2 r4 R2.*11 | 	
%159
	r4 d, d | d2 d4 | e4 e4.-+ (d16 e) | fis4 d2 | r4 d d  |
%164
	d2 d4 | e e4.-+ (d16 e) fis4 d2 | r4 d4. d8 | e2 e8 e |
%169
	fis4 g g | g4 fis4. (e16 fis) | g2 d4 | e2 e8 e | fis4 d g | g4 fis4. e8 |
%175
	g2 g8 g | g2 f4 | f d g | g g g | f4. f8 g4 |	
%180
	a4 g4. g8 | g2 c,8 c | b2-+ b4 | c a d | g, g g' |
%185
	g4. g8 g4 | fis e4. d8 | d2 a'8 a | b2 b4 | g g a |
%190
	b g g | e4. e8 d4 | g fis4.-+ g8 | g2 b8 b | a2 c8 c |
%195
	b2 b4 | g a4. d,8 | d4 fis b | g4. fis8 e4 | c' a c | b2. |






	
}

%% fin voix 2 ----------------------------------------------

%% voix 3
voixIII =
\context Voice = "voice 3"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Violon" } }
         \set Staff.midiInstrument = "Violin"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
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
 %%%%%%%%%% fin de la musique 
\score {
	
  <<
  \new StaffGroup <<
  
  {
         \override Score.BarNumber.break-visibility =#end-of-line-invisible

         \resetBarnum
         \override  Score.BarNumber.self-alignment-X = #LEFT
  }
  
  \new Staff  {\voixI }

  \new Staff  {\voixII } 
	
  \new Staff  {\voixIII } 
  
 >>
 
 >>
 \layout {
%	 \context {
%	 	 \Score
%	 \override  SpacingSpanner
%	 #'base-shortest-duration = #(ly:make-moment 1 1) }
 	}	
 \midi { }
}
 %%%%%%%%%%%%%%%%%%%%%%%%%
