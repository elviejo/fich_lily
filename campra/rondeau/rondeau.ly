\version "2.17.6"

\header {
    title = "Les Festes Venitiennes"
    composer = \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)" }
 %arranger = \markup {\fontsize #2.5 "Joseph Bodin de Boismortier (1682 - 1765)" }
    meter = \markup { \bold \fontsize #2 " Rondeau"   } 
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
	
#(set-global-staff-size 18.5)
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
	 
	 \set Staff.instrumentName = \markup { \column { "Htb / Rec." } }
         \set Staff.midiInstrument = "Oboe"
         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override Score.BarNumber.X-offset =#0.5 % déplacement sur la droite des N° de mesures
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'()
 % 	\set Score.currentBarNumber = # 731
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
                
%% fin voix 1 ----------------------------------------------
         
voixII =
\context Voice = "voice 2"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Basson" } }
         \set Staff.midiInstrument = "Bassoon"
         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'()
%  \set Score.currentBarNumber = # 731
  		
  		\time 3/4
  		\clef bass % alto
                \key c \major
          	
       r4 c4 b | c4 r g | c, r c' | e, d c | g' c b |
%6
	c r g | c, r c' | e, d c | g' r2 | g4 r2 |
%11
	g4 a f | d g g, | c' r2 | g4 r2 | g4 a8 g f e | 
%16
	d8 c g'4 g, | c c' b | c c, g | c c' b8 c | a g a b c a | 
%21
	d2. | d,4 es d8 c | bes4 a bes | g d' d, | g g' f |
%26
	e2 c4 | f4. g8 a f | g4 c,2 | g4 g f | e2 c'4 | 
%31
	f8 e f g a f | g c, g2 | c4 c' b	
%reprise au segno	
	c4 r g | c, r c' | e, d c | g' c b |
%6
	c r g | c, r c' | e, d c | g' r2 | g4 r2 |
%11
	g4 a f | d g g, | c r2 | g4 r2 | g'4 a8 g f e | 
%16
	d8 c g'4 g, | c c' b | c c, g | c c' b8 c | a g a b c a | 
%21
	d2. | d,4 es d8 c | bes4 a bes | g d' d, | g g' f |
%26
	e2 c4 | f4. g8 a f | g4 c,2 | g4 g f | e2 c'4 | 
%31
	f8 e f g a f | g c, g2 | c4 c' b
	\set Score.currentBarNumber = # 34
%34
	a a gis-+
%35
	a2 a4 | g f2-+ | e4 cis a | d2 d4 |d c b |
%40
	a4 e'2 | a8 bes a g f e | d c d e f d | g f g a g f | e d c d e c | 
%45
	f e d e f d | g2 g4 | g8 a g f e d | c4 g' g, | c c' b 
	

	
}

%% fin voix 2 ----------------------------------------------

%% voix 3
voixIII =
\context Voice = "voice 3"
\relative c { 
	 \set Staff.instrumentName = \markup { \column { "Cello" } }
         \set Staff.midiInstrument = "Cello"
         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 3/4
        \clef bass  
        \key c \major
        
       R 2. | R2.*3 | r4 c' b
%6
	c r g | c, r c' | e, d c | g' r2 | R2.*4 | g,4 r2 | g'4 a8 g f e |
%16
	d8 c g'4 g, | c c' b | c c, g | c c' b8 c | a g a b c a |
%21
	d2. | d,4 es d8 c | bes4 a bes | g d' d, | g g' f | 
%26
	e2 c4 | f4. g8 a f | g4 c,2 | g4 g f | e2 c'4 |
%31
	f8 e f g a f | g c, g2 | c4 r2 |
%reprise au segno
	       R 2. | R2.*2 | r4 c' b
%6
	c r g | c, r c' | e, d c | g' r2 | R2.*4 | g,4 r2 | g'4 a8 g f e |
%16
	d8 c g'4 g, | c c' b | c c, g | c c' b8 c | a g a b c a |
%21
	d2. | d,4 es d8 c | bes4 a bes | g d' d, | g g' f | 
%26
	e2 c4 | f4. g8 a f | g4 c,2 | g4 g f | e2 c'4 |
%31
	f8 e f g a f | g c, g2 | c4 c' b | a a gis-+
%35
	a2 a4 |g f2 | e4 cis a | d2 d4 | d c b |
%40
	a4 e'2 | a8 bes a g f e | d c d e f d | g f g a g f | e d c d e c |
%45
	f e d e f d | g2 g4 | g8 a g f e d | c4 g' g, | c r2 |

	
	
  
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
  
  \new Staff  {\voixI }

% \new Staff  {\voixII } 
 \new Staff \with { %% colorisation de cette portée
     \override StaffSymbol.stencil = #(lambda (grob)
        (let* ((staff (ly:staff-symbol::print grob))
               (X-ext (ly:stencil-extent staff X))
               (Y-ext (ly:stencil-extent staff Y)))
         (set! Y-ext (cons
            (- (car Y-ext) 0)
            (+ (cdr Y-ext) 0)))
         (ly:grob-set-property! grob 'layer -10)
         (ly:stencil-add
           (ly:make-stencil (list 'color (rgb-color 1 0.8 0.6)
             (ly:stencil-expr (ly:round-filled-box X-ext Y-ext 0))
           X-ext Y-ext))
         staff)))
  		}
  		{ \voixII }

 
	
  \new Staff  {\voixIII } 
  
 >>
 
 >>
 \layout { }
 	
 \midi { }
}
 %%%%%%%%%%%%%%%%%%%%%%%%%
