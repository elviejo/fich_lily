\version "2.17.7"

% \context Voice = "gitane"
%gitane =

\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "une bohé-"
	\line {"mienne" } } }
	\set Staff.midiInstrument = "voice oohs"
	\set Staff.shortInstrumentName =#"bohém."
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
                
                r2 | R2.*71 | r4\break
                
%455
	 d4 e  | f  e f | g e f | d d4.-+ cis8 |
%459	
	d4 d e | f e f | g e f | d d4.-+ cis8 | d4 \bar "" \break r r 
%471 2ème et 3ème temps, c'est le choeur qui chante	

	 R2.*7 r4  \bar "||" \break
	 
%471 2ème et 3ème temps
	
	a4 bes | c c d | g,-+ g c | f, f4.-+ e8 |
	f4 f' e | d e b | cis a a | d cis4.-+ d8 | 
	d4^\mark \markup \column  {"On reprend le choeur"}
	\bar "||"%\break

% on revient au choeur et pendant ce temps, la bohémienne ne chante pas
	
	
%479 on est revenu au choeur et on passe à fin de mes. 479 2ème et 3ème temps
	d
	e f a, d | b-+ b g' | c, c4.-+ b8
	c4 e d | c b c | d b e | a, a4.-+ gis8 |
	a4 ^\mark \markup \column  {"On reprend le choeur"} \bar "||"

	
	}

texte =	\lyricmode
	 {
		For -- mons s'il est pos- si- ble, 
		Les plus doux con- certs 
		Ce sé- jour est pai- si- ble
		Dans le sein des Mers.
		
		Nep- tu- ne plus tran- qui- le 
		Pour fla- ter nos voeux 
		Sert, dans ce doux a- zi- le,
		De thé- â- tre aux Jeux.
		
		Nous res- sen- tons dans l'on- de 
		Le flam- beau d'A- mour 
		Il est plus cher au mon-de
		Que ce- luy du jour 
	}
               
                
                
                

                
                
                
                
                
                
                
                

       
              
