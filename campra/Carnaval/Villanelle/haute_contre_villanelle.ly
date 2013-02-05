\version "2.17.7"

\context Voice = "Haute_contre"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Haute_contre" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"Hte_c."
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
	
  		\time 3/4
  		\clef treble %alto 
                \key a \minor
                
                \set Score.currentBarNumber = #384
                \partial 2
                
       a4 a | a cis d | e c d8 c | bes a g f g e | f4 a a | a cis d | e c d8 c |    
%390
	bes a g f g e | f4 d' c | c c d | c c c | d c4. c8 | c4 f d |
	e e a, | a a g | e a d
%399
	cis a a | a cis d | e c d8 c |  bes a g f g e | f4 a  a 
	a cis d | e c d8 c | bes a g f g e |
%407
	f4 d' cis d d cis | d d d | c bes4. a8 | a4 a gis | a4 a gis | a4 a f | g a a
%415
	d,4 a' a | a cis d | e c d8 c | bes a g f g e | f4 a a | 
	 a cis d | e c d8 c | bes a g f g e | 
%423	 
	 f4 d' cis | d c d | b b c | a g4. g8 | g4 c gis | a b a | a gis a | f e4. e8
%431
	e4 a a | a cis d |  e c d8 c | bes a g f g e | f4 a a | 
	 a cis d | e c d8 c | bes a g f g e | 
%439
	e4 d' d | d d d | d d bes | g d d | g g a | bes bes g | a a f | g a a,
%447
	d'4 a a | a cis d |  e c d8 c | bes a g f g e | f4 a a | 
	a cis d |  e c d8 c | bes a g f g e | f4 s s
	
	  R2.*7 s4
%463
	a4 a | a cis d | e c c | bes a4. a8 
	a4 a a | a cis d | e c c | bes a4. a8 | a4 s s

	 R2.*7 s4 
    
} 
       
              
