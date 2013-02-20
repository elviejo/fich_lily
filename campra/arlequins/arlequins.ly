\version "2.17.6"

\header {
    title = "Les Festes Venitiennes"
    composer = \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)" }
 %arranger = \markup {\fontsize #2.5 "Joseph Bodin de Boismortier (1682 - 1765)" }
    meter = \markup { \bold \fontsize #2 "Air pour les Arlequins"   } 
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
  top-margin = 10\mm	% CA VIENT DE LA CONFIGURATION DE L'IMPRIMANTE 
  bottom-margin = 10\mm
  oddFooterMarkup = \markup {\fill-line {
       \column { \fromproperty #'header:meter }
 %      \column { \fromproperty #'header:tagline }
       \column { \line {JJG le \date }} 
       } } 
}


%global = { }
globalTempo = {
    \override Score.MetronomeMark.transparent = ##t
		}
	
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
  #(set-bar-number-visibility 3)
 
%custom-tuning = \stringTuning <d f g' c f a d g >  
  

%% Identification
voixI =

\context Voice = "voice 1"

\relative c'' { 
	 
	 \set Staff.instrumentName = \markup { \column { "Htb / Rec." } }
         \set Staff.midiInstrument = "Oboe"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'()

  	\time 3/4
        \clef "treble"
        \key f \major
        
        d8^\markup "Piqué" e f g a a, | d4 d d | e8 d e f e d | cis4 a e' | a8 bes a g f-+ e
 %6
 	f4 a, d | d cis8 d e cis | d4 d d | f8 e f g a f |
 	g4 c, g' | a8 bes a g f a |
%11
	g4 c, c | f c8 d es c | d c d e f4 | f e8 f g e | f4 f f \bar ":|."
%16
	f,8 g a bes c d | c4 f, c' | d8 c d e f g | 
	e4-+ c e | fis8 e fis g a b |
% 21
	gis4 e a | a gis8 a b gis! | a4 a a  | a,8 g a bes c a | bes2. |
%26
	b8 a b c d e | cis4 a a' | g8 f e f g e | f4 a, d | 
	d cis8 d e cis | d4 d d \bar ":|."
	

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
  		
  		\time 3/4
  		\clef treble
                \key f \major
        a4 a a | bes bes bes | bes bes bes | a a a | a cis8 d e4 |
% 6      
       d f,8 g a bes | a4 a a | a a a | d8 c d e f d | e4 c c | c c c | 
% 11
	c c c | c c c | bes bes bes | g8 f g a bes g | a4 a a |
%16
	f f8 g a bes | a g a bes a g | f4 g g | g g c | a d4. d8
%21
	b4 c a | e' e e | cis a a | a2. | g4 g g |
%26
	g2. | a4 a a | a8 b cis d e4 | d f,8 g a bes | a4 a a | a a a |
	
}

%% fin voix 2 ----------------------------------------------

%% voix 3
%% voix 3
voixIII =
\context Voice = "voice 3"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Violon" } }
         \set Staff.midiInstrument = "violin"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 3/4
        \clef treble  
        \key f \major
       
      f8 e d4 e4 | f f f  | g8 f g a g f | e4 e e | e a a  
%6
	a4. g8 f4 | e8 d e f g e | f4 f f | a a a | c e,8 f g e | f4 f f 
        
        e8 d e f g e | a4 f f | f f8 e d4 | c c c | c c c 
        
        c c f | f c c | c b8 c d b | c4 c g' | fis4 fis4. fis8
        
        e4 a f | e e e | e cis e | d d d | d d d | 
        
        e e e | e f f | e a a8 g | f e d4 d | a' e8 f g e | f4 f f 
}        
voixIV =
\context Voice = "voice 4"
\relative c { 
	 \set Staff.instrumentName = \markup { \column { "Alto" } }
         \set Staff.midiInstrument = "bassoon"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 3/4
        \clef alto  
        \key f \major
        
       f'4 f e | d d f | e e e | e8 f e d cis b | a4 a a |
% 6
	a d d | a a a | f d a' | d f f | e e c | c a c | 
%11
	c g'8 f e d | c4  c f | d d bes | bes g c | a f a |
% 16
	a a a | f f a | a g d' | c c c | c b4. b!8 |
%21
	b4 e d | b b8 c d b | cis4 e cis | d2. | bes8 a bes c bes a |
%26
	g2 b4 | a d4. d8 | e d cis b a4 | a a f' | e e e | d a d |
	
  
  }
voixV =
\context Voice = "voice 5"
\relative c { 
	 \set Staff.instrumentName = \markup { \column { "Cello" } }
         \set Staff.midiInstrument = "Cello"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 3/4
        \clef bass  
        \key f \major
        
        d'4 d d |bes8 a bes c bes a | g4 g g | a8 g a bes a4 | cis,4 a cis |
        
        d8 cis d e f g | a 4 a a, | d d d | d' d d | c8 bes c d c c, | f4 f f, | 
        
        c'8 bes c d c bes | a4 a a | bes8 a bes c d bes | c4 c c, | f f f 
        
        f' f f  | f8 e f g f e | d4  g g, | c8 b c d e c | d c d e fis d |
        
        e4 c d | e e e, | a'8 g a bes a g | fis 2. | g8 f g a g f |
        
        e2. a8 g f e f d | cis4 a cis | d8 cis d e f g | a4 a a, | d d d 
     
        
        
        
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

%   \new Staff  {\voixII } 
	
%   \new Staff  {\voixIII } 
  
   \new Staff  {\voixIV } 
%    \new Staff \with { %% colorisation de cette portée
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
   
   \new Staff  {   \voixV }
   
 >>
 
 >>
 \layout {	\override Score.BarNumber  #'font-size = #1
%	 \context {
%	 	 \Score
%	 \override  SpacingSpanner
%	 #'base-shortest-duration = #(ly:make-moment 1 1) }


 	}	
 \midi { }
}
 %%%%%%%%%%%%%%%%%%%%%%%%%
