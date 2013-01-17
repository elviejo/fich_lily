
%{ Tablature layout for viol music

The snippet defines a specialized group of rhythmic and
tablature staves able to handle old english viol tablature
scores.

The string tunings defaults to the most common viol in d
but other usual tunings are also available.

The rhythm part is used to provide only the pace changes,
and therefore must be provided as a supplementary voice.
%}
\version "2.17.7"

% \stringTuning <d, g, c e a' d'>
"viol-in-d-tuning" = #`(,(ly:make-pitch  0 1 NATURAL)
                        ,(ly:make-pitch -1 5 NATURAL)
                        ,(ly:make-pitch -1 2 NATURAL)
                        ,(ly:make-pitch -1 0 NATURAL)
                        ,(ly:make-pitch -2 4 NATURAL)
                        ,(ly:make-pitch -2 1 NATURAL))

% \stringTuning <c, g, c e a' d'>
"viol-in-d-scord-tuning" = #`(,(ly:make-pitch  0 1 NATURAL)
                              ,(ly:make-pitch -1 5 NATURAL)
                              ,(ly:make-pitch -1 2 NATURAL)
                              ,(ly:make-pitch -1 0 NATURAL)
                              ,(ly:make-pitch -2 4 NATURAL)
                              ,(ly:make-pitch -2 0 NATURAL))

% \stringTuning <g, c f a' d' g''>
"viol-in-g-tuning" = #`(,(ly:make-pitch  0 4 NATURAL)
                        ,(ly:make-pitch  0 1 NATURAL)
                        ,(ly:make-pitch -1 5 NATURAL)
                        ,(ly:make-pitch -1 3 NATURAL)
                        ,(ly:make-pitch -1 0 NATURAL)
                        ,(ly:make-pitch -2 4 NATURAL))
                        
 %% Use r for c and skip j fret label
"frets-for-luth" = #`(,"a","b","r","d","e","f","g","h","i","k","l","m","n")                       

ViolTabLayout = \layout {
  \context { \RhythmicStaff        
    \type "Engraver_group"
    \name "ViolTabRhythmicStaff"
    \alias "RhythmicStaff"

    \description "Handles rhythm part of viol tablature."
  
    \remove "Time_signature_engraver"  % indication de la métrique
    \remove "Staff_symbol_engraver"	% ligne des notes au dessus de tab.	
    \remove "Bar_engraver"	      % barres de mesures intérmédiaires

    fontSize = #-2
    \override StaffSymbol #'staff-space = #(magstep -3)
    \override Stem #'length = #5
    \override VerticalAxisGroup #'staff-staff-spacing =
      #'((basic-distance . 1)
         (minimum-distance . 1) % augmente la distance entre la tablature  
         (padding . 1))		% et les notes de rappel 

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
    stringTunings = #viol-in-d-tuning

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

myNotes  = \relative c'  {

%	<d, g d'>4 e f8 g a4 <d b g>2. c4 d4. e8 f4 g }
\time 3/4
%        \clef "treble"
        \key f \major
        
        d'8 e f g a a, | d4 d d | e8 d e f e d | cis4 a e' | a8 bes a g f-+ e
 %6
 	f4 a, d | d cis8 d e cis | d4 d d | f8 e f g a f |
 	g4 c, g' | a8 bes a g f a |


}
	
myRhythm = \relative c { 
	a4 s a8 s a4       a2. a4 a4. a8 a4 s }
	
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	

\score {
  <<
    \new Staff {
      \clef treble
      \myNotes
    }
    \new ViolTabStaff {
      <<
        \new ViolTabRhythmicStaff {
          %\myNotes
          \myRhythm
        }
        \new ViolTabFingeringStaff {
          \myNotes
        }
      >>
    }
  >>
  \layout {
    \ViolTabLayout
  }
}
