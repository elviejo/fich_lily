\version "2.17.7"

\context Voice = "basson"

  
\relative c' { 
	\set Staff.instrumentName = \markup { \column { "Basson" } }
	\set Staff.midiInstrument = "Bassoon"
	\set Staff.shortInstrumentName =#"bsn"
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
 

		
  		\time 3/4
  		\clef bass %alto
                \key bes \major
                
       R2. %\bar "|:" 
       \repeat volta 2 {
        
       R2.*3 | r8 r16 g' g8. f16 es8. d16 | c4-+ d4. bes8 |
       a8. bes16 c4 f,4 | f2.
%9
	r8 r16 bes bes8. a16 bes8. c16 | d4 c c | c8. c16 c8. b16 a8. a16 | 
	b4 b bes | a4. a'8 a8. g16 |
%14
	f8. f16 f8. e16 d8. c16 | bes4 a4. a8 | 
       }
       \alternative {
       	       {a2. | R2. |}
       	       {\time 12/8 a4. r4. r2. }    
       }
       \repeat volta 2 {
       
       R1.*2 | r4. r8 d8 c bes a g es' d c | g'4. g,4 g8 g4. a4 a8 |
       bes4. bes4 bes8 bes a g a b cis |
%24
	d4 d8 e4 e8 d4. g,4.| f4 a8 bes4 d8 a4. d4 d8 
	e4 e8 e d a d4. a4 a8 |
%27 	
	a4. d4 d8 d4. c4 c8 | c4. bes8 a bes g4 c8 a g f |
	bes c d c bes a bes4 f'8 es4 es8 |
%30       
       d4.~ d8 c bes a bes c bes4 f8 | bes8 a g a d c d4 g8 c,4 f8 | 
       d4.-+ r8 r d g,4. r8 g' f |
%33
	es8 d c g'4 g8 g4. r8 r g, | c4.~ c4 c8 c4 a8 a4 es'8 | d4. a d r |
%36
	r8 r d g4 g8 bes4 bes,8 es4 c8 | a4. r8 g fis g a bes a4 a8 | 
	bes4. r r r8 d c |
%39
	bes a g c4 c8 bes c d c d e | d4. r8 r g d4. r8 r g | 
	d4. r8 r d d4 d8 d e fis | g4 g,8 r r es' f a d, d4 a8 |	
       }	
        \alternative {
        	{bes4. r r2. }
        	{bes1.   }
        }
	\bar "|." } 	
         
          
       
            


