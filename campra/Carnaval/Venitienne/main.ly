\include "common.ly"  %%reprend tout ce qui est général aux parties séparées
	%%  et à la "directrice" : définition du papier, des headers, etc.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La musique, 

bohemienne	= \include "bohemienne.ly"
choeur		= \include "choeur.ly"
esclavon	= \include "esclavon.ly"
premier_dessus	= \include "premier_dessus.ly"
haute_contre	= \include "haute_contre.ly"
taille		= \include "taille.ly"
quinte		= \include "quinte.ly"
basse		= \include "basse.ly"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La partition
%%%
  
\score {
	
  <<	  	  
  \new StaffGroup <<
    {    \override Score.BarNumber.break-visibility =#end-of-line-invisible
         \resetBarnum
         \override  Score.BarNumber.self-alignment-X = #LEFT
         \override Score.RehearsalMark.padding = #2.5
    }
  	
 \new Voice = "one"  {
  		 	 \autoBeamOff
  		 \bohemienne }
  		 \new Lyrics \lyricsto "one" \texte_one   
   
 \new Voice = "two"  {
  		 	 \autoBeamOff
  		 \choeur }
  		 \new Lyrics \lyricsto "two" \texte_two	
  		 
 \new Voice = "three"  {
  %  \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 4)
  		 	 \autoBeamOff
  		 \esclavon }
  		 \new Lyrics \lyricsto "three" \texte_three	

  \new Staff  {\premier_dessus }  
  \new Staff  {\haute_contre } 
  \new Staff  {\taille} 
  \new Staff  {\quinte} 
%  \new Staff  {\basse } 		 
 % 	 >> 
   
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

 
 \new Staff  {\basse }
>>

	
		
 %	\new PianoStaff <<			
%			\set PianoStaff.instrumentName = #"Clavecin"  
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
 	\override  SpacingSpanner #'base-shortest-duration =#(ly:make-moment 1 4)	   
	} %fin de ce \context
	
	
\context { \Score   % les 2 lignes qui suivent réduisent l'espace entre les portées
    \override StaffGrouper.staff-staff-spacing.padding = #3
    \override StaffGrouper.staff-staff-spacing.basic-distance = #1
  	} %fin de ce \context	

}% fin de \layout

  
%  \midi { }
  
} % fin de \score
 

