\include "common_rigaudon.ly"  %%reprend tout ce qui est général aux parties séparées
	%%  et à la "directrice" : définition du papier, des headers, etc.

%\include "bgcolor.ly"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La musique, 

%choeur		= \include "choeur_chaconne.ly"
recorder	= \include "dessus_rigaudon.ly"
hautbois	= \include "haute_contre_rigaudon.ly"
taille		= \include "taille_rigaudon.ly"
%alto		= \include "alto.ly"
basson		= \include "quinte_rigaudon.ly"
cello		= \include "cello_rigaudon.ly"
%clavecind	= \include "clavecind.ly"
%clavecing	= \include "clavecing.ly"
%violon		= \include "violon.ly"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La partition
%%%
  
\score {
	
  <<  	   \new StaffGroup <<
    {    \override Score.BarNumber.break-visibility =#end-of-line-invisible
         \resetBarnum
         \override  Score.BarNumber.self-alignment-X = #LEFT
         \override Score.RehearsalMark.padding = #2.5
         \override Score.BarNumber #'font-shape = #'italic % N° des mesures en italique
         \override Score.BarNumber #'color = #red % N° des mesures en rouge
%        \override Score.BarNumber #'stencil = % insertionl des N° de mes. dans un cercle
%         #(make-stencil-circler 0.1 0.05 ly:text-interface::print)


    }
  	
% \new Voice = "one"  {
%  		 	 \autoBeamOff
%  		 \choeur }
%  		 \new Lyrics \lyricsto "one" \texte_one   	

\new Staff  {\recorder }    %	{\bgcolor "(rgb-color 1 0.8 0.6)"\recorder }
  \new Staff  {\hautbois }  
  \new Staff  {\taille}
%  \new Staff  {\alto} 
  \new Staff  {\basson } %\bgcolor "(rgb-color 1 0.8 1.6)"\basson } 
  \new Staff  {\cello} 

%  \new Staff  {\basse } 		 
  	 >> 
   
% \new Staff \with { %% colorisation de cette portée
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
%  		{ \quinte }

 
% \new Staff  {\basse }
%>>

	
		
%	\new PianoStaff <<			
%			\set PianoStaff.instrumentName = #"Clavecin"  
%				\set PianoStaff.shortInstrumentName =#"B.C."
%				
%			\new Staff %\with{ instrumentName = #"Clavecin D." 
%		%			shortInstrumentName  = #"Cl.d." }
%				{\clavecind}
%			\new Staff %\with{ instrumentName = #"Clavecin G." 
%		%			shortInstrumentName  = #"Cl.g." }
%				{\clavecing} 
 %		>>
	
>>	
	
\layout {
	\context {	\RemoveEmptyStaffContext
	\override VerticalAxisGroup #'remove-first = ##t		
 	\once \override Staff.TimeSignature #'stencil = ##f	
 	\override  SpacingSpanner #'base-shortest-duration =#(ly:make-moment 1 32)
 	\override  Score.TimeSignature #'break-visibility = #end-of-line-invisible
	} %fin de ce \context
	
	
\context { \Score   % les 2 lignes qui suivent réduisent l'espace entre les portées
    \override StaffGrouper.staff-staff-spacing.padding = #3
    \override StaffGrouper.staff-staff-spacing.basic-distance = #1
  	} %fin de ce \context	

}% fin de \layout

  
 \midi { }
  
} % fin de \score
 

