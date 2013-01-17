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
    {        \override Score.BarNumber.break-visibility =#end-of-line-invisible
         \resetBarnum
         \override  Score.BarNumber.self-alignment-X = #CENTER
  }

  	  
   {  	 \override Score.BarNumber.break-visibility =#end-of-line-invisible
         \override Score.RehearsalMark.padding = #2.5
         \resetBarnum
  }
  
  \new Staff  {\recorder }  
  \new Staff  {\hautbois } 
  \new Staff  {\violon }
  \new Staff  {\alto } 	
  \new Staff  {\basson }
  \new Staff  {\cello }
	 
 	>>
		
 	\new PianoStaff <<			
			\set PianoStaff.instrumentName = #"Clavecin"  
				
			\new Staff %\with{ instrumentName = #"Clavecin D." 
		%			shortInstrumentName  = #"Cl.d." }
				{\clavecind}
			\new Staff %\with{ instrumentName = #"Clavecin G." 
		%			shortInstrumentName  = #"Cl.g." }
				{\clavecing} 
		>>
	>>
 \layout {
 	 \context { \Score
%      \override RehearsalMark.break-align-symbols = #'(time-signature)
%      \override RehearsalMark.self-alignment-X = #LEFT
%      \override TimeSignature.break-align-anchor-alignment = #LEFT
     \override  SpacingSpanner #'base-shortest-duration =#(ly:make-moment 1 4)
     % #'base-shortest-duration permet de faire la partition plus courte.
     % en mettant  make-moment 1 16), la partition fait 8 pages !
     
   } %fin de \context 
   
  } % fin de \layout 
  
  \midi { }
  
} % fin de \score
 
