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
	
  		\time 3/4
  		\clef treble 
                \key a \minor
                
                \set Score.currentBarNumber = #384              
                \partial 2
                
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
		For -- mons s'il est pos- si- ble, 
		Les plus doux con- certs 
		Ce sé- jour est pai- si-  ble
		Dans le sein des Mers.
		
		Nep- tu- ne plus tran- qui- le 
		Pour fla- ter nos voeux 
		Sert, dans ce doux a- zi- le,
		De thé- â- tre-aux Jeux.
		
		Nous res- sen- tons dans l'on- de 
		Le flam- beau d'A- mour 
		Il est plus cher au mon- de
		Que ce- luy du jour 
	}
               
                
                
                

                
                
                
                
                
                
                
                

       
              
