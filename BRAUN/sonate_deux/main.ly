\include "common.ly"  %%reprend tout ce qui est général aux parties séparées
	%%  et à la "directrice" : définition du papier, des headers, etc.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La musique, 
basson_un	= \include "basson_un.ly"
basson_deux	= \include "basson_deux.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La partition
%%%
  
\score {
<<	
	
 
  \new StaffGroup <<
  
  	  \new Staff  {\basson_un }
  
  	  \new Staff  {\basson_deux }
  
	>>
>> 	
		


    \layout { }

    \midi {  } 
} % score

 
