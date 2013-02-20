\version "2.17.7"

\context Voice = "premier_dessus"


\relative c'' {
	\set Staff.instrumentName = \markup { \column { "Premier dessus" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"1er des."
%\set Staff.bgcolor = blue
	\once \override Staff.TimeSignature.style = #'()

 % 	\set Score.currentBarNumber = # 731
 %	\tempo 2=55
  	
        \time 2/2
        \clef treble
        \key bes \major
        
    \repeat volta 2 {      

	d4.^\markup {\halign #'+1 \bold "Gay"} es8 d4 g,4
	
	d' g, d' g | fis d g a | bes a8 g f4 es | d es8 d c4 bes
	
	a fis g a | bes4. a8 g a bes c | d4 d d c 
  }
        \alternative {
        		{d1 }
        		{d1 } 
        }
        \repeat volta 2 {        
%11	
	f4. g8 f4 bes,4 | f' bes, f' bes | a-+ f bes bes8 a | g4 f es d | c f c f
%16
	bes,4. c8 c4.-+ bes8 | bes4. a8 bes4 c | d4. es8 d c bes a | 
	g4 c8 bes a4.-+ g8 | fis2 d'4 g,	
%21
	d'4 e8 f e4 fis8 g | fis4. e8 d e fis d | g4 g g fis 
	
	 }
        \alternative {
        		{g1 }
        		{g1 } 
        }		
        \bar "|."


}      
                
       
