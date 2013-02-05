\include "common_villanelle.ly"  %%reprend tout ce qui est général aux parties séparées
	%%  et à la "directrice" : définition du papier, des headers, etc.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La musique, 
flute 		= \include "flute_villanelle.ly"
premier_dessus	= \include "premier_dessus_villanelle.ly"
haute_contre	= \include "haute_contre_villanelle.ly"
taille		= \include "taille_villanelle.ly"
quinte		= \include "quinte_villanelle.ly"
basse		= \include "basse_villanelle.ly"
gitane		= \include "gitane_villanelle.ly"
soprano		= \include "soprano_villanelle.ly"
%cello		= \include "cello.ly"
%clavecind	= \include "clavecind.ly"
%clavecing	= \include "clavecing.ly"
%text		= \include "text.ly"

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
  		 \gitane }
  		 \new Lyrics \lyricsto "one" \texte   
   
 \new Voice = "two"  {
  		 	 \autoBeamOff
  		 \soprano }
  		 \new Lyrics \lyricsto "two" \texte		 
  
%  \new Staff  {\flute}
  \new Staff  {\premier_dessus }  
%  \new Staff  {\haute_contre } 
%  \new Staff  {\taille} 
%  \new Staff  {\quinte}  	
%  \new Staff  {\basse } 		 
  	 >> 
   
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
  		{ \quinte }
\new Staff  {\basse } 
%>>

	
		
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
	\context {\Staff 
	\RemoveEmptyStaves
  
 	 \once \override Staff.TimeSignature #'stencil = ##f	
 	 \override  SpacingSpanner #'base-shortest-duration =#(ly:make-moment 1 4)
 	 \override VerticalAxisGroup #'remove-first = ##t
 	} 
 	 
   
  } % fin de \layout 
  
  \midi { }
  
} % fin de \score
 
