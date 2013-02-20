\version "2.17.7"

\context Voice = "taille"


\relative c'' {
\set Staff.instrumentName = \markup { \column { "Taille" } }
\set Staff.midiInstrument = "violin"
\set Staff.shortInstrumentName =#"Tvn"

   \time 3/4
   \clef alto % treble
                \key c \major
                
                \set Score.currentBarNumber = #102
                \partial 4
                
                
                g8 f |
                e4 e g | g g g | g g4. g8 | g4 g g8 f | e4 e g | g g g |
%108
	g g4. g8 |g4 g g8 f | e4 g f | e c g'8 f | e4 e g | g g b | a g g
%115
	g4 g g | a a4. a8 | g4 g g8 f | e4 e g | g g g | g g4. g8 |
%121
	g4 g g8 f | e4 e g | g g g | g g4. g8 | g4 g g8 a | b4 g g | f a g |
%128
	g g8 a bes g | a4 a a8 g | f4 f a | g g g | f d8 e f d | e4 e g8 f | e4 e g
%135
	g g g | g g4. g8 | g4 g g8 f | e4 e g | g g g | g g4. g8 | g4 g 
	
}	
