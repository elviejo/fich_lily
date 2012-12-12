\version "2.17.7"

\context Voice = "Violon"

%resetBarnum = \context Score \applyContext % pour la numérotation des mesures
%  #(set-bar-number-visibility 3)
  
\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Violon" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"vln"
	\set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
 
%  {     \override Score.BarNumber.break-visibility =#end-of-line-invisible
%  	  \resetBarnum
%         \override  Score.BarNumber.self-alignment-X = #LEFT
%  }
  	
		
  		\time 3/4
  		\clef treble 
                \key bes \major
                
               R2. | \bar "|:" 
       \repeat volta 2 {
       R2. | r8 r16 d, d8. c16 bes8.-+ a16 |
       g4 bes8. [bes16] c8. d16 | es4 es4. es8 |
       f4 bes,4. d8 | es8. f16 f4. f8 | 
       es8. f16 f4. f8
%8
	d2. | r8 r16 f16 f4. f8 | f4 e4.-+ (d16 e) | f4 a4. a8 | a4 g4. g8
	e8. e16 e8. e16 f8. g16 | a8. a16 a8. a16 g8. f16 | g4 e a |
%16	
       }           
       \alternative {
      	       {fis2. | R2. \bar":|"}
       	       { \repeat volta 2  \time 12/8 fis4. r4. r2.}
       }       	       
%19
	\repeat volta 2 {
		R1. | r4. r8 g f es d c g' fis g |
	f f e fis e d g4 bes,8 c d es | d c bes d c d es4. c4 c8 |
	d4. f8 e f g a g e4 e8 | f g a g f e f e d g f e | 
	a bes a g a f e a g f e d |
%26
	g a bes e, f g f g f e4-+ d8 | d4. r8 r a' g4. r8 r g | 
	a4 c,8 d es f bes,4 es8 c4 c8 | d es f es4 es8 d bes' a g4 g8 | 
	f4. r8 r bes, f'4 f8 f e f | g4 g8 f4 f8 f es d c4-+ bes8 | 
%32
	bes4. r8 r f' g f es d4 c8 | c4 es8 d es f es d c f g f | 
	es4. e4 e8 e4. a4 a8 | a4. r8 r a a4. g4. |
	bes4. bes4 g8 f es d es4 g8 |
%37
	d4. r8 r a bes c d d4 d8 | d4. r8 d c bes a g a4. |
	g4 d'8 c4 g8 c4 d8 e4 e8| fis4 fis8 g a g fis e fis g a g |
	fis e d a'4. bes8 c bes a4 d,8 | d4. es8 bes c d4 d8 d4 d8 
	      
	\bar "|:"  
	
}
 \alternative {
 	 {d4. r4. r2. }
 	 { d1. }    
    }  	\bar "|."
} 
     	
     
              
