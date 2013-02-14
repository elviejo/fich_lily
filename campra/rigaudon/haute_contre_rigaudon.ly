\version "2.17.7"

\context Voice = "Haute-contre"

\relative c'' { 
	\set Staff.instrumentName = \markup { \column { "Haute-Contre" } }
	\set Staff.midiInstrument = "oboe"
	\set Staff.shortInstrumentName =#"Hte.c."
	 	 
  		\time 2/2
  		\clef alto %treble 
                \key c \major
                
                \set Score.currentBarNumber = #259              
                	
                \partial 4 
                
        c4 | c c c c |  c c c c |  c c c b |  c c c c | 
%263
	 c c c c |  c c c c |  c c c b | c2.
	 c4| c d c bes | a c b c |
%269
	a g f g | b8 a b c b4 c | c d c bes | a c b c | b a a g | g2.
	
%2ème rigaudon
	\key bes \major
	es'4
	es2 d | es2. bes4 | bes aes g g | g2. es'4 | es2 d2-+ | es2. bes4 |
%281
	bes4 aes g g | g2. 
	g4 | bes2 bes | aes2. aes4 | g g a a | bes2. es4 |
%287
	d2 es | d4. c8 d4 es | bes bes c bes | bes2. bes4 | b2 c | bes2. bes4 
%293
	aes2. aes4 | g2. bes4 | aes2 g | g2. c4 | c2 b | c2.

   
        
        
        
        
        
        
        
}
