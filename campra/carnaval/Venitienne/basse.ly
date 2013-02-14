\version "2.17.7"

\context Voice = "basse"


\relative c' { 
	\set Staff.instrumentName = \markup { \column { "Basse" } }
	\set Staff.midiInstrument = "cello"
	\set Staff.shortInstrumentName =#"Bas."
	\set Staff.printKeyCancellation = ##f
	\set Score.skipBars = ##t  % pour grouper les silences
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
	
  		\time 6/4
 	 	\clef bass 
                \key d \major
                
                \set Score.currentBarNumber = #292
                \partial 1
                
               d4 d2 d4 
               cis2 cis4 d4. cis8 d4 
               a2 d4 d2 d4
               cis2 cis4 d4. cis8 d4
               a2 d4 cis2-+ b4
%296
	a2 g4 fis4.-+ g8 a4
	d,2 d'4 cis2-+ b4
	a2 g4 fis4.-+ g8 a4
	d,2  d'4%^ \markup {\fontsize #2 {"1er Couplet"}} 
	d4. cis8 d4
	g,4. fis8 g4 a4. g8 a4
	d,2 d4 d4. cis8 d4
%302
	g,4. fis8 g4 a4. g8 a4
	d,2 d''4 d2 d4 
	a2 d4 d4. cis8 b4
	a2. r4 r a
	cis4. b8 a4 e2 e4 
	a,2 d'4 d2 d4
%308
	cis2 cis4 d4. cis8 d4
	a2 d4 d2 d4
	cis2 cis4 d4. cis8 d4 
	a2 d4 cis2-+ b4
	a2 g4 fis4.-+ g8 a4
	d,2 d'4 cis2-+ b4 |
	
%314
	a2 g4 fis4.-+ g8 a4
	d,2 fis4 g4. fis8 e4
	d2 fis4 g4. fis8 e4
	d2 d'4 e4. d8 cis4
	d4. cis8 b4 fis2 fis4
	b,2 b'4 e,2 e4
%320
	b2 b'4 e,4. dis8 e4
	b2. r4 r e4
	g4. fis8 e4 b2 b4
	e2 cis4 cis2 cis4
	b2 b4 b2 b4
	b2% \mark \markup   {\musicglyph #"scripts.segno"} \bar "||"  

	
%page 51
         d'4 d2 d4 
%348	 
	cis2 cis4 d4. cis8 d4 | a2 d4 d2 d4 | cis2 cis4 d4. cis8 d4 |
%351	
	a2 d4 cis2 b4 | a2 g4 fis4. g8 a4 | d,2 d'4 cis2 b4 |
	a2 g4 fis4. g8 a4 | d,2 
%355	
          d'4 d2 d4             
          cis2 cis4 d4. cis8 d4 | a2 d4 d2 d4 | cis2 cis4 d4. cis8 d4 |
          a2 d4 cis2 b4 | a2 g4 fis4. g8 a4 | d,2 d'4 cis2 b4 |
	  a2 g4 fis4. g8 a4 | d,2
%363 (2ème partie)
	d'4 d4. cis8 d4 | g,4. fis8 g4 a2 a4 | d,2 d4 d4. cis8 d4 | 
	g,4. fis8 g4 a2 a4 | d,2 d''4 d2 d4 |
%368
	a2 d4 d4. cis8 b4 | a2 a4 gis2 fis4 | e2 d4 cis2 b4 | 
	a2. r4 r a'4 | cis4. b8 a4 e2 e4 | a,2 \bar "||"
%374 (2ème partie)
	d4 e2 e4 | fis4. e8 fis4 b,2 b4 | fis'2 d4 e2 e4 | fis4. e8 fis4 b,2 b4 |
	fis'2 d4 d2 d4 | d4. cis8 b4 fis'2 fis4 | b,2 g'4 g2 fis4 |
	e2 a4 a2 g4 | fis2 d4 d2 cis4 | b2 b4 b2 b4 | a2% \bar "||"
    
} 
       
              
