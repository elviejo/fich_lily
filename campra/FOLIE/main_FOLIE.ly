\include "common_FOLIE.ly" %%reprend tout ce qui est général aux parties séparées
%% et à la "directrice" : définition du papier, des headers, etc.

%\include "bgcolor.ly"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% La musique,

folie	 	= \include "folie_FOLIE.ly"
%recorder 	= \include "recorder_isabelle.ly"
hautbois 	= \include "hautbois_FOLIE.ly"
violon 		= \include "violon_FOLIE.ly"
%alto = \include "alto.ly"
basson 		= \include "basson_FOLIE.ly"
%cello 		= \include "cello_isabelle.ly"
%clavecind = \include "clavecind.ly"
%clavecing = \include "clavecing.ly"
%violon = \include "violon.ly"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% La partition
%%%
  
\score {

 <<
  
   \include "améliorations.ly"
  
   	\new Voice = "folie" { \autoBeamOff \folie }
   	\new Lyrics \lyricsto "folie" \texte_one
   	
     \new StaffGroup <<	

%  \new Staff {\recorder } %\bgcolor "(rgb-color 1 0.8 0.6)"\recorder }
	\new Staff {\violon}
	\new Staff {\hautbois }
  
% \new Staff {\alto}
%  	\new Staff {\basson } %\bgcolor "(rgb-color 1 0.8 1.6)"\basson }
%  \new Staff {\cello}

% \new Staff {\basse }
 %  >>
   
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
 { \basson }

 
% \new Staff {\cello }
>>



% \new PianoStaff <<
% \set PianoStaff.instrumentName = #"Clavecin"
% \set PianoStaff.shortInstrumentName =#"B.C."
%
% \new Staff %\with{ instrumentName = #"Clavecin D."
% % shortInstrumentName = #"Cl.d." }
% {\clavecind}
% \new Staff %\with{ instrumentName = #"Clavecin G."
% % shortInstrumentName = #"Cl.g." }
% {\clavecing}
 % >>

>>

\layout {
\context { \RemoveEmptyStaffContext
\override VerticalAxisGroup #'remove-first = ##t

} %fin de ce \context


\context { \Score % les 2 lignes qui suivent réduisent l'espace entre les portées
    \override StaffGrouper.staff-staff-spacing.padding = #3
    \override StaffGrouper.staff-staff-spacing.basic-distance = #1
   } %fin de ce \context
   
%   \context { \Staff 
%	\override TimeSignature #'style = #'single-digit } 


}% fin de \layout

  
 \midi { }
  
} % fin de \score
