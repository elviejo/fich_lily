\include "common_rigaudon.ly"  %%reprend tout ce qui est général aux parties séparées
	%%  et à la "directrice" : définition du papier, des headers, etc.

%\include "bgcolor.ly"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La musique, 

choeur		= \include "choeur_rigaudon.ly"
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
    {    \include "améliorations.ly"  }
  	
 \new Voice = "one"  {
  		 	 \autoBeamOff
  		 \choeur }
  		 \new Lyrics \lyricsto "one" \texte_one   	

  \new Staff {\recorder }	% {\bgcolor "(rgb-color 1 0.8 0.6)"\recorder }
  \new Staff  {\hautbois }  
  \new Staff  {\taille}
%  \new Staff  {\alto} 
  \new Staff  {\basson }  % {\bgcolor "(rgb-color 1 0.8 1.6)"\basson } 
  \new Staff  {\cello} 

%  \new Staff  {\basse } 		 
  	 >> 

		
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
 %	\once \override Staff.TimeSignature #'stencil = ##f	
 %	\override  SpacingSpanner #'base-shortest-duration =#(ly:make-moment 1 32)
 %	\override  Score.TimeSignature #'break-visibility = #end-of-line-invisible
	} %fin de ce \context
	
	
\context { \Score   % les 2 lignes qui suivent réduisent l'espace entre les portées
    \override StaffGrouper.staff-staff-spacing.padding = #3
    \override StaffGrouper.staff-staff-spacing.basic-distance = #1
    
  	} %fin de ce \context	
  	
\context { \Staff 
	\override TimeSignature #'style = #'single-digit } 

}% fin de \layout

  
% \midi { }
  
} % fin de \score
 

