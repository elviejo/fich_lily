\include "common.ly"  %%reprend tout ce qui est général aux parties séparées
	%%  et à la "directrice" : définition du papier, des headers, etc.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La musique, mais où est le chant ?
%%%
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
		{
		\override Score.BarNumber.break-visibility = #end-of-line-invisible
		\override Score.RehearsalMark.padding	= #2.5
%			\resetBarnum
		}
		\new Staff \with {instrumentName = #"Recorder" 
				shortInstrumentName = #"Rec." }
			{\recorder}
			
		\new Staff \with {instrumentName = #"Hautbois" 
				shortInstrumentName = #"Htb." }
			{\hautbois} 			
	
		\new Staff \with{ instrumentName = #"Violon" 
				shortInstrumentName 	= #"Vln." }
			{\violon}
			
		\new Staff \with{ instrumentName = #"Alto" 
				shortInstrumentName  = #"alto" }
			{\alto} 
			
		\new Staff \with{ instrumentName = #"Basson" 
				shortInstrumentName  = #"Bsn" }
			{\basson} 		
			
		\new Staff \with{ instrumentName = #"Cello" 
				shortInstrumentName  = #"Cel." }
			{\cello} 
		>>
		

	>>		

	

\layout { }
%\midi { }
			
} 
