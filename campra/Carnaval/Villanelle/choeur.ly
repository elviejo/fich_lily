\version "2.17.7"

% \context Voice = "soprano"
%soprano =

\relative c' { 
	\set Staff.instrumentName = \markup { \column { "Soprano" } }
	\set Staff.midiInstrument = "voice oohs"
	\set Staff.shortInstrumentName =#"Sopr."
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
	
  		\time 6/4
  		\clef treble 
                \key d \major
                
                \set Score.currentBarNumber = #292 %384              
                \partial 1
                
                r2 | R2.*79 | s4 \break
                
%463
	 d'4 \tweak #'color #red ^\markup {\halign #+0.7 \bold \italic
        {\fontsize #2 { "Choeur"}} } e  | f  e f | g e f | d d4.-+ cis8 |
%467	
d4 d e | f e f | g e f | d d4.-+ cis8 | d4^\markup \bold \italic "[fin}"
	
	s2 R2.*8 s4 %\break
	}

	
texte =	\lyricmode
	 {
	A- mor, a- mor, te'l giu- ro a fé,
	A- mor, a- mor, te'l giu- ro a fé,
	Tuo cru- do stral non fa più per me 
	Tuo cru- do stral non fa più per me
	
	
	
	
	}
               
                
                
                

                
                
                
                
                
                
                
                

       
              
