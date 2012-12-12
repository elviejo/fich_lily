\include "common.ly"  %%reprend tout ce qui est général aux parties séparées
	%%  et à la "directrice" : définition du papier, des headers, etc.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La musique, 
recorder	= \include "recorder.ly"
hautbois	= \include "hautbois.ly"
violon		= \include "violon.ly"
alto		= \include "alto.ly"
basson		= \include "basson.ly"
cello		= \include "cello.ly"
clavecind	= \include "clavecind.ly"
clavecing	= \include "clavecing.ly"
%text		= \include "text.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La partition
%%%
  

  
\score {
	
  <<
  \new StaffGroup <<
  

  	  
   {  	 \override Score.BarNumber.break-visibility =#end-of-line-invisible
         \override Score.RehearsalMark.padding = #2.5
         \resetBarnum
  }
  
  \new Staff  {\recorder }
  
  \new Staff  {\hautbois }
  
  \new Staff  {\violon }
 
  \new Staff  {\alto }
 	
  \new Staff  {\basson }
  %\with { 
  %   \override StaffSymbol.stencil = #(lambda (grob)
  %      (let* ((staff (ly:staff-symbol::print grob))
  %             (X-ext (ly:stencil-extent staff X))
  %             (Y-ext (ly:stencil-extent staff Y)))
  %       (set! Y-ext (cons
  %          (- (car Y-ext) 0)
  %          (+ (cdr Y-ext) 0)))
  %       (ly:grob-set-property! grob 'layer -10)
  %       (ly:stencil-add
  %         (ly:make-stencil (list 'color (rgb-color 1 0.8 1) ; ce dernier chiffre indique la couleur
  %           (ly:stencil-expr (ly:round-filled-box X-ext Y-ext 0))
  %         X-ext Y-ext))
  %       staff)))
 % 		}
 % 		{ \basson }
 	
 \new Staff  {\cello }
	 
 	>>
		
		\new PianoStaff <<
			
			\set PianoStaff.instrumentName = #"Clavecin"  
				%shortInstrumentName  = #"B.C."}
			\new Staff %\with{ instrumentName = #"Clavecin D." 
%		%			shortInstrumentName  = #"Cl.d." }
				{\clavecind}
			\new Staff %\with{ instrumentName = #"Clavecin G." 
%		%			shortInstrumentName  = #"Cl.g." }
				{\clavecing} 
		>>
	>>
 \layout {
 	 \context { \Score
%      \override RehearsalMark.break-align-symbols = #'(time-signature)
%      \override RehearsalMark.self-alignment-X = #LEFT
%      \override TimeSignature.break-align-anchor-alignment = #LEFT
     \override  SpacingSpanner #'base-shortest-duration =#(ly:make-moment 1 2)
     % #'base-shortest-duration permet de faire la partition plus courte.
     % en mettant  make-moment 1 16), la partition fait 8 pages !
   }
  }
}
 
