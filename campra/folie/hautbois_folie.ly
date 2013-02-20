\version "2.17.7"

\context Voice = "hautbois"


\relative c'' {
	\set Staff.instrumentName = \markup { \column { "Haute-contre" } }
	\set Staff.midiInstrument = "oboe"
	\set Staff.shortInstrumentName =#"Htb."
%\set Staff.bgcolor = blue
	\once \override Staff.TimeSignature.style = #'()

 % 	\set Score.currentBarNumber = # 731
 %	\tempo 2=55
  	
        \time 2/2
        \clef treble
        \key bes \major     
        g2 g4 g	| g4 g8 [a bes c] d4 | d a bes c | d2 c4 a | bes4. bes8 fis4 g |
        
        fis d g fis | g2 g4 g | a bes g a | 
        fis1 | fis
%11
	bes2 bes4 bes | bes bes8 c d4 d | c c d d8 c | bes4 bes a bes | a2.-+ a4 |
%16
	g g f4. f8 | f2 bes4 a | bes4. c8 bes4 f | es2 es4 es | d2 g4 g  	
%21
	g4 b c c |d2 d4 d d8 c d es d4 a | 
	bes1 | bes1

	
}

