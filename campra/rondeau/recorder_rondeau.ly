\version "2.17.7"

\context Voice = "dessus"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Premier dessus" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"1er des."
	


  	\tempo 2=60
  	\time 3/4
        \clef "treble"
        \key c \major
        
        r4 c4 d \bar ".|:" | e\segno c f | e8 (d) c4 e | g f e | d-+ c d |
%6
	e c f | e8 (d) c4 e | g f e | d-+ g (c,) d e8 (f) g c,
%11
	d4-+ c f~ | f8 e d e f g | e4-+ g c, | 
	d e8_\markup \italic "doux" (f) g (c,) | d4-+ _\markup \italic "fort" c f~ |
%16
	f8 d d4.-+ c8 | c4^\markup \bold "Fin"\bar "||" e d-+ |
	c8 (d) e_\markup \italic "doux" (f) d (e) | 
	c_\markup \italic "fort" (d) e (f) g (e) | a4 a g8 a | 
%21
	fis4-+ d a' | bes8 a g4 fis-+ | g a d, | g fis4.-+ g8 | g g a4 b-+ 
%26
	c4 g a8 bes | a g f e d c | b8. (c16) c4.-+ (b16 c) |
	d8 g a4 b-+ | c g a8 bes |
%31
	a g f e d c | b8. (c16) c4.-+ b8 | c4 c d  |\bar "||" 

%reprise au segno
	\set Score.currentBarNumber = # 2
	 e\segno c f | e8 (d) c4 e | g f e | d-+ c d |
%6
	e c f | e8 (d) c4 e | g f e | d-+ g (c,) d e8 (f) g c,
%11
	d4-+ c f~ | f8 e d e f g | e4-+ g c, | 
	d e8_\markup \italic "doux" (f) g (c,) | d4-+ _\markup \italic "fort" c f~ |
%16
	f8 d d4.-+ c8 | c4 e d-+ |
	c8 (d) e_\markup \italic "doux" (f) d (e) | 
	c_\markup \italic "fort" (d) e (f) g (e) | a4 a g8 a | 
%21
	fis4-+ d a' | bes8 a g4 fis-+ | g a d, | g fis4.-+ g8 | g g a4 b-+ 
%26
	c4 g a8 bes | a g f e d c | b8. (c16) c4.-+ (b16 c) |
	d8 g a4 b-+ | c g a8 bes |
%31
	a g f e d c | b8. (c16) c4.-+ b8 | 
	c4 a' gis-+ | a a, b-+
%35 après reprise
	c4 a8 b c d | e4 e  d-+ | e a a8 g | f e d c b c | gis4-+ a b |
%40
	c4 b4.-+ a8 | a bes a g f e | d4 d' c8 d | b8-+ a g a g f | e4 c' b8 c | 
%45
	a4 f'8 g a4 | d,8 g f e d c | b-+ a g f e d |
	c c' g4 b-+ | c c d\mark \markup {\musicglyph #'"scripts.segno"} | \bar "||"
	
        
}      
                
                
                
                
                
  
                

       
              
