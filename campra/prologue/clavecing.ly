\version "2.17.7"

\context Voice = "clavecing"


\relative c' { 
%	\set Staff.instrumentName = \markup { \column { "Clavecing" } }
	\set Staff.midiInstrument = "harpsichord"
%	\set Staff.shortInstrumentName =#"cello"
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
		
  		\time 3/4
  		\clef bass 
                \key bes \major
 
       R2. 
       \repeat volta 2 {
        
       R2.*2 |r8 r16 g  g8. f16 es8. d16 | c8. c16 c8. d16  es8. c16
 %6
 	f4 d4. d8 | c8. bes16 f'4 f, | bes2. | r8 r16 bes' bes8. c16 bes8. a16 | 
 	g4 c c, | f8. f16 f8. g16 a8. f16 | g8. g16 g8. a16 bes8. g16 |
%16
	a8. a16 a8. g16 f8. e16 | d8. d'16 d8. c16 bes8. a16 |
	g4 a a, |
             
       }
       \alternative {
       	       {d8. d16 d8. c16 bes8. a16 | g4 r r  }
       	       {\time 12/8 d4. r4. r2. }    
       }
       \repeat volta 2 {
       
       R1.*3 | r4. r8 g' f es d c f es f | d c bes r bes' a g f e a g a | 
       f e d cis b a d4. e | f g a r8 d c
%26
	bes8 a g a d cis d f, g a4 a,8 | d4. r8 d' c bes a g r c bes | 
	a g f d c d es d es f es f | d c bes a g f bes4. c | d es f r8 bes a |
%31
	g f es f bes a bes d, es f4 f,8 | bes4. r8 r bes' es,4 f8 g4 g,8 |
	c4 c'8 b a g c4. b | c r8 c, bes a4. r8 r a'8 |
%35
	d4. cis d es | d es bes c | d r8 d, c bes a g d'4 d,8 |
	g4. fis g fis | g a bes c | d4 d'8 es! d c d c d es d c |
%41
	d4. r8 d c bes a g fis e d | r g f es d c bes a g d'4 d,8 | 

       }       
        \alternative {
        	{g4. r r2. }
        	{g1.   }
        }
	\bar "|." 
} 	

          
       
            


