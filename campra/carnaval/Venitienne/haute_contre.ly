\version "2.17.7"

\context Voice = "Haute_contre"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Haute_contre" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"Hte_c."
	
  		\time 6/4
  		\clef treble 
                \key d \major
                
                \set Score.currentBarNumber = #292
                \partial 1
                
       a4\segno a2 a4 |
       a2 a4 d4. e8 d4 |
       cis2 a4 a2 a4 |
       a2 a4 d4. e8 d4 |
       cis2 d4 a2 b4 |
%296
	e,2 e4 fis4. fis8 e4
	fis2 d'4 a2 b4 |
	e,2 e4 fis4. fis8 e4 |
	fis2 ^\markup "fin" \bar "||" 
	d'4%^ \markup {\fontsize #2 {"1er Couplet"}}
		d2 d4 |
		d2 d4 d2 cis4 |
		d2 d4 d2 d4 |
%302
	d2 d4 d2 cis4 |
	d2 fis4 fis4. e8 d4 |
	cis2 d4 d4. a8 b4 |
	cis2. r4 r cis4 |
	cis4. gis8 a4 gis2  a4
	a2 a4  a2 a4
%308
	a2 a4 d4. e8 d4 |
	cis2 a4 a2 a4 |
	a2 a4 d4. e8 d4 |
	cis2 d4 a2 b4 |
	e,2 e4 fis4. fis8 e4 |
	fis2 d'4 a2 b4
%314
	e,2 e4 fis4. fis8 e4 |
	fis2 a4%^ \markup {\fontsize #2 {"2e Couplet"}}
	g2 g4
	a2 a4 g2 g4 | 
	a2 d4 cis4. d8 e4 |
	d4. ais8 b4 ais2 b4 |
	b2 dis4 e4. fis8 e4
%320
	dis2 dis4 e4. fis8 e4 | 
	dis2. r4 r4 e4 |
	e4. dis8 e4 dis2 e4 |
	e2 e,4 a2 a4 | 
	a2 a4 a2   gis4 |
	a2 s s %\mark \markup   {\musicglyph #"scripts.segno"} \bar "||"           
    
	
	R1.*7
%355
	s2 a4 a2 a4 | a2 a4 d4. e8 d4 | cis2 a4 a2 a4 | a2 a4 d4. e8 d4 
%359
	cis2-+ d4 a2 b4 | e,2 e4 fis4. fis8 e4-+ | 
	fis2 d'4 a2 b4  | e,2 e4 fis4. fis8 e4 | fis2 
	
	
} 
       
              
