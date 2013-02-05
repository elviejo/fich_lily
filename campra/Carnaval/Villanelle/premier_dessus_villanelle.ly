\version "2.17.7"

\context Voice = "premier_dessus"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Premier dessus" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"1er des."
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
%	\indent = #10
	
  		\time 3/4
  		\clef treble 
                \key a \minor
                
                \set Score.currentBarNumber = #384            
                
                \partial 2
                
	d4 e-+ | f e f | g e a | g8 f e-+ d e cis | d4 d e-+ | f e f | g e a |
%390
	g8 f e-+ d e cis | d4 f g | a a bes | g-+ g c | f, f4.-+ e8 |
	f4 a bes | g-+ g a | cis, a d | e f4. g8 |
%399
	e4-+ d e-+ | f e f |
	g e a | g8 f e-+ d e cis | d4 d e-+ | f e f | g e a |
          g8 f e-+ d e cis  \break 
%407
       d4 f^\markup \italic "violons" e | f f e | f d f | g d4. e8 | 
       cis4 cis b | cis4 cis b | cis a a | d d cis |
%415
	d4 d^\markup \italic "tous" e-+ | f e f | g e a | g8 f e-+ d e cis | d4 d e-+ | f e f 
	g e a | g8 f e-+ d e cis |
%423
	d4 a' g | f e f | d4-+ d g | c, c4.-+ b8 | c4 e d | c b c | d b e | a, a4. gis8 |
%431
	a4 d e-+ | f e f | g e a | g8 f e-+ d e cis |
	d4 d e-+ | f e f | g e a | g8 f e-+ d e cis   \break    
%439                
        d4 fis^\markup \italic "violons" fis | g fis fis | g fis d | e8 d c bes c a | bes4 g' f | 
        e e d | cis cis a | bes8 a g f g e |
%447
	f4 d'^\markup \italic "tous" e-+ | f e f | g e a | g8 f e-+ d e cis | d4 d e-+ | f e f 
	g e a | g8 f e-+ d e cis 
	d4 \bar "||"  
                
% 455   
          r2 R2.*7
          
%463
	s4 d4 e | f e f | g e f | d d4. cis8 
	d4 d e | f e f | g e f | d d4. cis8 | d4 s s %\bar "||"% \break
	
	 R2.*7 s4 \break
	                

	
                
                
                
                
                
                
                
                
                
                
                
                
                
                
} 
       
              
