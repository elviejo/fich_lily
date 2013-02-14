\version "2.17.7"

\context Voice = "premier_dessus"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Premier dessus" } }
	\set Staff.midiInstrument = "recorder"
	\set Staff.shortInstrumentName =#"1er des."
	
  		\time 2/2
  		\clef treble 
                \key c \major
                
                \set Score.currentBarNumber = #259
                \partial 4 
                

                c4 | c g' g g  | a a a a | d, g g f | e8-+ d e f e4 c |
%263
		c g' g g  | a a a a | d, g g f | e2.-+  \bar ":..:" 		
		e4 | e8 f g4 f e | d g f e
%269
		d c b-+ c | d8 c d e d4 e |  e8 f g4 f e | d g f e |
		d-+ c d b | c2. \bar ":|." \break
		
		
		\time 2/2
  		\clef treble 
                \key bes \major
                
       g'4^ \markup  {\halign#+0.5 \bold \box {\fontsize #2 {"2è Rigaudon"}}} |
       aes2 f-+ |g4. aes8 bes4 f | g d es b | c2 g4 g' | 
       aes2 f2-+ | g4. aes8 bes4 f 
%281
	g4 d es b | c2. \bar ":..:"\break  es4 | d2 es | c4.-+ bes8 c4 d |
	es c f es | d2-+ bes 4 bes'
%284
	aes2 g-+ | f4.-+ g8 aes4 g | f-+ es f d | es2. g4 | f2 es | d4.-+ f8 es4 d
%293
	c4 es d c | b2-+ g4 g' | f2-+ g | c,4. b8 c4 d | es2 d2-+ | c2. \bar ":|." \break
                
                
                
		}         

                
                
                
                
                
  
                

       
              
