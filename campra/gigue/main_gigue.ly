\include "common_gigue.ly"  %%reprend tout ce qui est général aux parties séparées
	%%  et à la "directrice" : définition du papier, des headers, etc.

%\include "bgcolor.ly"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La musique, 

recorder	= \include "recorder_gigue.ly"
hautbois	= \include "hautbois_gigue.ly"
taille		= \include "violon_gigue.ly"
%alto		= \include "alto.ly"
basson		= \include "basson_gigue.ly"
cello		= \include "cello_gigue.ly"
%clavecind	= \include "clavecind_gigue.ly"
%clavecing	= \include "clavecing_gigue.ly"


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

		
%	\new PianoStaff <<			
%		\set PianoStaff.instrumentName = #"Clavecin"  
%		\set PianoStaff.shortInstrumentName =#"B.C."
%				
%			\new Staff 
%				{\clavecind}
%			\new Staff 
%				{\clavecing} 
%		>>
	
>>	
	
\layout {
	\context {	\RemoveEmptyStaffContext
	\override VerticalAxisGroup #'remove-first = ##t		

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
 

