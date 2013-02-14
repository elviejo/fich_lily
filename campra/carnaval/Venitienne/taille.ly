\version "2.17.7"

\context Voice = "Taille"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Taille" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"Tvn."

	
  		\time 6/4
  		\clef alto %treble
                \key d \major
                
                \set Score.currentBarNumber = #292
                \partial 1
                
      fis,4 fis2 fis4 |
      e2 a4 a2 a4|
      a2 fis4 fis2 fis4 |
      e2 a4 a2 a4  |
      a2 a4 a2 gis4|
%296
	a2 a,4 d4. d8 a'4
	a2 a4 a2 gis4 |
	a2 a,4 d4. d8 a'4 |
	a2 fis4 % ^\markup "fin" \bar "||" fis4^ \markup {\fontsize #2 {"1er Couplet"}} 
	fis4. e8 fis4
		g2 d4 a'2 a4 |
		fis2 fis4 fis4. e8 fis4 |
%302
	g2 d4 a'2 a4 |
	fis2 fis4 fis4. g8 a4 |
	a2 a4 a4. a8 gis4 |
	a2. r4 r a |
	a4. b8 e,4 e2 e4
	e2 fis4 fis2 fis4	
%308
	e2 a4 a2 a4 |
	a2 fis4 fis2 fis4 |
	e2 a4 a2 a4|
	a2 a4 a2 gis4|
	a2 a,4 d4. d8 a'4 |
	a2 a4 a2 gis4
%314
	a2 a,4 d4. d8 a'4 |
	a2%^\markup {\fontsize #2 {"2e Couplet"}}
	fis4 d2 e4
	fis2 fis4 d2 e4 | 
	fis2 a4 g2 g4|
	fis4. cis8 d4 fis2 fis4 |
	fis2  b4 b2 b4
%320
	b2 b4 b2 b4 | 
	b2. r4 r g |
	g4. a8 b4 b2 fis4 |
	g2 e4 e2 e4 | 
	d2 d4 d2 d4 |
	cis2  s s%\mark \markup   {\musicglyph #"scripts.segno"} \bar "||"  
	
	
	R1.*7
%355
	s2 fis4 fis2 fis4 | e2 a4 a2 a4 | a2 fis4 fis2 fis4 | e2 a4 a2 a4 |
%359
	a2 a4 a2 gis4 | a2 a,4 d4. d8 a'4 | a2 a4 a2 gis4 
	|a2 a,4 d4. d8 a'4 | a2 
	

	
    
} 
       
              
