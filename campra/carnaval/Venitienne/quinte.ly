\version "2.17.7"

\context Voice = "quinte"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Quinte" } }
	\set Staff.midiInstrument = "bassoon"
	\set Staff.shortInstrumentName =#"Qvn."

	
  		\time 6/4
 	 		\clef bass 
                \key d \major
                
                \set Score.currentBarNumber = #292
                \partial 1
        d,4 d2 d4 |
        a2 a4 d2 d4
	e2 d4  d2 d4       
	a2 a4 d2 d4
	e2 d4 e2 b4
%296
	cis2 cis4 d4. d8 cis4
	a2 d4 e2 b4 
	cis2 cis4 d4. d8 cis4
	a2  d4%^ \markup {\fontsize #2 {"1er Couplet"}} 
	d2 d4  |
	b2 b4 a2 a4 
	a2 d4 d2 d4
%302
	b2 b4 a2 a4 |
	a2 d4 d2 d4 |
	e2 d4 d4. a8 d4
	e2. r4 r e
	e4. b8 cis4 e2 b4 |
	cis2 d4 d2 d4	
%308
	a2 a4 d2 d4
	e2 d4 d2 d4
	a2 a4 d2 d4 
	e2 d4 e2 b4
	cis2 cis4 d4. d8 cis4
	a2 d4 e2 b4 |
	
%314
	cis2 cis4 d4. d8 cis4
	a2%^\markup {\fontsize #2 {"2e Couplet"}} 
	d4 b2 e4 
	a,2 d4 b2 e4 
	a,2 fis'4 e2 e4
	a4. e8 fis4 fis2 cis4
	d2 fis4 e2 e4
%320
	fis2 fis4 e2 e4
	fis2. r4 r e
	e4. fis8 g4 b,2 b4
	b2 cis4 cis4. b8 a4
	b2 b4 b2 b4
	e,2 s s
	%\mark \markup   {\musicglyph #"scripts.segno"} \bar "||"
	

	R1.*7
%355
	r2 d'4 d2 d4 | a2 a4 d2 d4 | e2 d4 d2 d4 |a2 a4 d2 d4 
%359	
	e2 d4 e2 b4 | cis2 cis4 d4. d8 cis4 | a2 d4 e2 b4  
	cis2 cis4 d4. d8 cis4 | a2 
	
    
} 
   
