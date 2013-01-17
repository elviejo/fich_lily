
\version "2.12.3"

#(set-default-paper-size "a4")
#(set-global-staff-size 24 )

\header {
	title = "Ah! Vous dirai-je, Maman!"
	subtitle = "Arrangement à deux voix en la (trois dièses à la clé)"
	instrument = " pour Guitare"
%	composer = "Trad."
%	poet = "Trad."

	}

global = {
	\key a \major
	\time 4/4
%	\tempo 4=80    % (ça me semble un peu lent !)
	}

upper = \relative c' { 

\global
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\stemUp a4-2 a e' e |
	fis-2 fis e2 |
	d4-3 d cis-3 cis |
	b b a2-3 |

	\once \override Score.RehearsalMark #'break-visibility = 
		#end-of-line-visible
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT

	\mark "Fine" \bar "|." \break

	e'4 e d-3 d |
	cis-3 cis cis b |
	e4 e d-3 d |
	cis-3 cis cis b |

%	\once \override Score.RehearsalMark #'break-visibility = 
%		#end-of-line-visible
	\once \override Score.RehearsalMark #'self-alignment-X = #RIGHT

	\mark "D.C. al Fine"

	}
%Paroles = \lyricmode {
\addlyrics {
	Ah! Vous di- rai- je, Ma- man
	ce qui cau- se mon tour- ment.
	Pa- pa dit que je ré- son- ne %---> RAIsonne ! (pas comme le tambour, quand même ! :-))
	com- me une gran- de per- son- ne

	Moi, je dis que les bon- bons
	Va- lent mieux que la rai- son.
}
	
	
lower = \relative c' {

\global

	\stemDown a,2 cis'4-3 cis |
	d-3 d cis2-3 |
	b4-4\3 b\3 a-2 a |
	gis-1 e-2 a,2 |
	cis'4-3 cis b-4\3 b\3 |
	a-2 a e-2 gis-1 |
	cis4-3 cis b-4\3 b\3 |
	a-2 a e-2 gis-1 |

}

\score {
<<
	\new StaffGroup \with {
		\consists "Instrument_name_engraver"
		instrumentName = "Guitare"
	} 

%	\new Staff \with {
%		midiInstrument = "acoustic guitar (nylon)"
%	}

	{ \clef "treble_8" << \upper \\ \lower >> }

	\new TabStaff \with {
		stringTunings = #guitar-tuning
	}

%	<<
%	\new TabVoice { \voiceOne \upper }
	\new TabVoice { \voiceTwo \lower }

%	>>

 
>>

	\midi { }

	\layout {
		\context { \TabStaff
		\override TimeSignature #'style = #'numbered
		\override Stem #'transparent = ##t
		\override Beam #'transparent = ##t }
	}

}

