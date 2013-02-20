\version "2.17.7"

\context Voice = "Quinte"


\relative c { 
	\set Staff.instrumentName = \markup { \column { "Quinte" } }
	\set Staff.midiInstrument = "bassoon"
	\set Staff.shortInstrumentName =#"Bsn"
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
                
	d'4 a | d a' f | e e d | d a4. a8 | 
	a4 d a | d a' f | e e d |
%390
	d a4. a8 | a4 d g, | c a d | e e f | d e c | c a d | 
	cis cis d | e cis d | a d d |	
%399
	e d a | d a' f | e e d | d a4. a8 | a4 d a | d a' f | e e d | d a4. a8
	
%407
	a4 \set fontSize = #-4 
	\override  Stem #'length =#6.0
	d_\markup \italic \large "doux" cis d d cis | d d d | c bes4. a8  
	a4 a gis | a4 a gis | a4 a f | g a a | 
%415
	d, \set fontSize = #0 
	\revert  Stem #'length %=#6.0
	 d' a  | d a' f | e e d | d a4. a8 | a4 d a | 
	d a' f | e e d | d a4. a8 | 
%423
	a4 a e' | a, c a | b b e | c g4. g8 | g4 c d | e d c | a e' a, | b4 b4. a8
%431
	a4 d a | d a' f | e e d | d a4. a8 | a4 d a | d a' f | e e d | d a4. a8
	
%439
	a4 \set fontSize = #-4 
	\override  Stem #'length =#6.0
	d_\markup \italic \large "doux" d | d d d | d d bes | 
	g d d | g g a | bes bes g |  a a f | g a a, |
%447
	d \set fontSize = #0 
	\revert Stem #'length %=#6.0
	d' a | d a' f | e e d | d a4. a8 | a4 d a | d a' f | 
	e e d | d a4. a8 | a4 s s

    	    R2.*7 s4
%463
	d4 a | d a' f | e e a, | d a4. a8 
	a4 d a | d a' f | e e a, | d a4. a8 | a4 s s
	
	R2.*7 s4 
	
	
	
	
} 
       
              
