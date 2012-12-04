\version "2.17.6"

\header {
    title = "Les Festes Venitiennes"
    composer = \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)" }
 %arranger = \markup {\fontsize #2.5 "Joseph Bodin de Boismortier (1682 - 1765)" }
    meter = \markup { \bold \fontsize #2 " Chaconne"   } 
    tagline = \markup {  "Partition gravée avec LilyPond (http://lilypond.org)" 
    }	    
}
date = #(strftime "%d %m %y" (localtime (current-time)))


#(set-default-paper-size "a4")
#(set-global-staff-size 19)


\paper {
	ragged-last-bottom = #'f
  line-width = 190\mm  % ---> je peux mettre n'importe quelle longueur ici,rien ne change !
  left-margin = 10\mm  % ---> par contre, si je mets 50\mm, la marge augmente !!!???
  top-margin = 10\mm
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
  	\tempo 2=55
  	\time 3/4
        \clef "treble"
        \key g \major
        
        r4 b8 c d e \bar ".|:" | d4 \segno a d | g, g' g | g fis8 g a fis | g4 b,8 c d e 
%736
	d4 a d | g, g' g | g fis8 g a fis | g4 g8 a b4 | a8 g fis-+ e d4~ 
%741	
	d cis8 d e fis | d4 a d | r g8 a b4 | a8 g fis-+ e d4~ | d cis8 d e cis | 
%746
	d4 a d | r4 d8 e d e | f4 f8 e f d | e4 a a |  a a4.-+ (g16 a) | 
	b4 d,8 e d e | f4 f8 e f d | e4 a a |
% page 214
	a4 a4.-+ (g16 a) | b8 a g fis e d | e d c b a-+ g| c4 c c~ | c a d~ | d8 c b c d e |
%760
	e d c b a-+ g | c4. b16 a b4~ | b8 c a4.-+ g8 | g4 d'8 e d4 | r8 c b a g fis | g4 r g |
%766
	r8 e' d e d c | b4 d8 e d4 | r8 c b a g fis | r8 c' b c d4 | r8 e d e d c | b4 g b |
%772
	a4 b8 c d4 | g, g4.-+ (fis16 g) | a2 d,4 | r4 g b | a b8 c d4 |
%page 216
	g,4 g4.-+ (fis16 g) | a2 d,4 | r d' g8 d | e4 e a8 e | fis4-+ d  g~|
%782
	g8 a fis4.-+ (e16 fis) | g4 d8 d g d | e4 e8 e a e | fis4-+ d g~ | g8 b, a4.-+ g8 |
%page 217
	g4^\markup "Fine" \bar "||" \break
	
	\key bes \major es'4. es8 | es4 es es | es d g~ g fis8-+ e d4 | r4 es4. es8 |
%792
	es4 es es | es d g~ | g fis8-+ e d4 | r g es | c f4. c8 |
%797
	d4 bes'2~ | bes4 a bes8 c | bes a g f es d | c4 f4. c8 | d4 bes'2~ |
%802
	bes8 a a4. g8 | g4 d8 c d4 | es4 es8 d es4 | c4-+ c f | d2-+ c4 |
%page 219
	r4 d8 c d4 | es4 es8 d es4 | c-+ c f | d2-+ d4 | r4 d8 e f g |
%812
	e4 a4. g8 | fis 8 e d a bes4 | c8 bes a4.-+ g8 | g a d e f g | 
% 816
	e4 a4. g8 | fis e d2 | c8 bes a4.-+ g8 \bar "||" 
	\key g \major g8 g16 a b8 d b g | 
% Page 220 - mesure 820
	a8 d16 e f8 a f d | e e16 fis g8 e16 fis g8 e | 
	a a16 g fis g fis e d e d c |b8 g16 a b8 d b g |
%824
	a d16 e fis8 a fis d | e e16 fis g8 e16 fis g8 e | 
	a a16 g fis g fis e d e d c |
%827
	g8 d' b g b g | e e' c a c a | fis16 d e fis g a g a b c d b | 
	e fis g a fis g fis g a g a fis | b8 d, b g b g | 
%832
	e e' c a c a | fis16 d e fis g a g a b c d b | 
	e fis g a fis4.-+ g8 | g4 b,8 c d e \bar ":|." \pageBreak
	
	\time 3/4
%Page 222
	\key g \major
	r2 g8 g | d2 d8 g | e2-+ e4 | c a d | b4-+ g g |
	g' e a | fis-+ d d | g4. d8 d4 | e c4.-+ b8 | b4-+ d c |
%page 223 mes. 846
	c4 c8 c c d | b4-+ b e8 e | e4 d c | c (b4.)-+ a8 | a2 c4
%851
	b4. b8 c4 | d c-+ b | a-+ a4 b | c c8 c b c | a4-+ a d8 d | 
%page 224
	 e4 fis g | g4~ g4. g8 | g4 d8 e d4 | r8 c b8 c d4 | 
	r8 c b c b a | r8 e' d e d c | b4 d8 e d4 | r8 c b a g fis |
%864
	r8 c' b c d4 | r8 e d e d c |
%page 866
	b8 a b c d b | e2 e4 | e e dis | e e e | cis4. cis8 d4 | 
	e fis g | fis-+ fis g | a a8 a g fis | e4 e fis8 fis | 
%page 226
	fis4 fis e | fis (e4.-+) d8 | d2 d8 c | b2-+ c4 | d c b |
%880
	a4 a d | b4. c8 d4 | e fis g | fis2-+  d8 d | g2 d4
	e4 f8 e d c | d4 b d | g,4. a8 b4 | c4 a4.-+ a8
%page 227
	g4 g b | a b8 c d4 | g, g4.-+ (fis16 g) | a2 d,4 | r g b |
	a b8 c d4 | g, g4.-+ (fis16 g) | a2 d,4 | r g8 a b4 | e, c'8 d e4 |
% page 228
	a,4 d d | d8 c16 b a8 b c d | b4 g8 a b4 | e, c'8 d e4 | 
	a, g8-+ fis g4~ g8 a a4.-+ g8 |
%905
	g8 a b c d b | c2 c4 | d d b | e e c | a4. b8 c4 |
%page 229
	d4 b4.-+ c8 | c2 e8 e | d2-+ d4 | e c a | b4-+ b d | 
	d4. d8 e4 | fis g4. a8 | fis2-+ d8 d | g2 d4 | e f8 e d c 
%page 230
	d4 b d | g,4. a8 b4 | c a4.-+ g8 | g2b8 b | c2 c8 c |
	d2 d4 | d c4. b8 | a4-+ a d | e4. fis8 g4 | g fis4. g8 | g2. \bar "|."	
	

}      
                
%% fin voix 1 ----------------------------------------------
         
voixII =
\context Voice = "voice 2"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Basson" } }
         \set Staff.midiInstrument = "Bassoon"
%         \set Staff.printKeyCancellation = ##f
 
  \once \override Staff.TimeSignature.style = #'()
%  \set Score.currentBarNumber = # 731
  		
  		\time 3/4
  		\clef bass % alto
                \key g \major
          	
       r4 b4. b8 | a4-- a a | e'4 d8\< c b a\! | g4-- c a | b b4. b8 |  
     
%736
	a4-- a a | e' d8\< c b a\! | g4-- c a | b d8\< c b g\! | 
	a4-- d d | a2 a4 | a2 r4 | 
	r d8\< c b g\! | a4-- d d | a2 a4 |  a2 a4 | b r2 |
%748
	b4 r2 g4-- c b8 g | d' c d e d c | b4 r2 | b4 r2 | g4 c b8 g | 
%page 214
	d'8 c d e d c | b4. b8 c d | c4. g8 a e' | a,4 d c~ | c4. c8 b a | b2 b4
%760
	c8 g a b fis g | a2 e4 | g d d' | b r fis'\p | g r d | g r b, |
%766
	c4 d2 | g,4-- g' fis | g4-- r d | g-- r b, | c-- d2 | g,4-- b g |
%772
	a4-- fis! d | g-- e e' | a,2 a4 | r b g | a-- fis! d |
%page 216
	g4-- e e' | a,2 a4 | r b\f d | c-- c e | d2-- d4 | 
%782
	c4-- a d | d4. c8 b a | g fis e4 a | a2 g4 | a-- a d, |
%page 217
	d4 \bar "||" 
	\key bes \major bes'!4. bes8 | a4-- c c | d-- bes g | d'2 d4 | r bes4.\f bes8 |
%792
	a4-- c c | d-- bes g | d'2 d4 | r d\mf es!4~ | es c a
%page 218
	d8\< c bes a g4\! | d'4 d4. d8 | d4 g,8 a bes!4 | c2 a4\f | d8\< c bes a g4\! |
%802
	d'2 d4 | d r g\p | es2 es4 | f2 f4 | bes,2 r4 |
%page 219
	r2 g'4 | es2 es4 | f2 f4 | bes,2 r4 | r2 b4 | 
%812
	c4. bes8 a4 | d4. c8 bes4 | c d2 | g, b4\pp| 
%816
	c4. bes8 a4 | d4. c8 bes4 | c d2 |\bar "||"
	 \key g \major
	 g,4\f r8 b! b b
%Page 220
	 a2 a4 | g e! e'! | a,2 a4 | b r8 b\p b b | a2 a4 | g e e' | a,2 a4 | b r g |
% page 221
	g4 r c | a r b | c d4. d8 | d4 r d | c r c | a r b! | 
	a a4.-+ g8 | g4 b4. b8 
		
	\time 3/4
%Page 222
	\key g \major
	r2 d8\f  d | d2 d8 d | c2 c4 | e d d | d b b | 
	e e e | d d fis | g4. g8 g4 | e c2 d4 d c |
%page 223 - mes. 846
	c4 c8 c c b | b4 b a8 a | a4 a a | e'2 b4 | c2 a4 | 
	e'4. d8 c4 | b a g | d' d g | fis fis8 fis g c, | d4 d b8 b 
%page 224 - mes. 856
	 c4 d e | d2 d4 | g, r fis' | g r d | g r b, | 
	 c d2 | g,4 r fis' | g r d | g r b, | c d a8 a | 
% page 225 - mes. 866
	b2 g'8 g | e2 e4 | e b b | b b e | e4. e8 d4 |
	g, d' a | d d g | d d8 d cis d | e4 e a,8 a | 
%page 226 - mes 875
	d4 d d | a2 a4 | a2 r4 | R2.*11 | 		
%page 227 - mes 889
	r4 d g, | a fis d | g e e' | a,2 a4 | r d g,| 
	a fis d | g e e' | a,2 a4 | r b4. b8 | c2 c4 |
%page 228
	d4. c8 b g | d'4 d a | b4. a8 g4 | g a4. a8 | a2 e'4 | e a, d |
	b2 b8 b | a2 a4 | d d d | c c g | a4. c8 a4 |
%page 229 - mes. 910
	a4 d g, | g2 c8 c | b2 b4 | c a d | g, g g' |
	g4. g8 g4 | fis e4. d8 | d2 d8 d | d2 d4 | c g c | b b g | g4. d8 g4 
%page 230 mes 922
	a4 a4.-+ a8 | b2 d8 d | c2 c8 c | 
	g2 g4 | c c4. d8 | d4 d d | c4. c8 b4 | a a4.-+ g8 | g2. \bar "|."
	
	
}

%% fin voix 2 ----------------------------------------------

%% voix 3
voixIII =
\context Voice = "voice 3"
\relative c { 
	 \set Staff.instrumentName = \markup { \column { "B.C." } }
         \set Staff.midiInstrument = "Cello"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 3/4
        \clef bass  
        \key g \major
        
       r4 g'4. g8 | fis4 fis d | e b b | c d d, | g g'4. g8  
       
%736
	fis4 fis d | e b b | c d d, | g g' g, | d'4. e8 fis g | a4 a,2 |
%742
	d4 d'8 c b a | g2 g,4 | d'4. e8 fis g | a4 a,2 | d4. e8 d c | b4 r2 |
%748
	b4 r2 | c4. a8 b c | d4 d,2 | g4 r2 | b4 r2 | c4. a8 b c |
%page 214
	d4 d,2 | g2 g'4 | c8 b a g fis e | d2 e4 | c d4. c8 | b a g2 |
%760
	c8 b a g fis e | d2 c4~ | c d2 | g4 r2 | R2.*7 |
%771
	r4 g' g | fis d f | e2. | d8 e d c b a | g2. | fis4 d f |
%page 216
	e2. | d4 d''8 e d c | b4 g g, | c c' c | c2 c4 | 
%782
	c d d, | g2 g,4 | c4. b8 a4 | d4. c8 b4 | c4 d d, |
%page 217
	g4 \bar "||" 
	\key bes \major g'4. g8 | a4 a a | bes4. a8 bes c | d4. c8 bes a | g2 g,4 |
%792
	a4 a a | bes4. a8 bes c | d2 d,4 | g2 g'4 | a2 a4 |
%page 218
	bes8 a g a bes c | d4 d,2 | g g,4 | a2 a4 | bes8 a g a bes c |
%802
	d4 d,2 | g4 r2 | R2.*15 |
%page 219 - mesure 819

	 \key g \major r4 r8 g' g g
%page 220 mes. 820
	fis2 fis4 | e2 e4 | d2 d4 | g, r8 g' g g | fis2 fis4 | e2 e4 | d2 d4 |
%827
	g,8 b' g e g e | c c' a c a fis | d d' b g r g | c a d d, fis d |
%831
	g b g e g e | c c' a fis a fis | d d' b g r g | e c d4 d, | g g'4. g8 


	\time 3/4
%Page 222
	\key g \major
	r2 g8 g | b2 b8 g | c2 c4 | a d d, | g g g | 
	e a a, | d d d' | b4.-+ b8 b4 | c a4. g8 | g4 g f |
%page 223 mes - 846
	f4 f8 e f d | e4 e c8 c | d4 d d | e2 e,4 | a2 r4 | R2.*14
	r2 d,8 d | 
%page 225 - mes. 866
	g2 g8 g | c2 c4 | a b b, | e e e | a4. g8 fis4 |
	e4 d cis | d d e | fis fis8 fis e d | a'4 a fis8 fis
% page 226
	b4 b g | a2 a4 | d,2 r4 | R2.*11
% page 227	
	r4 g'4. g8 | fis4 d f | e2. | d4. c8 b a | g2 g4 
	fis4 d f | e2. | d4 d'' c | b4. a8 g4 | c2 c4 |
%Page 228
	c4 b8 a b c | d4 d,2 | g2 g,4 |  c a8 b c a | d4. d8 e4 | c d d |
	g2 g8 g | a2 a4 | b b g | c c e, | f4. g8 a4 |
% page 229
	f4 g g,4 | c2 r4 | R2.*5	
%	g4. g8 g4 | fis e4.-+ d8 | d2 \clef bass 
	r2 d'8 c | b2 b4 | c b a 
%page 230
	g4 g b, | e4. fis8 g4 | c, d d | g,2 g'8 g | a2 a4 |
	b2 b4 | c a4. g8 | fis4 d b | c4. d8 e4 | c d4. d,8 | g2. \bar "|."



	
	
  
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
 \layout {
%	 \context {
%	 	 \Score
%	 \override  SpacingSpanner
%	 #'base-shortest-duration = #(ly:make-moment 1 1) }
 	}	
 \midi { }
}
 %%%%%%%%%%%%%%%%%%%%%%%%%
