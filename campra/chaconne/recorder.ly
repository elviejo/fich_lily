\context Voice = "hautbois"
\relative c'' { 
%	\set Staff.instrumentName = \markup { \column { "2è dessus" } }
	\set Staff.instrumentName = \markup { \column { "Recorder" } }
	\set Staff.midiInstrument = "recorder"
%	\set Staff.printKeyCancellation = ##f
 
  \once \override Staff.TimeSignature.style = #'()
%  \set Score.currentBarNumber = # 731
  		
  		\time 3/4
  		\clef treble
                \key g \major
        r4 g8 a b4 | a fis fis | e d d' | c8 b a b c d | b4 g8 a b c | 	
%6
	a4 fis fis | e d d' | c8 b a b c d  | b4 b8 c d4 | d2-- a4-. a2-- c4-.|
%12   	
	a fis d | r4 b'8 c d4 | d2-- a4-| a2-- a4-| a fis d | g r2 | 
	g4 r2 | g4 c d8 e | a,4-- d-. d-.| d-. r2 | g,4 r2 | g4 c d8 e |
%24
	a,4 d d | d4. d8 c b | c g fis g d g | a4 fis g~ | 
	g fis4.-+ (e16 fis) g4. a8 g fis |  
%30
	e4 fis8 g a d, | fis4 d g | g fis4.-+ g8 | g4 r fis | g r d | g r b, |
%36
	c4 d2 | g,4 g' fis | g r d | g r b, | c d2 | g,4 g' g |
%42
	d2 d4 | e e4.-+ (d16 e) | fis4 d2 | r4 d d | d2 d4 |
%47
	e4 e4. (d16 e) | fis4 d2 | r4 b'4 b8 b | c4 c c8 c | d2 d4| 
%52
	e4 d8 e d c | b2 b8 b | c2 c8 c | d2 d4 | g, fis4. g8 |
%57
	g4 
	\key bes \major 
	
	bes4. bes8 | c4 c c | bes4. c8 d es | d2 d4 | r bes4. bes8 |
%62
	c4 c c | bes4. c8 d es | d2 d4 | r bes4. bes8 | a4. a8 c4 |
%67
	bes4. c8 d es | d4 d4. d8 | d c bes a g bes | a4. bes8 c4 | bes4. c8 bes c
%72
	d2 d4 | bes r g | es2 es4 | f2 f4 | bes, bes'8 c c bes |
%77
	g2 g4 | es2 es4 | f2 f4 | bes, bes'8 c bes a | g2 b,!4 |
%82
	c4. bes8 a4 | d4. c8 bes4 | c4 d2 | g2 b,!4 |
%86
	c4. bes8 a4 | d4. c8 bes4 | c4 d2 
	
	\key g \major
	g4 r8 g g g |
%90
	d4 d' d | d cis4. cis8 | d4 d fis, | g4 r8 g g g | 
%94
	d4 d' d | d cis4. cis8 | d4 d fis, | g4 r g |  
%98
	c,4 r c | d r g | g8 c a4 d | d4 r d, |
%102
	c4 r c | d r g | g8 c a4 d | d g,8 a b4 |
%106 (page 222) 
	r2 b8 b | b2 b8 b | c2 g4 | g g g | g g g | 
%111
	b a a | a a a | b4. b8 b4 | g a2 | d,4 b' b |
%116
	a4 a8 gis a b | gis4 gis c8 c | a4 a a | a gis4. a8 | a2 a,4 |
%121
	e'4. d8 c4 | b a g | d' d g | fis-+ fis8 fis g c, | d4 d b8 b |  
%126
	c4 d e | d2 d4 | g, r fis' | g r d | g r b, |
%131
	c4 d2 | g,4 r fis' | g r d | g r b, | c4 d2 |
%136
	g,2 b'8 b | c2 c4 | c b b | b b b | a4. a8 d4 |
%141
	cis d e | d d cis | d d8 d e fis | cis4 cis cis8 cis |
%145
	d4 d d | d (cis4.) d8 | d2 r4 R2.*11 | 	
%159
	r4 d, d | d2 d4 | e4 e4.-+ (d16 e) | fis4 d2 | r4 d d  |
%164
	d2 d4 | e e4.-+ (d16 e) fis4 d2 | r4 d4. d8 | e2 e8 e |
%169
	fis4 g g | g4 fis4. (e16 fis) | g2 d4 | e2 e8 e | fis4 d g | g4 fis4. e8 |
%175
	g2 g8 g | g2 f4 | f d g | g g g | f4. f8 g4 |	
%180
	a4 g4. g8 | g2 c,8 c | b2-+ b4 | c a d | g, g g' |
%185
	g4. g8 g4 | fis e4. d8 | d2 a'8 a | b2 b4 | g g a |
%190
	b g g | e4. e8 d4 | g fis4.-+ g8 | g2 b8 b | a2 c8 c |
%195
	b2 b4 | g a4. d,8 | d4 fis b | g4. fis8 e4 | c' a c | b2. |	
}
