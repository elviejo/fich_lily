\version "2.17.7"

\context Voice = "voice 4"
\relative c { 
	 \set Staff.instrumentName = \markup { \column { "Violon 2" } }
         \set Staff.midiInstrument = "Violin"
         \set Staff.shortInstrumentName =#"Vln_2"
  
  
  	\time 3/4
        \clef treble  
        \key c \major
        
       R 2. | R2.*3 | r4 e' d | c r g' | g r g | c, f g | g r2 |  R2.*4 |
%14
	g4 r2 | g4 e f8 c | d g g4. g8 | e4 e f | e8 (f) g4^\markup "doux" g
	g8^\markup "fort" (f) e4. e8 | e4 c'4. c8 | a4. g8 fis e | 	
%22
	d4 g a | bes fis g | bes a4.-+ g8 | g d e4 f | 
%26
	g4. f8 e4 | f2 f4 | d4 e g | g8 d e4 f | g4. f8 e4 | 
	f2 f4 |f8 e d4. c8 | c4 r2 | 
	
% reprise au segno
	 R2.*3 | r4 e d | c r g' | g r g | c, f g | g r2 |  R2.*4 |
%14
	g4 r2 | g4 e f8 c | d g g4. g8 | e4 c d | e c b |
%35
	c8 d e f g4 | b, c a | b a cis | d4. e8 d c | b4 c d |
%40
	e e b | c a4. a8 | a2 d4 | d g,4. g8 | g2 c4 | 
%45
	c d4. d8 | d2 e4 | d4 g,4. g8 | g4 g4. g8 | g4 
	
%on reprend à la mes. 33 (r2)
	c4 d | e c b |
	c8 d e f g4 | b, c a | b a cis | d4. e8 d c | b4 c d |
%40
	e4 e b | c a4. a8 | a2 d4 | d g,4. g8 | g2 c4 |
%45
	c4 d4. d8 | d2 e4 | d g,4. g8 | g4 g4. g8 | g4 r2
	
  
  }
                

       
              
