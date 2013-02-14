\version "2.17.6"

\header {
    title = "Les Festes Venitiennes"
    composer = \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)" }
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
	
#(set-global-staff-size 20)
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
	f8 d d4.-+ c8 | c4^\markup \bold "Fin"\bar "||" e d-+ ^\markup "1er Couplet"|
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
	 e c f | e8 (d) c4 e | g f e | d-+ c d |
%6
	e c f | e8 (d) c4 e | g f e | d-+ g (c,) d e8 (f) g c,
%11
	d4-+ c f~ | f8 e d e f g | e4-+ g c, | 
	d e8_\markup \italic "doux" (f) g (c,) | d4-+ _\markup \italic "fort" c f~ |
%16
	f8 d d4.-+ c8 | 
	
	

	
	
	
	
	c4^\markup "2è Couplet" a' gis-+ | a a, b-+
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
	g4 a f | d g g, | c r2 | g4 r2 | g'4 a8 g f e | 
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
	d8 c g'4 g, | 
	
	

	
	
	
	c4 c' b
%	\set Score.currentBarNumber = # 34
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


voixIII =
\context Voice = "voice 3"
\relative c'' { 
	 \set Staff.instrumentName = \markup { \column { "Violon 1" } }
         \set Staff.midiInstrument = "Violin"
         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'()
%  \set Score.currentBarNumber = # 731
  		
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
	a 4 gis4. a8 | a2 c,4 | d8 e f g a4 | g2 b,4 | c8 d e f g e | 
%45
	f4 a d | b2-+ c4 | g2 g,4 | c d g | e r2 
		

	
}

%% fin voix 3 ----------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   fin voix 3   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% voix 4
voixIV =
\context Voice = "voice 4"
\relative c { 
	 \set Staff.instrumentName = \markup { \column { "Violon 2" } }
         \set Staff.midiInstrument = "Violin"
         \set Staff.printKeyCancellation = ##f
  \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
  \override TextScript.padding = #2.0
  \override MultiMeasureRest.expand-limit = 1
  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
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
	c d4. d8 | d2 e4 | d4 g,4. g8 | g4 g4. g8 | g4 r2		
	
  
  }
%%%%%%%%%%%%%%%%%%%%%%           fin de la musique         %%%%%%%%%%%%%%%%%%%%%%%% 
\score {
	
  <<
  \new StaffGroup <<
  
  {
         \override Score.BarNumber.break-visibility =#end-of-line-invisible
         \override Score.RehearsalMark.padding = #2.5
         \resetBarnum

  }
  
 \new Staff  {\voixI }

    \new Staff  {\voixII } 
%  \new Staff \with { %% colorisation de cette portée
%     \override StaffSymbol.stencil = #(lambda (grob)
%        (let* ((staff (ly:staff-symbol::print grob))
%               (X-ext (ly:stencil-extent staff X))
%               (Y-ext (ly:stencil-extent staff Y)))
%        (set! Y-ext (cons
%            (- (car Y-ext) 0)
%            (+ (cdr Y-ext) 0)))
%         (ly:grob-set-property! grob 'layer -10)
%         (ly:stencil-add
%           (ly:make-stencil (list 'color (rgb-color 1 0.8 0.6)
%             (ly:stencil-expr (ly:round-filled-box X-ext Y-ext 0))
%           X-ext Y-ext))
%         staff)))
%  		}
%  		{ \voixII }
%
	
  \new Staff  {\voixIII } 
  \new Staff  {\voixIV }
  
 >>
 
 >>
 \layout { }
 	
 \midi { }
}
 %%%%%%%%%%%%%%%%%%%%%%%%%
