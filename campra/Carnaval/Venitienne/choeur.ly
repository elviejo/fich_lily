\version "2.17.7"

% \context Voice = "choeur"
%soprano =

\relative c' { 
	\set Staff.instrumentName = \markup { \column \magnify #2 { "Choeur" } }
	\set Staff.midiInstrument = "voice oohs"
	\set Staff.shortInstrumentName =#"Choeur."

	
  		\time 6/4
  		\clef treble 
                \key d \major
                	
                \partial 1 
                
                r1 | R1.*41 | 
 
%356
	 s2 a'4 \tweak #'color #red ^\markup {\halign #+0.7 \bold \italic
        {\fontsize #2 { "Choeur"}} } d2 d4 | 
        e2 e4 fis4. g8 fis4 |
        e2-+ a,4 d2 d4 | e2-+ e4 fis4. g8 fis4
%360
	e2-+ fis4 e2-+ d4 | cis2-+ b4 a4. b8 cis4 | 
	d2 fis4 e2-+ d4 | cis2-+ b4 a4. b8 cis4 | 
	d2 ^\markup \bold \italic "[fin}" \bar "||"\break 
	

	}

	
texte_two =	\lyricmode
	 {
	A- mor, a- mor, te'l giu- ro a fé,
	A- mor, a- mor, te'l giu- ro a fé,
	Tuo cru- do stral non fa più per me 
	Tuo cru- do stral non fa più per me
	
	
	
	
	}
               
                
                
                

                
                
                
                
                
                
                
                

       
              
