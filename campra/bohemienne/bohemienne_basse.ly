
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
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
  #(set-bar-number-visibility 3)

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
         	 
        r2 r4 a \mark \markup {\musicglyph #"scripts.segno"}  c4.  d8 e4 e | 
        c4. d8 e4 e  | c e b e |
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
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "basson" } }
         \set Staff.midiInstrument = "bassoon"
%         \set Staff.printKeyCancellation = ##f
 
  \once \override Staff.TimeSignature.style = #'()
%  \set Score.currentBarNumber = # 731
  		
  	\time 2/2
        \clef "bass"
        \key a \minor

        r2 r4 c | c4. b8 a4 a | c4. b8 a4 a | c a b b | c2. c4 | 
        c4. b8 a4 a |  c4. b8 a4 a | c c d b | c2. c4
%10
	c2. a4 | c c c e | c a a c |  c c c e | 
	c a a a | d e g d | e2. c4 | d2. c4 | d2. c4
%19
	d a d d | c2. e4 | e a, e' b | c e b a | b a e' b |
	c e gis,2 | e b'4 a | b2 a | a4 a e' b | c2. c4

}

%% fin voix 2 ----------------------------------------------

%% voix 3
voixIII =
\context Voice = "voice 3"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "cello" } }
         \set Staff.midiInstrument = "Cello"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 2/2
        \clef "bass"
        \key a \minor
        
        r2 r4 a | a2. a4 | a2. a4 | a a gis e |
        a2. a,4 | a2. a4 | a2. a4 | a f d e | a2. a'4
%10
	a,2. a'4 | a2. e4 | a2. a,4 | a2. e4 |
	a2. a'4 | b c g g, | c2. c4 | g' a b c | g a b c |
%19
	g a f g | c,2. a4 | e' a gis e | a e e a | e a gis e |
	a e e'2 | e,4 fis gis a | e2 c' | c,4 d e e, | a2. a'4 |

        
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
%	 \context {
%	 	 \Score
%	 \override  SpacingSpanner
%	 #'base-shortest-duration = #(ly:make-moment 1 1) }
 	}	
 \midi { }
}
 %%%%%%%%%%%%%%%%%%%%%%%%%
