\version "2.17.7"

\context Voice = "hautbois"

  
\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Hautbois" } }
	\set Staff.midiInstrument = "oboe"
	\set Staff.shortInstrumentName =#"htb."
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()

		
  		\time 3/4
  		\clef treble 
                \key bes \major
                
               R2. |% \bar "|:" 
       \repeat volta 2 {
       r8 r16 g16 g8. a16 bes8. c16 | d4 a8. a16 bes8. c16 | 
       d4 d8. d16 c8. b16 | c4 g g | f f4. bes8 |
%7
	c8. d16 a4.-+ bes8 | bes2. | r8 r16 d d8. es16 d8. c16 | bes4 g c |
	a f4. f8 | f4 e4. e8 | e8. a16 a8. a16 d8. cis16 | d2 d4 | d cis4. d8
%16	
       }           
       \alternative {
      	       {d2. | R2. }%\bar":|"} 
       	       { \time 12/8 d4. r4. r2.  }  
       	       }	       
%19
	\repeat volta 2 {
	 r4. r8 d c bes a g d' c d | bes a g bes a bes c bes a bes a g |
	 fis fis g a g fis g4.~g4 g8 |
%22
	g4. r8 r d g f g f4 f8 | f4. bes4 bes8 bes4. a4.~ | 
	a~ a8 d cis d e f e4 c8 | 
%25
	c4 c8 bes4bes8 a4. a8 d a | bes4 bes8 a4 a8 a4 bes8 a a g | 
	fis e d a'4. bes c4 c8 |
%28
	c8 bes a f4 f8 es4 g8 f4 f8 | f4. f f  r8 r c' | 
	bes4. bes8 es d c bes a bes4 bes8 | bes4. a8 bes c bes a g f4 f8
%32
	f4. r8 r bes bes4 aes8 g4 g8 | g4.~g8 c b c4. g4 g8 
	|g4. ~ g4 g8 c4.~c4 c8 |
%35
	d4. e d bes4 c8 | d4. bes bes4 f8 es4 es8 | d4. r8 r d g fis g fis4 g8 |
%38
	g4. d d d | d4 g8 f4 f8 f bes a g c bes | a4 d8 c d es d4 d8 c d es |
%41
	d4. r8 d a d4. r8  d c | bes a g r g a bes fis g fis4 g8
	
}
	 \alternative {
	 	 {g4. r4. r2. }
	 	 { g1. }    
	 } \bar "|."
       

}     
              
