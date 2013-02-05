\version "2.17.7"

\context Voice = "clavecind"


\relative c' { 
%	\set Staff.instrumentName = \markup { \column { "Clavecind" } }
	\set Staff.midiInstrument = "harpsichord"
%	\set Staff.shortInstrumentName =#"cello"
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
		
  		\time 3/4
  		\clef treble 
                \key bes \major
                
       R2. 
       \repeat volta 2 {
        
       	       R2.*2 | r4 <d g bes>4 <es g c>8. <f b d>16
       	       <g c es>4  <g c es>4  

	<<	{c8 [<bes d, >16] } \\ {<es, g>4 } >>	
%6
	<c f a>4 <bes f'bes>4. <d f bes>8
	<es a c>8. <f bes d>16 <f a c>4. <c f bes>8
	<d f bes>2.
%9
	r4 <d f bes>8. <es f a>16 <d f bes>8. <f c'>16
	<< {<bes d>4 e4. d16 e} \\ {f,4 <g c>2 }>>
	<a c f>4 
	<< { c8. b16 c8. d16} \\ { a8. d,16 <f a>4 } >>
%12
	<f a b>4 <e g b>8. <e cis'>16 <e g d'>4
	<e g cis> <e a cis> \stemUp<f a d>8. <g cis e>16 \stemNeutral
	<a d f>4 <f a d> 
	<<{d'4} \\ {g,8. <f a>16 }>>
	<< { e'4 cis4. d8 } \\ { <bes d>4 <e,a>2 } >>
	
	
	
   }
       \alternative {
       	       {<fis a d>2. | R2. }
       	       {\time 12/8 <f a d>4. r r2. }    
       }
       \repeat volta 2 {
       
       	R1.*3 | r4. <d g bes>4. <es g c> <c f a> |
%23
	<d f bes>4. <f bes d> <g bes e> <e a cis>
	<f a d> <g a e'> <a d f> <b c g'> 
	<< {a'4. e4 \stemUp d8 <a cis>4. <d f>}  \\
	{<a c>4. <g bes>4 f8 e4. a4. } >>

%26
	<< {e'4. <cis e>8 <d f> <e g> <d f>4 <bes d>8 cis4 d8 } \\  
	{<g, bes>4 bes8 a4. a4 f8 <e a>4.} >> |	
%27
	<fis a d>4. <a d fis> <g d' g> <g c e>
	<f c' f> <bes, f'> <bes g'> <c f a> |
%29
	<d f bes>4. <es f c'> <f bes d> 
	<< {es'4. } \\ { <es, g>4 <g c>8 | } >>
%30
	<f bes f'>4. <g bes es> <f a c> <f bes d> |
%31
	<g bes es> 
       << { <a c>8 [<bes d> <c es>] d4. d4 bes8} \\ 
       {f4. <f bes>8 [ a8 g] f4 f8 } >>
%32   pas sûr de cettre mesure quant à la présentation !
<d f bes>4. % r8 r <f bes d>8 

<< {d'8 bes4 es8 d c b4 c8 } \\ { r8 r <f, bes>8 g f <es aes>8 <d g>4.} >> 

%33
	<es g c>4. << { <g d'>4. es'4.} \\ { d,4 f8 <es g>4. }>> <f g d'>4.
%34 
	<e g es'> <g c e> <a c e> <c e a> 	
	<a d fis> <a e' g> <a d fis>
	<< { \stemDown bes4 c8 } \\ { \stemUp <g g'>4. }>>
%36
	<bes d f>4. <g bes es> <f bes d> <es g! a>
	<d fis a> <a d fis> 
	<<{ <g' d'>8 <fis c'> <g bis> <fis a>4 g8 } \\ {d4. d } >>
%38
	<bes d g>4. <c d a'> <bes d bes'> <d a'>
	<bes d bes'> <<{ c'4. d e | fis } \\ { f,4. <f bes> <e g> | <d a'>} >>
	<a' c g'>4. <a d fis> <a c g'> |
%41
<a d fis> <fis a d> <g bes d>  << { d'4. } \\ { <d, a'>4 < fis c'>8 } >>
%42 OUFF!!
	<g bes d>4. << { g'8 [f]} \\ {<g, bes>4 } >> <a c es>8 
	<< { <f d'>8 <fis c'> <g bis>} \\ { d4.} >> <d fis a>4 <d g>8
       }       
        \alternative {
        	{<bes d g>4. r r2. }
        	{<bes d g>1.   }
        }
	\bar "|." } 	
         
          
       
            
