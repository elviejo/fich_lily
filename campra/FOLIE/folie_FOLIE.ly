\version "2.17.7"

 \context Voice = "folie"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column %\magnify #1.5 
	{ "LA FOLIE" } }
	\set Staff.midiInstrument = "voice oohs"
	\set Staff.shortInstrumentName =#"folie."

	
  		\time 4/4
  		\clef treble 
                \key g \major
                	
   %             \partial 8*7
               \set Score.currentBarNumber = #217
   	
        R1*4  
        r2 r8 d16 c b8 a16 g16 | fis8-+ r16 fis g8. g16 a8 b c16 b a b | 
%223
	b8. a16 (g8) r d' c16 b a8-+ g | a4-+ d8 c16-+ b a fis g a a4-+
	g4 r r2 | R1 |
	r4 b8 c d4 g8 fis16-+ e  (d8) e d c b4-+ b8 b
%229        
        e8 dis e fis16 g dis8 b r e16 dis | e8 b g a16 b g4 (fis4-+) |
        e4 e8 e16 fis g8 a b8.-+ c16 | d4 d8 c16 b e8  fis g16 fis e fis |
        fis8.-+ e16 (d4) r8 d16 c b8 a16 g | fis8-+  r16 fis g8. g16 a8 b c16 b a b |
%235
	b8. a16 (g8) r8 d' c16 b a8-+ g | a4-+ d8 c16-+ b a fis g a a4-+ |
	g r r2 | r4 b8 b e d16 c b8 a |
	gis4 r8 b e8. d16 c b a gis! | a8. b16 b4-+ a r8 r16 a |
%241
	fis8-+ r16 d' b8-+ r16 d g8 f16 e f8 e16 d | e4 r8 b16 cis d8 a b a16 g |
	d'4 d8 r r d16 c b8 a16 g | fis8-+ r16 fis g8. g16 a8 b c16 b a b |
	b8.-+ a16 (g8) r d' c16 b a8-+ g | a4-+ d8 c16-+ b a fis g a a4-+
%247
	g4 r r2 |R1*2 |




	}

	
texte_one =	\lyricmode
	 {
	Ac- cou- rez, hâ- tez- vous 
	goû- tez les char- mes de la - - vi- -e: 
	je les dis- pen- se tous:
	Il n'en est point sans la Fo- li- -e
	Les Plai- sirs rè- - - gnent dans ma Cour.
	C'est moy seu- le qui les ins- pi- re.
	C'est moy seu- le qui les ins- pi-  re
	Je sers de guide au tendre A- mour,
	et je par- ta- ge son em- - - pi- re 
	 	 
	Ac- cou- rez, hâ- tez- vous  	 
	goû- tez les char- mes de la - - vi- -e: 	 
	je les dis- pen- se tous: 	 
	Il n'en est point sans la Fo- li- -e
	Je ra- mei- ne les ten- dres jeux. 
	Je chas- se la - Rai- - son cru- el- le.
	Ve- nes, ve- nez, ve- nez vous se- rez trop heu- reux.
	si vous ê- tes dé- li- vrez d'el- le.
	Ac- cou- rez, hâ- tez- vous 	 
	goû- tez les char- mes de la - - vi- -e:
	je les dis- pen- se tous:
	Il n'en est point sans la Fo- li- -e
	 }
               
                
                
             
                
                
                
                
                
                
                

       
              
