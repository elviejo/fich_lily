\version "2.17.7"

 \context Voice = "hautbois"


\relative c' { 
	\set Staff.instrumentName = "Hautbois"
	%\markup { \column \magnify #1.5 { "Haute-contre" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"Htb"
	
		\time 4/4
  		\clef treble
                \key g \major

               \set Score.currentBarNumber = #217
 %              \set fontSize = #-3
               
 r8^\markup {\halign #-0.3 \bold {"    Gay et piqué" }}
<< 	{ fis8 g b c d^\markup \italic "(Violon)" b4 | a c a8 b a4 | } \\
	{ d,8 d4 d d | fis g d e8 fis }
>>  	

%219
<<	{ g4 d' a b | c a b a | } \\
	{ b, g' e fis | g d d fis }
>>
	<b, g'>4 r r2
<<	{ a'4 c a8 b a4 | } \\
	{ fis4 g d e8 fis }
>>

%223
< d b'>4 r r2 |  <d fis>4 <d g>			
<<	{  a'8 g g fis } \\
	{d8 d16 a a4 }
>>	
	<b g'>4 <a' d> <e a> <fis b>  | <g c>  <d a'>  <d b'> <fis a> |
	<b, g'> r r <b g'>8 <c fis> |
<<	{g'4 g8 fis  } \\ { d8 e d c }
>>
	<b g'>4 r
	
%229
	r2 <b dis>4 
<< 	{e8.dis16 e8 fis g a <e g> e dis4 } \\ { b8. a16 b4. c8 b c b fis } >>

	<g e'>4 r r2 | <fis' a>4
<<	{ g8 a16 b cis8 d d cis } \\ { d,4 e8 fis e4 } >>

%233
	<fis d'>4 r r2 | 
%234
	<fis a>4 <g c>8 <e g> 
	<<{a8 b a a } \\ { d,4 e8 fis } >>	

%235
	<d b'>4 r r2 | 			
%236
	<d fis>4 <d g> <d a'>8 <b g'>
	<< {g'8 fis } \\ { a,4 }>>
	
%<< 	{ fis'4 g a8 g g fis } \\ { d4 d d8 b a4 } >> <b g'>4 r8
%<<	{ b' c b b a  |} \\ {  g e d d f } >> 

%237
<d b'>4 <e a> << { b'4 a } \\ { fis8 g fis d } >> 
%238
	<d b'>4 r8 <g b> <e c'> <d b'> <d b'> <f a >		
%239
	<e gis>4 <gis b> < e a>8. <d gis!>16  <c a'>4 | 
%240
	r2 <e a>4  <e a> |
%241
	<< {a4 b c8 b <g d'>4 |  |} \\ { fis d d8 f f4 } >>
%242
	<e g c>4 <d g b>8. <g  cis>16 
	<<{ d'4 d8. cis16 } \\ {fis,8 a b a16 g } >>
%243
	<fis d'>4 r r2 |
%244
	<fis a>4 <g c> << { a8 b a4} \\ { d,4 e8 fis } >>
%245
	<d b'>4 r r2 |
%246
	<d fis>4 <d g> << { a'8 g g fis } \\ { d8 b16 a a4 } >>	
%247
	<b g'>4 <g' d'> <e a> <fis b>
%248
	<g c>4 <d a'> <d b'> <fis a> | <b, g'> r r2		
		

}	
