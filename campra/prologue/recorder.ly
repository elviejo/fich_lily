\version "2.17.7"

\context Voice = "recorder"

resetBarnum = \context Score \applyContext % pour la numérotation des mesures
  #(set-bar-number-visibility 3)
  
\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Recorder" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"rec."
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
 
  {     \override Score.BarNumber.break-visibility =#end-of-line-invisible
  	  \resetBarnum
         \override  Score.BarNumber.self-alignment-X = #LEFT
  }
  	
		
  		\time 3/4
  		\clef treble 
                \key bes \major
                
               r8 r16 d d8. c16 \stemDown bes8.-+ a16 | %\bar "|:" 
       \repeat volta 2 {
       \stemNeutral g4 d' g | fis4. fis8 g8. a16 |
       bes4. d,8 [g8. f16] | es8. es16 es8. d16 c8. bes16 |
       a4-+ f'4. f8 | es8. d16 c4.-+ bes8 |
       bes8. bes16 bes8. c16 d8. bes16 |       
%9
	f'4 f4. f8 | g4 g4.-+ (f16 g) | a8. a,16 a8.b16 c8. d16 | 
	b8.-+ b16 b8. cis16 d8. e16 | cis4. cis8 d8. e16 |
%14
	f4. f8 [g8. a16] | e8. f16 e4.-+ d8 |
	
       }     
       
       \alternative {
      	       {d2. | r8 r16 d d8. c16 bes8. a16 \bar":|"}
       	       { \repeat volta 2  \time 12/8 d4. r8 d c bes a g d' g fis}
       }       	       
%19
	\repeat volta 2 {
	      
	\bar "|:"  g a bes a g fis g a bes a g fis | 
	g4 d8 d c d es f es d c bes | 
	a4-+ d8 c bes a bes c d c bes a | 
	bes a g bes a bes c bes c a-+ g f | 
	f' es f d c bes e d e cis b a |
%24
	d e f e f g f g a g a bes | a g f e f d cis b a f' g a |
	e f g cis, d e f e d cis4  d8 |
%27
	d a' g fis e d g f g es-+ d c | f4. r8 r f, g4. a-+ | 
	bes c-+ d8 bes d es c es |
%30
	f8 d f g es g a g f d c d | es f g c, d es d c bes a4-+ bes8 |
	bes4 d8 d c d es d es b4-+ c8 |
%33
	c4. d8-+ c d es f es d c d | 
	es d c g' f e a bes a e a g |
	fis e d a' g a fis e d g aes g |
%36
	f g aes g f es d c bes a! bes a | 
	fis a g fis e d d' c bes a4-+ g8 |
	g4 bes8 a d a bes c bes a d a |
%39
	bes g bes c a c d e f e fis g | 
	fis e d a'4.~ a8 [bes a] a4.~
	a8 [bes a] a [bes a] g [fis g] a-+ g a |	
%42
	bes4d,8 g f es d c bes a4-+ g8
	
 }
 \alternative {
 	 {g4. r8 d'8 c bes a g d' g fis }
 	 { g,1.}
       
  }  	\bar "|."
} 
       
              
