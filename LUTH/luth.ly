\version "2.17.7"

%exemple d'accordage Luth renaissance 6 choeurs 
%en partant du do = 0 
%corde 1 sol = "7"
%corde 2 re  = "2"
%corde 3 la  = "-3"
%corde 4 fa  = "-7"
%corde 5 do  = "-12"
%corde 6 sol = "-17"

%% Use r for c and skip j fret label
"frets-for-luth" = #`("a","b","r","d","e","f","g","h","i","k","l","m","n")  

%\stringTuning <g, c f a' d' g''>
"viol-in-g-tuning" = #`(,(ly:make-pitch  0 4 NATURAL)
                        ,(ly:make-pitch  0 1 NATURAL)
                        ,(ly:make-pitch -1 5 NATURAL)
                        ,(ly:make-pitch -1 3 NATURAL)
                        ,(ly:make-pitch -1 0 NATURAL)
                        ,(ly:make-pitch -2 4 NATURAL))


%LuthTuning = \set TabStaff.stringTunings = #'(7 2 -3 -7 -12 -17)

%LesCordes = { 
%<sol, do fa la re' sol'>1^"corde à vide"
%}

Gamme = \relative c' { 
	\override StringNumber  #'transparent = ##t 
%	sol4 la si do
%	re mi fa sol 
%	la si do re 
%	mi fa sol la
%	si2 <sol do,, sol\6 >

	g4 a b c 
	d e f g
	a b c d
	e f g a
	b2 <g' c,, g\6>

}

Tablature = \relative c {  

	<f d r>4
	<f d c>4
	<d c f>
}


<<
\new Staff {
	\clef "treble" 
 %   \LesCordes 
 %   \bar "||"
	\Gamme
}
\new TabStaff 
 #(define custom-tuning #{ \stringTuning <g' c' f' a'' d'' g''> #})
	\Tablature 
}


  
