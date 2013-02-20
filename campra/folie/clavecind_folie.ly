\version "2.17.7"

        
\context Voice = "clavecind"
\relative c { 
	 \set Staff.instrumentName = \markup { \column { "" } }
         \set Staff.midiInstrument = "harpsichord"
  
  	\time 2/2
        \clef treble  
        \key bes \major
        
        <bes' d g>2 <d g bes>4 <bes d g> | <g' bes d>2 <g bes d>4 <bes d g>
%3
	<a d fis> <fis a d> <g d' g> <a c fis> |
        <bes d g>2 <fis c' fis>4 <a c es> | 
        
        << { <bes d>2  <fis c'>4 <g bes> } \\
          { f4. g8 d2 }		% et voilà le bon !!!
       >> 
%6
<d fis a>4 <a d fis> <bes d g> <c fis a>
<d g bes>2 <bes d g>4 <d g bes>

	<< { d'2. <a c>4 } \\
	   { <f a>4 <f bes> <g bes> g4 }		
       >> 
%9
	<fis a d>1
	<fis a d>1
% 11
	<bes d f>2 <bes d f>4 <f bes d> | 
	<d f bes> <bes d f> <d f bes> <f bes d >
	<f a c> <c f a> <bes'd f> <f bes d> |
	
	<< {<bes es g>4 <f bes f'> <a es'> <bes d> } \\
	{ bes f f2 } >>	

	<< {c'2 f } \\
	{ <f, a>2 <a c>4 <a d> } >>	
%16	
	<< {<bes d>4 <c es> <a c>2 } \\
	{ g2 f } >>
  
	<d f bes>2 <d f bes>4 <f a c> | 
	
	<< {<bes d>4. <c es>8 <bes d>4 <f bes> } \\
	{ f2. d4 } >>
	
	<< {g4 c a4. g8  } \\
	{ <bes e>4  <es g> <c es>2 } >>
	
	<a, d fis>2 <d g d'>4 <d g>
%21
	<< { d'4 e8 f e4 fis8 g } \\
	{ <g, bis>4 <b d>4 <g c> <a c>} >>
	
	<a d fis>2 <fis a d>4 <a d fis> 
      
	<bes d g>2 <a d g>4 <a d fis>
	<bes d g>1 <bes d g>1
  
  }
  
