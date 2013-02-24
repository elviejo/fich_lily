\version "2.17.7"

 \context Voice = "basson"


\relative c' { 
	\set Staff.instrumentName = "basson"
	%\markup { \column \magnify #1.5 { "Taille" } }
	\set Staff.midiInstrument = "bassoon"
	\set Staff.shortInstrumentName =#"Bsn"
	
		
  		\time 4/4
  		\clef bass
                \key g \major
                	
                \set Score.currentBarNumber = #217
                
	r8 d16 c b8 a16 g fis8 d g g, | d'16 d' c d e, c' b c fis,8 g c, d |                
%219
	g,8 g'16 a b8 b, c c' d d, | e e fis d g b,16 c d8 d, |
%221
	g4 r r2 | r16 d'' c d e, c'b c fis,8 g c, d |
%223
	g,4 r r2 | r8 d''16 c b8 a16 g fis d e c d8 d, |
	g8 g'16 a b8 b, c c' d d, | e e fis d g b,16 c d8 d, 
	g4 r r g'8^\markup \italic \bold "doux" a | b c b a g4 r |
%229
	r2 r16 b a b g fis e fis | g8 dis e a, b a b b |
	e,4 r r2 | r16 d'' c d b g fis g e8 d a' a, |
	d4 r r2 | r16 d' c d e, c' b c fis,8 g c, d |
%235
	g,4 r r2 | r8 d''16 c b8 a16 g fis d e c d8 d, |
	b'16 b'^\markup \italic \bold "fort" a b c, c' b c d, b e c d8 d, | 
	g4 r8 g' c, d16 e f8 d |
	e b' e8. d16 c8. b16 a8 a, | r2 r8 a'16 b cis8 a
%241
	d4 r8 g,16 f e8 d16 c b8 g | c e16 fis g8 fis16-+ e d8 fis, g fis16-+ e
	d4 r r2 | r16 d'' c d e, c' b c fis,8 g c, d |
	g,4 r r2 | r8 d''16 c b8 a16 g fis d e c d8 d, 
%247
	g8 g'16^\markup \italic \bold" fort" a b8 b, c c' d d, | 
	e e fis d g b,16 c d8 d, | g4 r r2
	
	
	
}
