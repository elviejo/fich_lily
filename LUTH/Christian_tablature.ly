
\version "2.17.7"

%custom-tuning = \stringTuning <g' c f a d g >

%\stringTuning <g, c, f a d' g'>
"viol-in-g-tuning" = #`(,(ly:make-pitch  0 4 NATURAL)
                        ,(ly:make-pitch  0 1 NATURAL)
                        ,(ly:make-pitch -1 5 NATURAL)
                        ,(ly:make-pitch -1 3 NATURAL)
                        ,(ly:make-pitch -1 0 NATURAL)
                        ,(ly:make-pitch -2 4 NATURAL))
                        
%% Use r for c and skip j fret label
"frets-for-luth" = #`("a","b","r","d","e","f","g","h","i","k","l","m","n")   



mynotes = \relative c' {
%  c'4 e' g' c'' |
%  e''4 g'' b'' c'''

%	d4 f g' c 
%	f a d g
	\time 3/4
	d'8 e f g a a, 
	d4 d d	

	}
	
tablature = {
	 <f d a>4
	 <f d g >
	 <d f f >

	}



%<<
	\new Staff {
	\clef "treble"
	\mynotes
	}
	\new TabStaff \with {
		LuthTuning = \viol-in-g-tuning % <g, c f a d' g'> }
		\tablature				
	}
%\tablature

%>>
