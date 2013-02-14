\include "common_rondeau.ly"  %%reprend tout ce qui est général aux parties séparées
	%%  et à la "directrice" : définition du papier, des headers, etc.

%\include "bgcolor.ly"
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La musique, 

recorder	= \include "recorder_rondeau.ly"
basson		= \include "basson_rondeau.ly"

violon_un	= \include "violon_un_rondeau.ly"
violon_deux	= \include "violon_deux_rondeau.ly"
cello		= \include "cello_rondeau.ly"
%clavecind	= \include "clavecind.ly"
%clavecing	= \include "clavecing.ly"


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La partition
%%%
  
\score {
	
  <<  	   \new StaffGroup << \include "améliorations.ly"
   
% \new Voice = "one"  {
%  		 	 \autoBeamOff
%  		 \choeur }
%  		 \new Lyrics \lyricsto "one" \texte_one   	

  \new Staff {\recorder } % bgcolor "(rgb-color 1 0.8 0.6)"\recorder }
%  \new Staff  {\hautbois }  
  \new Staff  {\basson}
  \new Staff  {\violon_un} 
  \new Staff  {\violon_deux} 
%  \new Staff  {\bgcolor "(rgb-color 1 0.8 1.6)"\basson } 
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
 

