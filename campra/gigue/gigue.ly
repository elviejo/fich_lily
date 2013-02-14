\version "2.17.6"

\header {
    title = "Les Festes Venitiennes"
    composer = \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)" }
 %arranger = \markup {\fontsize #2.5 "Joseph Bodin de Boismortier (1682 - 1765)" }
    meter = \markup { \bold \fontsize #2 " Gigue"   } 
    tagline = \markup {  "Partition gravée avec LilyPond (http://lilypond.org)" 
    }	    
}
date = #(strftime "%d %m %y" (localtime (current-time)))

\paper { 
	oddFooterMarkup = \markup {\fill-line {
       \column { \fromproperty #'header:meter }
       \column { \fromproperty #'header:tagline }
       \column { \line {JJG le \date }} 
       } } 
ragged-last-bottom = #'t
line-width = 185\mm
}
	
#(set-global-staff-size 19)
#(set-default-paper-size "a4")

global = { }
globalTempo = {
    \override Score.MetronomeMark.transparent = ##t
		}
	
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
  #(set-bar-number-visibility 3)

%% Identification
voixI =

\context Voice = "voice 1"

\relative c'' { 
	 
	 \set Staff.instrumentName = \markup { \column { "Recorder 1" } }
         \set Staff.midiInstrument = "Recorder"
         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override Score.BarNumber.X-offset =#0.5 % déplacement sur la droite des N° de mesures
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'()
 % 	\set Score.currentBarNumber = # 731
%  	\tempo 2=60
  	\time 6/8
        \clef "treble"
        \key g \major
        \repeat volta 2 {        
        
        
        r4. g'8. [fis16 e8] \bar ".|:" | d8. c16 b8 c8. d16 c8 | d8.-+ a16 g8 r4.|
        r b8. a16 g8 | d'8. e16 fis8 g8. a16 g8 |
%6
	fis8. e16 d8 r4. | r a'8. g16 fis8 | e8. fis16 g8 fis8. e16 d8 | 
	cis8. b16 a8 a'8. b16 a8 | a8. g16 fis8 e8.-+ d16 cis8 | 
       
   }
        \alternative {
        		{d4. g8. fis16 e8 }
        		{d4. a'8. g16 fis8 } 
        }	
	b8. a16 b8 e,8. fis16 g8 | dis8. cis16 b8 r4. | r b'8. a16 g8 | 
	b8. a16 g8 fis8. g16 a8 |  gis8. fis16 e8 r4. |
%18
	r4. e8. d16 e8 | cis8. b16 a8 d8. cis16 d8 | 
	b8. a16 g8 d'8. c!16 b8 | a8. b16 c8 b8. a16 g8 | fis8.-+ e16 d8 r4. |
%22
	r d'8. c16 b8 | g'8. fis16 e8 a8. g16 a8 | fis8.-+ e16 d8 a'8. g16 fis8 | 
	g8. a16b8 a8.-+ g16 fis8 | g4. r \bar "|."
}      
                
%% fin voix 1 ----------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
voixII =

\context Voice = "voice 2"

\relative c'' { 
	 
	 \set Staff.instrumentName = \markup { \column { "Htb / Rec." } }
         \set Staff.midiInstrument = "Oboe"
         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override Score.BarNumber.X-offset =#0.5 % déplacement sur la droite des N° de mesures
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'()
 % 	\set Score.currentBarNumber = # 731
%  	\tempo 2=60
  	\time 6/8
        \clef "treble"
        \key g \major
        \repeat volta 2 {        
        
        
        r4. b8. [a16 g8] \bar ".|:" | g4. g4 fis8 | g4. r | r g | a4 d8 d4 cis8 |
        d4. r | r d | a a | a d4 d8 | b4. a4 a8 |
   }
        \alternative {
        		{a4. b8. a16 g8 }
        		{a4. d4 d8 } 
        }	
	d4. c | b r | r e4 e8 | e4. e4 dis8 | e4. r |
%18
	r4. b4 b8 | a4. a8. g16 fis8 | g4. g | d d d r |
%22
	r b' | e e4 e8 | d4. d8. e16 d8 | d4. d4 d8 | b4.-+ r \bar "|."
}      


%%%%%%%%%%%%%%%%%%%%%%%%  fin voix 2   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


voixIII =
\context Voice = "voice 3"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Violon" } }
         \set Staff.midiInstrument = "Violin"
         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'()
%  \set Score.currentBarNumber = # 731
  		
  		\time 6/8
  		\clef  treble
                \key g \major
          	
       r4. d | d e4 a8 | d,4. r | r d | fis8. g16 a8 g8. fis16 e8 |
%6
	a4. r | r fis8. g16 a8  | g8. fis16 e8 fis8. g16 fis8 | 
	e4. fis8. g16 fis8 | d4. cis8. d16 e8 | d4. d
%12
	d fis8. g16 a8 | g4 b8 a4 a8 | fis4. r | r g4 g8 | 
	g8. fis16 e8 b'4 b8 | b4. r
%18
	r gis8. fis16 gis8 | a4 e8 fis8. g16 a8 | d,4. d4 d8 | 
	d4 a8 b8. c16 d8 | d4. r |
%22
	r4. g4 g8 | g4. e4 a8 | a8. g16 fis8 a4 a8 |
	g8. fis16 g8 fis8. g16 a8 | g4. r
	
	
}

%% fin voix 3 ----------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
voixIV =
\context Voice = "voice 4"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Basson" } }
         \set Staff.midiInstrument = "Bassoon"
         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'()
%  \set Score.currentBarNumber = # 731
  		
  		\time 6/8
  		\clef  bass
                \key g \major
          	
       r4. b4. | b8. c16 d8 c8. b16 a8 | b4. r | r d8. c16 b8 | a4. b4 e8 |
%6
	a,4. r | r d | e d | e8. d16 cis8 d4 d8 | d4. a4 a8 | fis4.-+ b
%12
	fis4. d'4 d8 | d8. c16 b8 c4 e8 | b4. r | r b | c b | b r | 
%18
	r e4 e8 | e4. d4 a8 | b4. b8. a16 g8 | a4. g8. a16 b8 | a4. r
%22
	r4. b | b a | a d4 d8 | d8. c16 b8 d4 d8 | d4. r
	
	
	
}

%% fin voix 4 -
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% voix 5
voixV =
\context Voice = "voice 5"
\relative c { 
	 \set Staff.instrumentName = \markup { \column { "Cello" } }
         \set Staff.midiInstrument = "Cello"
         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 6/8
        \clef bass  
        \key g \major
        
       r4. g'4. | b, a | g r | r g' | fis e | 
%6
	d r | r d' | cis d | a fis8. e16 fis8 | g8. fis16 g8 a4 a,8 | d4. g |
%12
	d d' | g, a | b r | r e, | a b | e, r |
%18
	r4. e | a8. g16 a8 fis8. e16 d8 | g4. g, | fis g | d r | 
%22
	r4. g' | e cis | d4. d'8. cis16 d8 | b8.-+ a16 g8 d4 d,8 | g4. r 	
	
  
  }
 %%%%%%%%%% fin de la musique 
 
 
 
\score {
	
  <<
  \new StaffGroup <<
  
  {
         \override Score.BarNumber.break-visibility =#end-of-line-invisible
         \override Score.RehearsalMark.padding = #2.5
         \resetBarnum

  }
  
  \new Staff  { \voixI }

  \new Staff  {\voixII } 
 
  \new Staff  {\voixIII } 
  \new Staff  {\voixIV }
  
%   \new Staff \with { %% colorisation de cette portée
%     \override StaffSymbol.stencil = #(lambda (grob)
%        (let* ((staff (ly:staff-symbol::print grob))
%               (X-ext (ly:stencil-extent staff X))
%               (Y-ext (ly:stencil-extent staff Y)))
%         (set! Y-ext (cons
%            (- (car Y-ext) 0)
%            (+ (cdr Y-ext) 0)))
%         (ly:grob-set-property! grob 'layer -10)
%         (ly:stencil-add
%           (ly:make-stencil (list 'color (rgb-color 1 0.8 0.6)
%             (ly:stencil-expr (ly:round-filled-box X-ext Y-ext 0))
%           X-ext Y-ext))
%         staff)))
%  		}
%  		{ \voixIV }

  \new Staff  {\voixV } 
  
 >>
 
 >>
 \layout { }
 	
 \midi { }
}
 %%%%%%%%%%%%%%%%%%%%%%%%%
