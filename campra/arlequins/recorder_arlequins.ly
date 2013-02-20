\version "2.17.7"

\context Voice = "recorder"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Dessus" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"rec."


  \once \override Staff.TimeSignature.style = #'()

  	\time 3/4
        \clef "treble"
        \key f \major
        
        d8^\markup "Piqué" e f g a a, | d4 d d | e8 d e f e d | cis4 a e' | a8 bes a g f-+ e
 %6
 	f4 a, d | d cis8 d e cis | d4 d d | f8 e f g a f |
 	g4 c, g' | a8 bes a g f a |
%11
	g4 c, c | f c8 d es c | d c d e f4 | f e8 f g e | f4 f f \bar ":..:"
%16
	f,8 g a bes c d | c4 f, c' | d8 c d e f g | 
	e4-+ c e | fis8 e fis g a b |
% 21
	gis4 e a | a gis8 a b gis! | a4 a a  | a,8 g a bes c a | bes2. |
%26
	b8 a b c d e | cis4 a a' | g8 f e f g e | f4 a, d | 
	d cis8 d e cis | d4 d d \bar ":|."
	

}      
                
