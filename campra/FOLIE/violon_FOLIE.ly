\version "2.17.7"

 \context Voice = "violon"


\relative c'' { 
	\set Staff.instrumentName = "Violon"
	%\markup { \column \magnify #1.5 { "Taille" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"Vln"
	
		
  		\time 4/4
  		\clef treble
                \key g \major
                	
                \set Score.currentBarNumber = #217
 
	r2^\markup \bold "Gay et piqué" r8 d16 c b8 a16 g | fis8.-+ fis16 g8. g16 a8 b c a |
%219
	b g r8 g'16 fis e a g a fis b a b | 
	g8 c16 b a g fis e d8 g16 b, a8.-+ g16 |
%221
	g8 d'16 c b8 a16 g fis8 d g g, | d'4 r r2 |
%223
	r8 d'16 c b8 a16 g fis8-+ g fis e | d4 r16 g fis g d8 g g fis |
	g4 r8 g'16^\markup \italic \bold "fort" fis e a g a fis b a b | 
	g8 c16 b a g fis-+ e d8 g16 b, a8.-+ g16 |
%227
	g4 g8^\markup \italic \bold "doux" a b4 b8 c | g'8 g, g fis g4 r16 g fis g |
%229
	e8 fis g a b4 r16 a g a | b4 b8 e e8. fis16 dis8. e16 |
	e8 e,16 fis g8 g16 a b8 c d g | fis8-+ d r16 b a b cis8 d d cis |
	d8 d16 c b8 a16 g fis8-+ d g g, | d'4 r r2 
%235
	r8 d'16 c b8 a16 g fis8-+ g fis e | d4 r16 g fis g d8 g g fis |
	g16 d'^\markup \italic \bold "fort" c d e8. e16 fis16 d g a fis8.-+ g16 | g4 r r2 | 
	r2 r8 e,8^\markup \italic \bold "doux" a16 g! f e | f8 d e4 a r
%241
	r8 d, g4-+ r8 b16 c d8 c16-+ b | c8 g d g fis-+ d d16 e fis g |
	fis8-+ d'16 c b8 a16 g fis8-+ d g g, | d'4 r r2 |
	r8 d'16 c b8 a16 g fis8-+ g fis e | d4 r16 g fis g d8 g g fis |
%247
	g4 r8 g'16^\markup \italic \bold "fort" fis e a g a fis b a b |
	g8 c16 b a g fis-+ e d8 g16 b, a8.-+ g16 | g4 r r2 \bar "|."


}
