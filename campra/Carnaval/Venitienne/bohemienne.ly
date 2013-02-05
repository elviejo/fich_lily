\version "2.17.7"

% \context Voice = "bohemienne"
%bohemienne =

\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "une bohé-"
	\line {"mienne" } } }
	\set Staff.midiInstrument = "voice oohs"
	\set Staff.shortInstrumentName =#"bohém."

	
		\time 6/4
  		\clef treble 
                \key d \major

 	\partial 1
 	r1 | R1.*33 | % \break
 	s2 \bar ""\break a4^\markup \italic \bold "une bohémienne" d2 d4 |

%348	
  \set Score.currentBarNumber = #348
	e2 e4 fis4. g8 fis4 | e2-+ a,4 d2 d4 |
	e2-+ e4 fis4. g8 fis4 | e2-+ fis4 e2-+ d4 | 
%351	
	cis2-+ b4 a4. b8 cis4 | d2 fis4 e2-+ d4 
	cis2 b4 a4. b8 cis4 | d2  \bar ""\break 

	
	}

texte_one =	\lyricmode
	 {
		A- mor, a- mor, te'l giu- ro a fé,
		A- mor, a- mor, te'l giu- ro a fé,
		Tuo cru- do stral non fa più per me 
		Tuo cru- do stral non fa più per me 
		
	}
               
                
                
                

                
                
                
                
                
                
                
                

       
              
