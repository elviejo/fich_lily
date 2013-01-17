\version "13.2.33" %"12.2.3"
\include "italiano.ly"
\pointAndClickOn
\paper { 
indent = 0\mm 
} 

%exemple d'accordage arbitraire 
%en partant du do = 0 
%corde 1 re = "2"
%corde 2 la = "-3"
%corde 3 fa = "-7"
%corde 4 do = "-12"
%corde 5 sol = "-17"

monAccordage = \set TabStaff.stringTunings = #'(2 -3 -7 -12 -17) 

MesCordes = \relative do { 
	<sol do fa la re>1^"corde à vide"
}

Gamme = \relative do { 
	sol4 la si do
	re mi fa sol 
	la si do re 
	mi fa sol la
	sol fa mi re
	do si la sol
}
<<
\new Staff { 
	\clef "G_8"
    \MesCordes 
    \bar "||"
    \Gamme
}
\new TabStaff {
	\monAccordage	
	\MesCordes
	  \bar "||"
    \Gamme
}
>>




