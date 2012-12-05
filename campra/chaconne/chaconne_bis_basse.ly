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

\paper { 
	oddFooterMarkup = \markup {\fill-line {
       \column { \fromproperty #'header:meter }
       \column { \fromproperty #'header:tagline }
       \column { \line {JJG le \date }} 
       } } 
ragged-last-bottom = #'f
line-width = 185\mm
}
	
#(set-global-staff-size 19)
#(set-default-paper-size "a4")

global = { }
globalTempo = { \override Score.MetronomeMark.transparent = ##t }
	
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
  #(set-bar-number-visibility 3)

%% Identification
z = { \skip 2. } 

melody = 
\relative c'' { 
	 
	 \set Staff.instrumentName = \markup { \column { "Htb / Rec." } }
         \set Staff.midiInstrument = "Oboe"
         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'()
 % 	\set Score.currentBarNumber = # 731
  	\tempo 2=55 

  	\time 3/4
        \clef "treble"
        \key g \major
        
        r4 b8 [c d e] \bar ".|:" | d4^\segno a d | g, g' g | g fis8 [
        g a fis] | g4 b,8 [c d e] 
%736
	d4 a d | g, g' g | g fis8 [g a fis] | g4 g8 [a] b4 | a8 [g fis-+ e] d4~ 
%741	
	d cis8 [d e fis] | d4 a d | r g8 [a] b4 | a8 [g fis-+ e] 
	d4~ | d cis8 [d e cis] | 
%746
	d4 a d | r4 d8 [e d e] | f4 f8 [e f d] | e4 a a |  a a4.-+ (g16 a) | 
	b4 d,8 e d e | f4 f8 e f d | e4 a a |
% page 214
	a4 a4.-+ (g16 a) | b8 a g fis e d | e d c b a-+ g|
	c4 c c~ | c a d~ | d8 c b c d e |
%760
	e d c b a-+ g | c4. b16 a b4~ |
	b8 c a4.-+ g8 | g4 d'8 e d4 | r8 c b a g fis | g4 r g |
%766
	r8 e' d e d c | b4 d8 e d4 | r8 c b a g fis | 
	r8 c' b c d4 | r8 e d e d c | b4 g b |
%772
	a4 b8 c d4 | g, g4.-+ (fis16 g) | a2 d,4 | r4 g b | a b8 c d4 |
%page 216
	g,4 g4.-+ (fis16 g) | a2 d,4 | r d' g8 d | e4 e a8 e | fis4-+ d  g~|
%782
	g8 a fis4.-+ (e16 fis) | g4 d8 d g d | e4 e8 e a e | 
	fis4-+ d g~ | g8 b, a4.-+ g8 |
%page 217
	g4^\markup "Fine" \bar "||" 
	\key bes \major es'4. es8 | es4 es es |
	es d g~ g fis8-+ e d4 | r4 es4. es8 |
%792
	es4 es es | es d g~ | g fis8-+ e d4 | r g es | c f4. c8 |
%797
	d4 bes'2~ | bes4 a bes8 c | bes a g f es d | c4 f4. c8 | d4 bes'2~ |
%802
	bes8 a a4. g8 | g4 d8 c d4 | es4 es8 d es4 | c4-+ c f | d2-+ c4 |
%page 219
	r4 d8 c d4 | es4 es8 d es4 | c-+ c f | d2-+ d4 | r4 d8 e f g |
%812
	e4 a4. g8 | fis 8 e d a bes4 | c8 bes a4.-+ g8 | g a d e f g | 
% 816
	e4 a4. g8 | fis e d2 | c8 bes a4.-+ g8 \bar "||" 
	\key g \major g8 g16 a b8 d b g | 
% Page 220 - mesure 820
	a8 d16 e f8 a f d | e e16 fis g8 e16 fis g8 e | 
	a a16 g fis g fis e d e d c |b8 g16 a b8 d b g |
%824
	a d16 e fis8 a fis d | e e16 fis g8 e16 fis g8 e | 
	a a16 g fis g fis e d e d c |
%827
	b8 d b g b g | e e' c a c a | fis16 d e fis g a g a b c d b | 
	e fis g a fis g fis g a g a fis | b8 d, b g b g | 
%832
	e e' c a c a | fis16 d e fis g a g a b c d b | e fis g a fis4.-+ g8 | 
	g4  b,8 c  d e \bar ":|." %\pageBreak
		
	\time 3/4
	
%Page 222 - mes. 836 (106)
	 r2 g8 g | d2 d8 g | e2-+ e4 | c a d | b4-+ g g |
	g' e a | fis-+ d d | g4. d8 d4 | e c4.-+ b8 | b4-+ d c |
%page 223 mes. 116
	c4 c8 c c d | b4-+ b e8 e | e4 d c | c (b4.)-+ a8 | a2 c4
%851 (121)
	b4.^\markup"(851)" b8 c4 | d c-+ b | a-+ a4 b | c c8 c b c | a4-+ a d8 d | 
%page 224 - mes. 126
	 e4 fis g | g4~ g4. g8 | g4 d8 e d4 | r8 c^\markup"(859)" b8 c d4 | 
	r8 c b c b a | r8 e' d e d c | b4 d8 e d4 | r8 c b a d4 |
%864 (mes. 134)
	r8 c b c d4 | r8^\markup"(865)" e d e d c |
%page 227  mes 866  (136)
	b8 a b c d b | e2 e4 | e e dis | e e e | cis4.^\markup"(870)" cis8 d4 | 
	e fis g | fis-+ fis g | a a8 a g fis | e4 e fis8 fis | 
%page 226
	fis4 fis e | fis (e4.-+) d8 | d2 d8 c |
	b2-+ c4 | d^\markup"(879)" c b |
%880 (150)
	a4 a d | b4. c8 d4 | e fis g | fis2-+  d8 d | g2 d4
	e4 f8 e d c | d4 b d | g,4. a8 b4 | c4 a4.-+ a8
%page 227 mes 159
	g4 g b | a b8 c d4 | g, g4.-+ (fis16 g) | a2^\markup"(892)" d,4 | r g b |
	a b8 c d4 | g, g4.-+ (fis16 g) | a2 d,4 | r g8 a b4 | e, c'8 d e4 |
% page 228
	a,4 d d | d8^\markup"(900)" c16 b a8 b c d | b4 g8 a b4 | e, c'8 d e4 | 
	a, g8-+ fis g4~ g8 a a4.-+ g8 |
%905
	g8 a b c d b | c2 c4 | d d b | e e c | a4. b8 c4 |
%page 229
	d4 b4.-+ c8 | c2 e8 e | d2-+ d4 | e c a | b4-+ b d | 
	d4. d8 e4 | fis g4. a8 | fis2-+ d8 d | g2 d4 |
	e^\markup "(mes.919)"  f8 e d c 
%page 230
	d4 b d | g,4. a8 b4 | c a4.-+ g8 | g2 b8 b | c2 c8 c |
	d2 d4 | d c4. b8 | a4-+ a d | e4. fis8 g4 | g fis4. g8 | g2. \bar "|."	
	
 
} %fin 1er dessus

text = \lyricmode { 
%	 { _ _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ } 
 \repeat unfold 450 {\z} 
   Ac- cour- rez, ac- cour- rez que cha- cun s'em- pres- se
   que cha- cun s'em- pres- se, l'A- mour présente _ à vos dé- sirs 
   l'An- ti- do- te de la tris- tes- se et la sour ce des vrais  plai- sirs
   L'A- mour pré-sen- te à vos dé- sirs l'an- ti- do- te de la tris- tes- se 
   et la sour- ce des vrais plai- sirs.
   { _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  _ _ _ _ _ _ _ _  _ _ _ _ } 
   Ac- cour- rez,
   {_ _ _ } ac- cour- rez que cha- cun s'em- pres- se
   l'A- mour présente _ à vos dé- sirs l'an- ti- do- te de la tris- tes- se 
   et la sour- ce des vrais plai- sirs. 
   {  }
%147
   Pro-fi _ tez dans vo- tre bel a- ge d'un bien qui vous ren- dra con- tents
   vou- lez- vous, pour en fai - re u- sa- ge 
   at- ten- dre qu'il n'en soit plus temps 
%160 ?   
   { _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  _ _ _ _ _ _ _ _  _ _ _ _ } 
   { _  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  _ _ _ _ }
   Pro-fi _ tez dans vo- tre bel â- ge 
   d'un bien qui vous ren- dra con- tents,
   vou- lez- vous, pour en fai reu- sa- ge 
   at- ten- dre qu'il n'en soit plus temps 
   vou-lez- vous, _ pour en fai - re u- sa- ge 
   at- ten- dre qu'il n'en soit plus temps 
   vou- lez- vous, vou- lez- vous pour en fai reu- sa- ge 
   at- ten- dre qu'il n'en soit plus temps 
}

upper = \relative c' {
  \clef treble
  \key g \major
  \time 3/4

  r4 <d g b>4. <d g b>8 | <d a' d> 4 <d a'> <fis a d> | <e g b> <d g d'>  <d g d'> | 
  <e g c > <d fis a>  <d a' c> |<d g b> <d g b>4. <d g d'>8 |
%6
  < d a' d>4 <d a'> <fis a d> | <e g b> <d g d'> <d g d'> |
  <e g c> <d fis a> <d a' c> | <d g b > <g b d>  <g b d> | 
  <a d fis>4. <g e'>8 <fis a d>4 
  
  << { d'4 cis2 } \\
     { <e, a>2. }		% et voilà le bon !!!
  >>   
%12 (742)
	<fis a d>4 <d fis a> <fis b d> | <g b d>2 <b d g>4 | 
	<a d fis>4. <g e'>8 <fis a d>4 
	
  << { d'4 cis2 } \\
     { <e, a>2. }		% et voilà le bon !!!
  >> 
%16
	<fis a d>4 <d fis a> <fis b d> | <d g d'> r2 |
%18
<g d' f>4 r2 | <g c e>4 <e a c>2 |   
  
	<< { <d a'>2. } \\ 
	   { g4 fis < fis a d>4 }
        >> 
%21
 <d g b>4 r2 | 
 <g d' f>4 r2 | <g c e>4 <e a c>2 |  
  
  << {  g4 fis2 } \\ 
     {  <d a'>2. }
        >> 
%25
<d g b>2 <g b d>4 | <g c e> <fis a c> <d a'>4 | <d fis a c>2 <e g c>4
<e g c> <d fis a>2 | <d g d'>4 <d g b>2
%%30 (760)
<g c e>4 <fis a c> <d a'> | <d a' c>4. <d fis a>8 <e g b>4~
%32 ou 762
	<e g b>8 c'8 <d, fis a>2   % exemple de mes. avec accords et non-accords

%33  
<b d g>4 r <a' d> | <g b> r 
   << {  d'4  } \\ 
     {  g,8 fis8 }
        >> 
%%35
<g b>4 r <g d'> |
% page 215 mes. 36 (766)
<e g c>4 <d fis a>2 | <d g b>4 <g b> <a d> | <g b> r 
 << {  d'4  } \\ 
     {  g,8 fis8 }
        >> 
%39
<g b>4 r <g d'> |
%40
<e g c> <d fis a>2  |  <d g c>4 <d g c>4 <d g c>4 |
%42
<d a'>4 
	<< {  b'8 c d4 } \\ 
		{  <d, fis>4 <d a' d>4 }
        >> 
        
        << {  d'4  cis2 } \\ 
        	{ <e, g>2. }
        >> 	
%44
<fis a d>2.  |  <d g b>  | 
%46
<d a'>4 
	<< {  b'8 c d4 } \\ 
		{  <d, fis>4 <d a' d>4 }
        >> 
%47
	 << {  d'4  cis2 } \\ 
        	{ <e, g>2. }
        >> 	
        <fis a d>2. 
        <g d'>4 <g b d> <b d g>  | <g c e>2 <a e' a>4  |  
        <a d fis>2 < g c e>4   % pas sûr de ce dernier accord 
%52
<c e g> <a d fis>2 |  <b d g>2  <g b d>4  |  <g c e>2 <a c e>4
<a c fis>2 <g d' g>4  |  <e g a> <d fis a>2  |
%57
<g, d' g>4^\markup "Fin" \bar "||"\key bes \major <g'bes es>4. <g bes es>8  | 
%58
<g c es>4 <f c' es >2 

<< {  es'4 d d8 es } \\ 
	{ <f, bes>2 g4 }  >> 	

	<< {  <a d>2. } \\ 
	{ g4 fis2 }  >> 
	
	<g bes d>4 <g bes es>4. <g bes es>8
%62
<g c es>4 <f c' es>2
	<< { es'4 d g } \\ 
	{ <f, bes>2 <bes d>4 }  >> 

	<< { g'4 fis2 } \\ 
	{ <a, d>2. }  >> 
%65
<bes d g>4 <g bes d> <g bes es>  |  

	<< { es'4 f c } \\ 
	{ <f, c'>2 f4 }  >> 
%page 218 mes.67 (797)
<f bes d>4 <bes d g>2  | <bes d g>4 <a d fis>2 |
<bes d g>4 <g bes d> <g bes es> |

	<< { es'4 f c } \\ 
	{ <f, c'>2 f4 }  >> 
	<f bes d>4 <bes d g>2
%72 page 218 (mes 802)
	<bes d g>4 <a d fis>2 |   <bes d g>4 r <g bes> | 
	<g c e>2 <g c>4 | <a c>2 <a c>4 | <f bes d>2 <g c>4 |
% page 219 mes 77 (807)
	<bes d>2 <bes d>4 | <g c es>2 <g c>4  | <a c>2  <a c>4 
	<f bes d>2 <bes d>4 | <bes d>2 <g d' f>4 
%82
	<g c e>2 <c f>8 <bes g'> | <a d fis>4 <fis a d> <g bes d>
	<a c>8 <g bes> <fis a>4. g8 | <bes, d g>2 <g' d' f>4
%86
	<g c e>2 <c f>8 <bes g'> | <a d fis>4 <fis a d> <g bes d>
	<a c>8 <g bes> <fis a>4. g8

	
\key g \major
	<b, d g>4 r8 <d g b>8 <d g b>8 <d g b>8 |
%page 220 mes. 90 (820)
	<d a' d>2 <d a' d>4 
	<< { d'4 cis2 } \\ 
	{ <e, g>2.  }  >> 
	<fis a d>2 <d fis a>4 
	<d g b> r8 <d g b> <d g b> <d g b> %pas sûr de ces 2  dernières notes !
%94
	<d a' c>2 <d a' c>4 | 
	<< { d'4 cis2 } \\ 
	{ <e, g>2.  }  >> 
	<fis a d>2 <fis a d>4
	<d g b>4 r <d g b>
%98
	<e g c> r <e a c> | <d fis a> <d g b> r8 <d g b> 
	< e g c >4 <d fis a>2 | <d g b>4 r <e g b>
%102
	<e g c>4 r <e a c> | <d fis a> <d g b> r8 <d g b>8
	<< { <g c>4  } \\ 
	{ c,8 e <d fis a>2  }  >>
	<b d g>4 <d g b>4._\markup \bold "al segno"  <d g b>8
%page 222 mes. 106 (836)
r2 <d g b>4 | <d g d'>2 
	<< { d'8 b } \\ 
	{ g4  }  >>
	<g c e>2 <e g e'>4
	<e g c>4 <d g a> <fis a d> | <d g b>2 <d g b>4
%111
	<g b d>4
	<< { d'8 cis } \\ 
	{ <e, a>2  }  >>
	<fis a d>2 <fis a d>4 | <g d' g>2 <g d'>4
	<g e'>4 <fis a c>4. <d g b>8 | <d g b>2 <e g c>4 % pas sûr de ce dernier accord !
%116
	<c f a>4 <c f a>4. <d f b>8 | <b e gis>2 <a e' a>4
	<< {<f' a>2.  } \\ 
	{ e4 d c}  >>
%119
	<c e a>4 <b e gis>2 <c e a>2 <e a c>4 
%121
	<e g b>2 <e a c>4 | <d b' d> <fis a c> <g b> |
	<d fis a>2 <g b>4 | <a c>2 <g b>8 <a c> | <d, fis a>2 <b' d>4
%page 224 mes 126 (856)
	<< {e4 fis g  } \\ 
	{ b,4 b4. a8}  >>
	<b g'>4 <a fis'>2 | <b g'>4 r <a d> | <g b>4 r 
	<< {d'4  } \\ 
	{ g,8 fis}  >> |
	<g b>4 r 
	
	<g d'>
%131
	<e g c>4 <d g b> <d fis a> <d g b> r <a' d> |  <g b>4 r 
	<< {d'4  } \\ 
	{ g,8 fis}  >> |
	<g b>4 r <g d'>
	<e g c>4 <d g b> <fis a d>8 <fis a d>8
%page 225 mes. 136 (866)
	<d g b>2 <g b d>8  <g b d>8 | <g c e>2 <g c e>4 | 
	<a c e> <fis b e> <fis b dis> 
	<gis b e>2. | <e a cis>2 <d a' d>4
%141
	<g cis e>4 <a d fis> <a e' g> | <a d fis>2 <g cis e>4 
	<d a' d>2 <g cis e>8 <g cis e>8
	<a cis e>2 <a cis fis>4
%145
	<fis b d>2 <b d e>4 
	<< {<d fis>4 <cis e>2  } \\ 
	{ a2.}  >> |
	<fis a d>2 r4
	
	R2.*11
	
%%page 227 mes.159 (889)
	r4 <b, d g>4. <d g b>8 |
	<< {<a' d>2. } \\ 
	{ d,4 fis d}  >> |
	
	<< {d'4 cis2 } \\ 
	{ <e, g>2.}  >> |
	
	<fis a d>2 d4
	<b d g>2 <d g b>4
%164
	<< {<a' d>2. } \\ 
	{ d,4 fis d}  >> |
	
	<< {<e g>2. } \\ 
	{ d4 cis2}  >> |
	
	<d fis>4 <fis a>2 | <d g>4. <d fis a>8 <d g b>4 | <e g c>2 <e a e'>4
%page 228 mes. 169 (899)
	<fis b d>4 <g b d>2

	<< {<a d>2. } \\ 
	{ g4 fis2}  >> |

	<d g b>2 <b d g>4  | <c e> <e a c>2 |
	<d fis a> <b e g>4 | 
	
	<< {g'4 fis4.g8 } \\ 
	{ <c, e>4 <a d>2}  >> |
%175
	<b d g>2 <d g b>4 | 
	
	<< {c'2.} \\ 
	{ <c, g'>2 f4}  >> |
	<f d'>4 <g d'> <d g b> |
	<e g e'> <g c e> <c, g' c> |
	
	<< {a'4. b8 c4 } \\ 
	{ <c, fis>2 e4}  >> |
%page 229 mes. 180 (910)
	<f a d>4
	<< {b4. c8 } \\ 
	{ <d, g>2}  >> |	

	<e g c>2 <a e'>4 | 
	
	<< {d2. } \\ 
	{ a2 g4}  >> |
	
	<g e'>4 <g c> <fis a> | 
	<g b>2 <b d>4 |
%185
	<b d>2 <cis e>4
	<d fis> <cis g'>4. <d fis>8
	<d fis>2 <fis, a d>4 | 
	<g d' g>2 <g d'>4
	<g e'> <g d'> <fis c'> |
% dernier page (230) (ouf) (920)
	<d g b>2 <d g d'>4 | 
	<< {g4. a8 } \\ 
	{ <b, e>2}  >> <d g b>4
	<e g c>4 
	<< {a4 g8 } \\ 
	{ <d fis>2}  >> |
	<b d g>2 <d g b>4 |
	<c g' c>2 <fis c'>8 <fis c'>8 |
%195
	<f g d'>2.
	<e g d'>4   <fis! c'>4. <g b>8
	<d fis a>2 <d g d'>4 |
	<e g c>4. <fis c'>8 <e g b>4
	
	<< {c'4 a4 g8 } \\ 
	{ <e g>4 <d fis>2}  >> | | <b d g>2. |
	
  
}

lower =

 \relative c { 

         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 3/4
        \clef "bass"  
        \key g \major
            r4 g'4. g8 | fis4 fis d | e b b | c d d, | g g'4. g8  
       
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
	b4 b g | a2 a4 | d,2 r4 | R2.*11
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

\score { 
		
	
  <<
    \new Voice = "mel" {  \melody }
    \new Lyrics \lyricsto mel \text
    \new PianoStaff <<	    
    	    {
         \override Score.BarNumber.break-visibility =#end-of-line-invisible
          
         \override Score.RehearsalMark.padding = #2.5
         \resetBarnum
        \override  Score.BarNumber.self-alignment-X = #LEFT 

  }  
    	    
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
   \layout {
    \context { \Score
   \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1 2)
    }
  }
   
  \midi { }
}
