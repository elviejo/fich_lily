\version "2.17.7"

% \context Voice = "choeur"
%soprano =

\relative c' { 
	\set Staff.instrumentName = \markup { \column { "un es-"
				\line {"clavon" } } }
	\set Staff.midiInstrument = "voice oohs"
	\set Staff.shortInstrumentName =#"escl."
	

	
  		\time 6/4
  		\clef treble 
                \key d \major
                	
                \partial 1 {r1}
                
               R1.*49 |% \break
 
%356
%	a'4 \tweak #'color #red ^\markup {\halign #+0.7 \bold \italic
%        {\fontsize #2 { "Choeur"}} } d2 d4 | 
%        e2 e4 fis4. g8 fis4 |
%        e2-+ a,4 d2 d4 | e2-+ e4 fis4. g8 fis4
%360
%	e2-+ fis4 e2-+ d4 | cis2-+ b4 a4. b8 cis4 | 
%	d2 fis4 e2-+ d4 | cis2-+ b4 a4. b8 cis4 |  d2 ^\markup \bold \italic "[fin}"
	
%363 (2ème partie)
	r2 
	d'4^\markup \italic \bold "un esclavon" a'2 a4 | b2 b4 e,2 a4 | a2 d,4 a'2 a4 | b2 b4 e,2 a4 |
	a2 a4 a4. g8 fis4
%368
	e2 fis4 fis4. e8 d4 | cis2-+ e4 e2 a4 | gis2-+ fis4 e2 d4 | 
	cis2.-+ e4. fis8 e4 | e4. d8 cis4 b2-+ a4 | a2 \bar "||" \break
	
	fis'4 e2-+ d4 | cis2-+ cis4 d4. cis8 b4 | cis2-+ fis4 e2-+ d4 | 
	cis2-+ cis4d4. cis8 b4 | cis2-+  fis4 fis2 fis4 |
%378
	fis4. e8 d4 cis2-+ b4 | b2 d4 e2 fis4 | g2 e4 fis2-+ g4 | 
	a2 a,4 a2 a4 | d2 b4 b4. cis8 d4 | e2 \bar "||" 
	

	}

	
texte_three =	\lyricmode
	 {
%	A- mor, a- mor, te'l giu- ro a fé,
%	A- mor, a- mor, te'l giu- ro a fé,
%	Tuo cru- do stral non fa più per me 
%	Tuo cru- do stral non fa più per me

	Lun- gi da me va- ga bel' tà,
	Non mi gio- va la cru- del- ta,
	Chi vuoi so- spi- rar
	Puo' s'in- na- mo- rar,
	A- mor, non la vo- glio con te,
	La-  scia mio co- re in li- ber- ta
	
	Gra- ta mer- cé di co- stan- te fé,
	In- dar- no vien a con- so- lar me,
	Col fo- co non vo- glio più scher- zar.
	A- mor per me, gio- co no è,
	Vo- glio ri- der e non av- vam- par.
		
	
	
	}
               
                
                
                

                
                
                
                
                
                
                
                

       
              
