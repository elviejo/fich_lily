\version "2.17.7"

\context Voice = "voice 3"
\relative c'' { 
	 \set Staff.instrumentName = \markup { \column { "Violon 1" } }
         \set Staff.midiInstrument = "Violin"
         \set Staff.shortInstrumentName =#"Vln_1"
  		
  		\time 3/4
  		\clef treble % alto
                \key c \major
          	
       R 2. | R2.*3 | r4 g g | g r b | c r c | c b c | b-+ r2 | 
       R2.*4 |b4 r2 | b4 a a8 g |   
%16
	b8 c b4.-+ c8 | c4 g g  | g c^\markup "doux" b | 
	c^\markup "fort" g8 a b g | c4. d8 e4 | 
%21
	d2. | d8 c bes4 c | d c bes | d d4. d8 | b-+ b c4 d 
%26
	e c4. c8 | c4 a4. a8 | g4 g c | b8-+ b c4 d | e c4. c8  | 
%31
	c4 a4. a8 | g4 g4. g8  e4 r2
%reprise au segno	
       R2.*3 | r4 g g | g r b | c r c | c b c | b-+ r2 | 
       R2.*4 |b4 r2 | %b4 a a8 g |   
%2ème couplet

	c4 a4. a8  | b8 c b4.-+ c8

	
	c4 e d | c e, e | e2 r8 f | g e a4. b8 |
	gis4 e a | a f4. f8 | e4 a gis |
%40
	a 4 gis4. a8 | a2 c,4 | d8 e f g a4 | g2 b,4 | 
	c8 d e f g e | 
%45
	f4 a d | b2-+ c4 | g2 g,4 | c d g | e 
	
%reprise à la mes.33 r2
	e' d |
	c e, e | e2 e8 f | g e a4. b8 | gis4 e a | a f4. f8 | e4 a gis |
%40
	a4 gis4. a8 | a2 c,4 | d8 e f g a4 | g2 b,4 | c8 d e f g e |
	%45
	f4 a d | b2-+ c4 g2 g,4 | c d g | e r2
		

	
}
            
                
  
                

       
              
