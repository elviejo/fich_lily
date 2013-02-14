\version "2.17.7"

\context Voice = "flute"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "flute" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"fl."
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
                
                r2 | R2.*23 |
                
       	r4 a'^\markup \italic "flûtes" a | a a a | a f bes | a bes8 a bes g | 
       	a4 e e | e e e | e e a | bes8 a g f g e |
%415
	f4 d^\markup \italic "tous" e-+ | f e f | g e a | g8 f e-+ d e cis | d4 d e-+ | f e f 
	g e a | g8 f e-+ d e cis |
%423
	R2.*16
%439
	d4 a'^\markup \italic "flûtes" a | bes a a | bes a-+ g | bes a8 g a fis | 
	g4 bes a | g-+ g f | e-+ e a | d, d4.-+ cis8
%447
	d4 d^\markup \italic "tous" e-+ | f e f | g e a | g8 f e-+ d e cis | 
	d4 d e-+ | f e f | g e a | g8 f e-+ d e cis | d4 %\bar "||"
	
	r2 R2.*7
		

	
                
                
                
                
                
                
                
                
                
                
                
                
                
                
} 
       
              
