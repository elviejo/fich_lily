\version "2.17.7"

\relative c'' { 
	 \set Staff.instrumentName = \markup { \column { "Choeur" } }
%	\line {"mienne" } } }
	\set Staff.midiInstrument = "voice oohs"
	\set Staff.shortInstrumentName =#"choeur"

	
		\time 3/4
  		\clef treble 
                \key g \major
             
                R2.*105 \pageBreak
               

	\bar "" 
	\set Score.currentBarNumber = #106
	r2 g'8 g | d2 d8 g | e2-+ e4 | c a d b g g | g' e a | fis-+ d d |
	g4. d8 d4 | e c4.-+ b8 | b4-+ d c |  c4 c8 c c c |
%117
	b4 b e8 e | e4 d c | c (b4.-+) a8 | a2 c4 |b4. b8 c4 | d c b | 
	a-+ a b | c c8 c b c | a4-+ a d8 d | 
%126
	b4 b4. a8 | b4 (a4.-+)
	g8 
	g4\bar "" \break 
	r2 
	R2.*6
%135
	r2 d'8 d| d2 d8 b | e2 e4 e e dis | e e e | cis4. cis8 d4 |
%141
	e4 fis g | fis4-+ fis g | a a8 a g fis | e4-+ e fis8 fis 
%145
	fis4 fis e | fis (e4.-+) d8 | d2 \bar "" \break
	
	d8 c | b2-+ c4 | d c b |
%150
	a4-+ a d | b4.-+ c8 d4 | e4 fis g | fis2 d8 d | g2 d4 | 
	e f8 e d c | d4 b d | g,4. a8 b4 | c a4.-+ a8 | 
%159
	g4 \bar "" \break
	r2 |  R2.*15
%175
	r2 \bar "" \break  b8 b | c2 c4 | d d b | e e c | a4. b8 b4 
%180
	d4 b4.-+ c8 | c2 e8 e | d2-+ d4 | e c8 b a b | b4-+ b d | 
%185
	d4. d8 e4 | fis g4. a8 | fis2 d8 d | g2 d4 | e f8 e d c |
%190
	d4 b d | g,4. a8 b4 | c4 a4. g8 | g2 b8 b | c2 c8 c |
%195
	d2 d4 | d c4.-+ b8 | a4-+ a d | e4. fis8 g4 | g fis4.-+ g8 g2.\bar "|."
	
} %fin choeur


texte_one =	\lyricmode
	 {
   Ac- cour- rez, ac- cour- rez que cha- cun s'em- pres- se
   que cha- cun s'em- pres- se, l'A- mour présente _ à vos dé- sirs 
   l'An- ti- do- te de la tris- tes- se et la sour ce des vrais  plai- sirs
   L'A- 
  
   mour pré-sen- te à vos dé- sirs l'an- ti- do- te de la tris- tes- se 
   et la sour- ce des vrais plai- sirs.

   Ac- cour- 
   rez,
   ac- cour- rez que cha- cun s'em- pres- se
   l'A- mour présente _ à vos dé- sirs l'an- ti- do- te de la tris- tes- se 
   et la sour- ce des vrais plai- sirs. 
  
%147
   Pro-fi _ tez dans vo- tre bel a- ge d'un bien qui vous ren- dra con- tents
   vou- lez- vous, pour en fai - re u- sa- ge 
   at- ten- dre qu'il n'en soit plus temps 
%%160 ?   
  
   Pro-fi _ tez dans vo- tre bel â- ge 
   d'un bien qui vous ren- dra con- tents,
   vou- lez- vous, pour en faire - u- sa- ge 
   at- ten- dre qu'il n'en soit plus temps 
   vou-lez- vous, _ pour en fai - re u- - sa- ge 
   at- ten- dre qu'il n'en soit plus temps 
   vou- lez- vous, vou- lez- vous pour en fai reu- sa- ge 
   at- ten- dre qu'il n'en soit plus temps 
}     

   

              
