\version "2.17.7"

\context Voice = "violon"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "violon" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"Vn"
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
                
       	d4 f^\markup \italic "violons" e | f f e | f d f | g d4. e8 | 
       cis4 cis b | cis4 cis b | cis a a | d d cis |
%415
	d4 d^\markup \italic "tous" e-+ | f e f | g e a | g8 f e-+ d e cis | 
	d4 d e-+ | f e f | g e a | g8 f e-+ d e cis |
%423
	d4 a' g | f e f | d4-+ d g | c, c4.-+ b8 | c4 e d | c b c | 
	d b e | a, a4. gis8 |
%431
	a4 d e-+ | f e f | g e a | g8 f e-+ d e cis |
	d4 d e-+ | f e f | g e a | g8 f e-+ d e cis 
%439                
        d4 fis^\markup \italic "violons" fis | g fis fis | g fis d | 
        e8 d c bes c a | bes4 g' f | 
        e e d | cis cis a | bes8 a g f g e |
%447
	f4 d'^\markup \italic "tous" e-+ | f e f | g e a | g8 f e-+ d e cis | 
	d4 d e-+ | f e f | g e a | g8 f e-+ d e cis | d4 s s
                
                
                
                
                
                
                
                
                
                
                
} 
       
              
