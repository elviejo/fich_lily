\version "2.17.7"

\context Voice = "Clavecind"

%resetBarnum = \context Score \applyContext % pour la numérotation des mesures
%  #(set-bar-number-visibility 3)
  
\relative c' { 
%	\set Staff.instrumentName = \markup { \column { "Clavecind" } }
	\set Staff.midiInstrument = "Harpsichord"
%	\set Staff.shortInstrumentName =#"cel."
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
	
	
%  {     \override Score.BarNumber.break-visibility =#end-of-line-invisible
%  	  \resetBarnum
%         \override  Score.BarNumber.self-alignment-X = #LEFT
%  }
  	
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
  
	<< { <d a'>2. } \\  { g4 fis < fis a d>4 }
        >> 
%21
 <d g b>4 r2 | 
 <g d' f>4 r2 | <g c e>4 <e a c>2 |  
  
  << {  g4 fis2 } \\  {  <d a'>2. }
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
   << {  d'4  } \\  {  g,8 fis8 }
   >> 
%%35
<g b>4 r <g d'> |
% page 215 mes. 36 (766)
<e g c>4 <d fis a>2 | <d g b>4 <g b> <a d> | <g b> r 
 << {  d'4  } \\  {  g,8 fis8 }
 >> 
%39
<g b>4 r <g d'> |
%40
<e g c> <d fis a>2  |  <d g c>4 <d g c>4 <d g c>4 |
%42
<d a'>4 
	<< {  b'8 c d4 } \\ {  <d, fis>4 <d a' d>4 }
        >> 
        
        << {  d'4  cis2 } \\ { <e, g>2. }
        >> 	
%44
<fis a d>2.  |  <d g b>  | 
%46
<d a'>4 
	<< {  b'8 c d4 } \\ 
		{  <d, fis>4 <d a' d>4 }
        >> 
%47
	<< {  d'4  cis2 } \\  { <e, g>2. }
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

	<< {  es'4 d d8 es } \\  { <f, bes>2 g4 }  >> 	

	<< {  <a d>2. } \\ { g4 fis2 }  >> 
	
	<g bes d>4 <g bes es>4. <g bes es>8
%62
<g c es>4 <f c' es>2
	<< { es'4 d g } \\ 
	{ <f, bes>2 <bes d>4 }  >> 

	<< { g'4 fis2 } \\ { <a, d>2. }  >> 
%65
<bes d g>4 <g bes d> <g bes es>  |  

	<< { es'4 f c } \\ { <f, c'>2 f4 }  >> 
%page 218 mes.67 (797)
<f bes d>4 <bes d g>2  | <bes d g>4 <a d fis>2 |
<bes d g>4 <g bes d> <g bes es> |

	<< { es'4 f c } \\ { <f, c'>2 f4 }  >> 
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
	<< { d'4 cis2 } \\ { <e, g>2.  }  >> 
	<fis a d>2 <d fis a>4 
	<d g b> r8 <d g b> <d g b> <d g b> %pas sûr de ces 2  dernières notes !
%94
	<d a' c>2 <d a' c>4 | 
	<< { d'4 cis2 } \\ { <e, g>2.  }  >> 
	<fis a d>2 <fis a d>4
	<d g b>4 r <d g b>
%98
	<e g c> r <e a c> | <d fis a> <d g b> r8 <d g b> 
	< e g c >4 <d fis a>2 | <d g b>4 r <e g b>
%102
	<e g c>4 r <e a c> | <d fis a> <d g b> r8 <d g b>8
	<< { <g c>4  } \\ { c,8 e <d fis a>2  }  >>
	<b d g>4 <d g b>4._\markup \bold "al segno"  <d g b>8
%page 222 mes. 106 (836)
r2 <d g b>4 | <d g d'>2 
	<< { d'8 b } \\ { g4  }  >>
	<g c e>2 <e g e'>4
	<e g c>4 <d g a> <fis a d> | <d g b>2 <d g b>4
%111
	<g b d>4
    << { d'8 cis } \\ { <e, a>2  }  >>
	<fis a d>2 <fis a d>4 | <g d' g>2 <g d'>4
	<g e'>4 <fis a c>4. <d g b>8 | <d g b>2 <e g c>4 % pas sûr de ce dernier accord !
%116
	<c f a>4 <c f a>4. <d f b>8 | <b e gis>2 <a e' a>4
   << {<f' a>2.  } \\ { e4 d c}  >>
%119
	<c e a>4 <b e gis>2 <c e a>2 <e a c>4 
%121
	<e g b>2 <e a c>4 | <d b' d> <fis a c> <g b> |
	<d fis a>2 <g b>4 | <a c>2 <g b>8 <a c> | <d, fis a>2 <b' d>4
%page 224 mes 126 (856)
    << {e4 fis g  } \\ { b,4 b4. a8}  >>
	<b g'>4 <a fis'>2 | <b g'>4 r <a d> | <g b>4 r 
    << {d'4  } \\ { g,8 fis}  >> 
	<g b>4 r 
	
	<g d'>
%131
	<e g c>4 <d g b> <d fis a> <d g b> r <a' d> |  <g b>4 r 
    << {d'4  } \\ { g,8 fis}  >> 
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
    << {<d fis>4 <cis e>2  } \\ { a2.}  >> |
	<fis a d>2 r4
	
	R2.*11
	
%%page 227 mes.159 (889)
	r4 <b, d g>4. <d g b>8 |
    << {<a' d>2. } \\ { d,4 fis d}  >> |
	
    << {d'4 cis2 } \\ { <e, g>2.}  >> |
	
	<fis a d>2 d4
	<b d g>2 <d g b>4
%164
    << {<a' d>2. } \\ { d,4 fis d}  >> |
	
    << {<e g>2. } \\ { d4 cis2}  >> |
	
	<d fis>4 <fis a>2 | <d g>4. <d fis a>8 <d g b>4 | <e g c>2 <e a e'>4
%page 228 mes. 169 (899)
	<fis b d>4 <g b d>2

    << {<a d>2. } \\ { g4 fis2}  >> |

	<d g b>2 <b d g>4  | <c e> <e a c>2 |
	<d fis a> <b e g>4 | 
	
    << {g'4 fis4.g8 } \\ { <c, e>4 <a d>2}  >> |
%175
	<b d g>2 <d g b>4 | 
	
    << {c'2.} \\ { <c, g'>2 f4}  >> |
	<f d'>4 <g d'> <d g b> |
	<e g e'> <g c e> <c, g' c> |
	
    << {a'4. b8 c4 } \\ { <c, fis>2 e4}  >> |
%page 229 mes. 180 (910)
	<f a d>4
    << {b4. c8 } \\ { <d, g>2}  >> |	

	<e g c>2 <a e'>4 | 
	
    << {d2. } \\ { a2 g4}  >> |
	
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
    << {g4. a8 } \\ { <b, e>2}  >> <d g b>4
	<e g c>4 
    << {a4 g8 } \\ { <d fis>2}  >> |
	<b d g>2 <d g b>4 |
	<c g' c>2 <fis c'>8 <fis c'>8 |
%195
	<f g d'>2.
	<e g d'>4   <fis! c'>4. <g b>8
	<d fis a>2 <d g d'>4 |
	<e g c>4. <fis c'>8 <e g b>4
	
    << {c'4 a4 g8 } \\ { <e g>4 <d fis>2}  >> | | <b d g>2. |
	
  
}
