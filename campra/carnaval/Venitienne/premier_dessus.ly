\version "2.17.7"

\context Voice = "premier_dessus"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Premier dessus" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"1er des."
	
%	\indent = #10
	
  		\time 6/4
  		\clef treble 
                \key d \major
                
                \set Score.currentBarNumber = #292
                \partial 1
                
       a4\segno d2 d4 |
       e2 e4 fis4. g8 fis4 |
       e2-+ a,4 d2 d4 |
       e2 e4 fis4. g8 fis4 |
       e2-+ fis4 e2-+ d4 |
%296
	cis2 b4 a4. b8 cis4
	d2 fis4 e2-+ d4 |
	cis2-+ b4 a4. b8 cis4 |
	d2 ^\markup "fin" \bar "||" \break
	d4^ \markup \box {\fontsize #2 {"1er Couplet"}}
		a'2 a4 |
		b2 b4 e,2 a4 |
		a2 d,4 a'2 a4 |
%302
	b2 b4 e,2 a4 |
	a2 a4 a4. g8 fis4 |
	e2 fis4 fis4. e8 d4 |
	cis2-+ e4 e2 e4 |
	e4. d8 cis4 b2-+ 
	a4 a2 a4 d2 d4
%308
	e2 e4 fis4. g8 fis4 |
	e2-+ a,4 d2 d4 |
	e2 e4 fis4. g8 fis4 |
	e2-+ fis4 e2-+ d4 |
	cis2-+ b4 a4. b8 cis4 |
	d2 fis4 e2-+ d4
%314
	cis2 b4 a4. b8 cis4 |
	d2\segno \bar "||" \break

a4^ \markup \box {\fontsize #2 {"2e Couplet"}} b2 cis4
	d2 a4 b2 cis4 | 
	d2 fis4 g4. fis8 e4 |
	fis4. e8 d4 cis2-+ b4 |
	b2 fis'4 g4. a8 g4
%320
	fis2-+ fis4 g4. a8 g4 | 
	fis2-+ b4 b2 b4 |
	b4. a8 g4 fis2-+ e4 |
	e2 a,4 a4. b8 cis4 | 
	d2 b4 b4. cis8 d4 |
	e2 \segno \bar "||"s s %\break
%	\mark \markup   {\musicglyph #"scripts.segno"} \bar "||"

	R1.*7 
%355
	s2 a,4 d2 d4 | e2 e4 fis4. g8 fis4 |
        e2-+ a,4 d2 d4 | e2-+ e4 fis4. g8 fis4
%360
	e2-+ fis4 e2-+ d4 | cis2-+ b4 a4. b8 cis4 | 
	d2 fis4 e2-+ d4 | cis2-+ b4 a4. b8 cis4 | 
	d2 %\break %s s %^\markup \bold \italic "[fin}"
                
                
                
                
                
                
                
                
                
                
                
                
                
} 
       
              
