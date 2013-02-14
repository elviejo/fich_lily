
\version "2.17.6"

\header {
    title = "Les Festes Venitiennes"
    composer = \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)" }
    meter = \markup { \bold \fontsize #2 " La bohémienne"   } 
    tagline = \markup {  "Partition gravée avec LilyPond (http://lilypond.org)" 
    }	    
}
date = #(strftime "%d %m %y" (localtime (current-time)))


#(set-default-paper-size "a4")
#(set-global-staff-size 19)


\paper {
	ragged-last-bottom = #'f
	bottom-margin = 10\mm
	oddFooterMarkup = \markup {\fill-line {
       \column { \fromproperty #'header:meter }
       \column { \fromproperty #'header:tagline }
       \column { \line {JJG le \date }} 
       } } 
}

%global = { }
globalTempo = {
    \override Score.MetronomeMark.transparent = ##t
		}
	
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
  #(set-bar-number-visibility 3)

%% Identification
voixI =

\context Voice = "voice 1"

\relative c'' { 
	 
	 \set Staff.instrumentName = \markup { \column { "Htb / Rec." } }
         \set Staff.midiInstrument = "Oboe"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'()
 % 	\set Score.currentBarNumber = # 731
 % 	\tempo 2=55
  	\time 2/2
        \clef "treble"
        \key a \minor
        
         \repeat volta 2 { 
        r2 r4 a |\bar ".|:" c4.\segno d8 e4 e | c4. d8 e4 e  | c e b e |
%5
	c a a a | c4. d8 e4 e | c4. d8 e4 e | c a b gis | 	
     }
        \alternative {    
        
        	{a2. a4 }
        	{a2. e'4}
        }     
        a a a gis | a g8 f e4 e | a a a gis |
%12
	a4 g8 f e4 e | f e d g | e-+ c c e | d2. e4 | d2. e4 |
%17
	d c d b | c2. c4 | b c d e | c4-+ b b c | b c d e | 
%22
	c4-+ b e, fis |	gis a b c  | b2-+ a' | e4 d8 c b a b c | 
	a2. a4 \mark \markup {\musicglyph #"scripts.segno"} \bar "||" 


}      
                
%% fin voix 1 ----------------------------------------------
         
voixII =
\context Voice = "voice 2"
\relative c'' { 
	 \set Staff.instrumentName = \markup { \column { "2è dessus" } }
         \set Staff.midiInstrument = "recorder"
%         \set Staff.printKeyCancellation = ##f
 
  \once \override Staff.TimeSignature.style = #'()
%  \set Score.currentBarNumber = # 731
  		
  		\time 2/2
        \clef "treble"
        \key a \minor

        r2 r4 a | a4. b8 c4 c | a4. b8 c4 c | a e e gis
%5
	a4 e2 e4 | a4. b8 c4 c | a4. b8 c4 c | a a f e | e2. a4 | 
%10
	e2. c'4 | c c c b | c c c c | c c c b | 
	c c c c | d c c b | c2. c4 | b2. g4 | b2. g4
%19
	c a a g | g2. a4 | gis4 a b gis | a gis gis a | gis a b gis |
	a gis e2 | e e | gis e | a4 a a gis | a2. a4 


}

%% fin voix 2 ----------------------------------------------

%% voix 3
voixIII =
\context Voice = "voice 3"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Violon" } }
         \set Staff.midiInstrument = "Violin"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 2/2
        \clef "treble"
        \key a \minor
        
        r2 r4 e | e4. d8 c4 c | e4. d8 c4 c | e e e e |
%5
	e c2 e4 | e4. d8 c4 c | e4. d8 c4 c | e f b, b | a2. e'4
%10
	a,2.  e'4 | e e e e | e e e e | e e e e | 
	e e a a | g g g g | g2. g4 | g2. g4 | g2. g4
%19
	g e f d | e2. e4 |  e2. e4 |e e e e |  e2. e4 |
	e e b2 | b4 a d c | e2 e e4 f e e | e2. e4

        
  }
 %%%%%%%%%% fin de la musique 
\score {
	
  <<
  \new StaffGroup <<
  
  {
         \override Score.BarNumber.break-visibility =#end-of-line-invisible

         \resetBarnum
         \override  Score.BarNumber.self-alignment-X = #LEFT
  }
  
  \new Staff  {\voixI }

  \new Staff  {\voixII } 
	
  \new Staff  {\voixIII } 
  
 >>
 
 >>
 \layout {
	 \context {
	 	 \Score
	 \override  SpacingSpanner
	 #'base-shortest-duration = #(ly:make-moment 1 1) }
 	}	
 \midi { }
}
 %%%%%%%%%%%%%%%%%%%%%%%%%
