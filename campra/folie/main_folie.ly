\include "common_folie.ly"  %%reprend tout ce qui est général aux parties séparées
	%%  et à la "directrice" : définition du papier, des headers, etc.

%\include "bgcolor.ly"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La musique, 

recorder	= \include "dessus_folie.ly"
hautbois	= \include "hautbois_folie.ly"
taille		= \include "violon_folie.ly"
%alto		= \include "alto.ly"
basson		= \include "basson_folie.ly"
cello		= \include "cello_folie.ly"
clavecind	= \include "clavecind_folie.ly"
clavecing	= \include "clavecing_folie.ly"
%violon		= \include "violon.ly"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La partition
%%%
  
\score {
	
  <<  	   \new StaffGroup <<
    {    \include "améliorations.ly"  }
  	
% \new Voice = "one"  {
%  		 	 \autoBeamOff
%  		 \choeur }
%  		 \new Lyrics \lyricsto "one" \texte_one   	

  \new Staff  {\recorder }	% {\bgcolor "(rgb-color 1 0.8 0.6)"\recorder }
  \new Staff  {\hautbois }  
  \new Staff  {\taille}
%  \new Staff  {\alto} 
  \new Staff  {\basson }  % {\bgcolor "(rgb-color 1 0.8 1.6)"\basson } 
  \new Staff  {\cello} 

%  \new Staff  {\basse } 		 
  	 >> 

		
	\new PianoStaff <<			
		\set PianoStaff.instrumentName = #"Clavecin"  
		\set PianoStaff.shortInstrumentName =#"B.C."
				
			\new Staff 
				{\clavecind}
			\new Staff 
				{\clavecing} 
		>>
	
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
  	
%\context { \Staff 
%	\override TimeSignature #'style = #'single-digit } 

}% fin de \layout

  
% \midi { }
  
} % fin de \score
 

