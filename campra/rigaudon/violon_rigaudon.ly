\version "2.17.7"

\context Voice = "violon"


\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "violon" } }
	\set Staff.midiInstrument = "violin"
	\set Staff.shortInstrumentName =#"Vln"

	
  		\time 2/2
  		\clef treble 
                \key bes \major
                
                \set Score.currentBarNumber = #275              
                \partial 4
                
                g4 | R2.*2 |
                
       	g4 f^\markup \italic "violons seuls"  | aes2 f-+
                
                
                
                
                
                
                
                
} 
       
              
