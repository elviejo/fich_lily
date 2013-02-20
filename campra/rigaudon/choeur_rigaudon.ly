\version "2.17.7"

\relative c'' { 
	 \set Staff.instrumentName = \markup { \column { "Choeur" } }
	\set Staff.midiInstrument = "voice oohs"
	\set Staff.shortInstrumentName =#"choeur"
	
		\time 2/2
  		\clef treble 
                \key bes \major     
                
                 \set Score.currentBarNumber = #275              
                \partial 4
                
                r4 | 
                R1*39 | r2. \break
                
                \repeat volta 2 {

%	\bar "" 

	g'4^ \markup  {\halign#+0.5 \bold {\fontsize #2 {"Air"}}} | aes2 f-+ | g4. aes8 bes4 f | g d es b | c2 g4 g' |
%303
	aes2 f-+ | g4. aes8 bes4 f | g d es b | 
}
\alternative  {
	{ c2. s4 }
	{ \set Score.currentBarNumber = #306  c2. es4 }
}
%307
	d2 es | c4.-+ bes8 c4 d | es c f es | d4.-+ c8 (bes4) bes' | aes2 g |
%312	
	f4.-+ g8 aes4 g | f-+ es f d | es2. g4 | f2-+ es | d4. f8 es4 d |
%317
	c es d c | b2 g4 g' | f2-+ g | c,4. b8 c4 d | 
	es2\mark \markup \bold \column {"             On reprend le 2è Rigaudon" 
	"     et ensuite le Premier Rigaudon"} d-+ c2. \bar ":|."
				

} %fin choeur


texte_one =	\lyricmode
	 {
	 Em- bar- quez- vous, a- mans sans fai- re ré- sis- tan- ce 
	 Em- bar- quez- vous, l'em- pi- re de l'A- mour est doux doux
	C'est u- ne mer tou- jours su- jet- te-à l'in- cons- tan- ce
	Que quel- qu-o- ra- ge-à tout mo- ment vient a- gi- ter,
	Mal- gré ces maux le cal- me de l'in- di- fé- ren- ce 
	Est en- cor plus, cent fois à re- dou- ter.
	 	 
}     

   

              
