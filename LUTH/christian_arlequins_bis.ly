
\version "2.12.3"

#(set-default-paper-size "a4")
#(set-global-staff-size 24 )

\header {
	title = "Air pour les Arlequins"
%	subtitle = "Arrangement à deux voix en la (trois dièses à la clé)"
%	instrument = " pour Guitare"
	}
	
date = #(strftime "%d %m %y" (localtime (current-time)))	
	
\paper {
%	ragged-last-bottom = #'f
	oddFooterMarkup = \markup {\fill-line {
       \column { \fromproperty #'header:meter }
       \column { \fromproperty #'header:title }
       \column { \line {JJG le \date }} 
       } } 
}
	
custom-tuning = \stringTuning <d f g' c f a d g >  

%\stringTuning <g, c f a' d' g''>
"viol-in-g-tuning" = #`(,(ly:make-pitch  0 4 NATURAL)
                        ,(ly:make-pitch  0 1 NATURAL)
                        ,(ly:make-pitch -1 5 NATURAL)
                        ,(ly:make-pitch -1 3 NATURAL)
                        ,(ly:make-pitch -1 0 NATURAL)
                        ,(ly:make-pitch -2 4 NATURAL))
                        
 %% Use r for c and skip j fret label
"frets-for-luth" = #`("a","b","r","d","e","f","g","h","i")
ViolTabLayout = \layout {
  \context {
    \RhythmicStaff
    \type "Engraver_group"
    \name "ViolTabRhythmicStaff"
    \alias "RhythmicStaff"

    \description "Handles rhythm part of viol tablature."
  
    \remove "Time_signature_engraver"
    \remove "Staff_symbol_engraver"
    \remove "Bar_engraver"

    fontSize = #-3
    \override StaffSymbol #'staff-space = #(magstep -3)
    \override Stem #'length = #5
    \override VerticalAxisGroup #'staff-staff-spacing =
      #'((basic-distance . 1)
         (minimum-distance . 1)
         (padding . 1))

    % useful to merge chords noteheads
    \override NoteHead #'X-offset = #0
  }

  \context {
    \TabStaff
    \type "Engraver_group"
    \name "ViolTabFingeringStaff"
    \alias "Staff"

    \description "Handles fingering part of viol tablature."

    tablatureFormat = #fret-letter-tablature-format
    fretLabels = #frets-for-luth
    stringTunings = #viol-in-g-tuning

    % useful for tablature only scores
    \revert TimeSignature #'stencil
    \override TimeSignature #'style = #'single-digit
  }

  \context {
    \type "Engraver_group"
    \name "ViolTabStaff"
    \consists "Vertical_align_engraver"
    topLevelAlignment = ##f

    \description "Handles viol tablature."

    \defaultchild "ViolTabFingeringStaff"
    \accepts "ViolTabRhythmicStaff"
    \accepts "ViolTabFingeringStaff"
  }

  \context {
    \Score
    \accepts "ViolTabStaff"
  }
}

  
\score {
	<<
\new Staff = "VoixI"  <<

	\relative c'' { 
	
	\once \override Score.RehearsalMark #'break-visibility = 
		#end-of-line-visible
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT	
	
	%\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\stemUp a4-2 a e' e |
	fis-2 fis e2 |
	d4-3 d cis-3 cis |
	b b a2-3 | \mark "Fine" \bar "|." \break

	e'4 e d-3 d |
	cis-3 cis cis b |
	e4 e d-3 d |
	cis-3 cis cis\mark "D.C. al Fine" b |
	

	}

>>	

	\new TabStaff << 
	{ % = "Tablature"

%		<< { \stringTunings = #custom-tuning}
%		
%		
	

	<f d a>4   % ici, les "c" et les "r" ne sont pas reconnus
	<f a d>4   % de même devraient figurer des lettres au lieu de chiffres
	<d b f>
	<d b f>
		}
		>>

%	>>
 %
%>>

			% \new ViolTabStaff {
			% <<
			%\new ViolTabRhythmicStaff {
			% \myNotes
			% \Tablature }
			% \new ViolTabFingeringStaff { \myNotes }
			% >>
			% }
  >>
%>>  



  \layout {  \ViolTabLayout  }
  \midi {  }


} % fin de score (ligne 98)
