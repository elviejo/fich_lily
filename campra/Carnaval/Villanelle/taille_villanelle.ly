\version "2.17.7"

\context Voice = "Taille"


\relative c' { 
	\set Staff.instrumentName = \markup { \column { "Taille" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"Tvn."
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	
	\once \override Staff.TimeSignature.style = #'()
	
  		\time 3/4
  		\clef treble
                \key a \minor
                
                \set Score.currentBarNumber = #384
                \partial 2
                
	f4 e | d e d | g g f |  e e a | a f e | d e d | g g f |                	
%390
	 e e a | a a g | f f g | g g a | g g4. g8 | a4 a g | g g f | e-+ e d | g f a 
%399
	a f e | d e d | g g f | e e a | a f e | d e d | g g f | e e a |
%407
	a4  \set fontSize = #-4 
	\override  Stem #'length =#6.0
	d cis d d cis | d d d | c bes4. a8 | 
	a4 a gis | a4 a gis | a4 a f | g a a
%415
	d, \set fontSize = #0 
	\revert Stem #'length
	f e | d e d | g g f | e e a | a f e | d e d | g g f | e e a |
%423
	a f g | a a a | g g g | f d4. d8 | e4 g b | e, e e | f e e | f8 e d c d b
%431
	c4 f e | d e d | g g f | e e a | a f e | d e d | g g f | e e a |
%439
	a4 \set fontSize = #-4 
	\override  Stem #'length =#6.0
	d_\markup \italic \large "doux" d | d d d | d d bes | 
	g d d | g g a | bes bes g |  a a f | g a a, |
%447
	d4 \set fontSize = #0 
	\revert Stem #'length % =#5.0
	f e | d e d | g g f | e e a | a f e |
	d e d | g g f | e e a | a s s
		
	R2.*7 | s4
%463
	f4 e | d e d | g g a | g e4. e8
	f4 f e | d e d | g g a | g e4. e8 | f4 	s s
	
	 R2.*7 s4 
    
} 
       
              
