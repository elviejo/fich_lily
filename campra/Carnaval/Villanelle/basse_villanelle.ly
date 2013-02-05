\version "2.17.7"

\context Voice = "basse"


\relative c' { 
	\set Staff.instrumentName = \markup { \column { "Basse" } }
	\set Staff.midiInstrument = "cello"
	\set Staff.shortInstrumentName =#"Bas."
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
	
  		\time 3/4
 	 		\clef bass 
                \key a \minor
                
                \set Score.currentBarNumber = #384
                \partial 2
                
	d4 cis
	d a d     c c f,    g a a,   d d' cis    d a d    c c f,
%390
	 g a a,    d d e    f f bes,    c c' a     bes c c,   
	 f f g    e e d    a' a b    cis d d,
%399
	a' d cis    d a d c c f,   g a a,   d d' cis   d a d    c c f,   g a a,
%407
	d r r | R2.*7
%415
	r4 d'4 cis     d a d     c c f,    g a a,   d d' cis    d a d    c c f,
%422
	 g a a,   
%423	 
	d f e    d a' f   g g e   f g g,   c c' b   a gis a  | d, e c   d e e,
%431
	a d' cis  d a d   c c f,    g a a,   d d' cis    d a d    c c f,   g a a, 
%439
	d r r   R2.*7 r4
%447
	d'4 cis   d a d   c c f,  g a a,  d d' cis   d a d   c c f,   g a a,  
	d 

	d'4 cis  | d a d | c c f, | g a a, |
%459	
	d d' cis | d a d | c c f, | g a a, | d
%avec soprano
	d'4 cis  | d a d | c c f, | g a a, |
%459	
	d d' cis | d a d | c c f, | g a a, | d 
%fin 471	

	c'4   bes | a a bes | c c a | bes c c, |
	f d e | f g g | a f f | g a a, | d 
% on revient au choeur et pendant ce temps, la bohémienne ne chante pas
	
	
%479 on est revenu au choeur et on passe à fin de mes. 479 2ème et 3ème temps	
	d'4 cis | d d d, | g g e | f g g, |
	c c' b | a gis a | d, e  c | d e e, | a
	%\bar "||"\break  
	

	
                
    
} 
       
              
