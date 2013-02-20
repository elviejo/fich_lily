\version "2.17.7"

\context Voice = "violon"


\relative c'' {
	\set Staff.instrumentName = \markup { \column { "Taille" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"Tvn."
%\set Staff.bgcolor = blue
	\once \override Staff.TimeSignature.style = #'()

 % 	\set Score.currentBarNumber = # 731
 %	\tempo 2=55
  	
        \time 2/2
        \clef treble
        \key bes \major  
        
                bes2 bes4 bes | bes8 c bes a g4 bes' | a fis g fis | 
        g bes a a8 g | f4. g8 a4 d,
        
        d2 d4 c | bes g8 a bes c d es | f4 d bes c | 
        a1 | a
 %11
 	d2 d4 d | d f f f | f2 f4 f | g bes c f, | f2. f4 |
 	
 	d es c f | d2 f4 f | f2 f8 es d c | bes4 g c c8 bes | a4 d d d 
%21
	bes'4 g g a | a4. g8 fis g a fis | bes4 bes a-+ a | 
	g1 | g1

        
} 
