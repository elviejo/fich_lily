
\version "2.12.3"

#(set-default-paper-size "a4")
#(set-global-staff-size 24 )

\header {
	title = "Ah! Vous dirai-je, Maman!"
	subtitle = "Arrangement à deux voix en la (trois dièses à la clé)"
	instrument = " pour Guitare"
	}
	
date = #(strftime "%d %m %y" (localtime (current-time)))	
	
\paper {
	ragged-last-bottom = #'t
	oddFooterMarkup = \markup {\fill-line {
       \column { \fromproperty #'header:meter }
       \column { \fromproperty #'header:title }
       \column { \line {JJG le \date }} 
       } } 
}
	
custom-tuning = \stringTuning <d f g' c f a d g >  
  
\score {
	
		<<
		\new Staff = "VoixI"  <<

\relative c'' { 
	%\set Staff.midiInstrument = "acoustic guitar (nylon)"
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
	

	\new TabStaff = "Tablature"

	<<% { \stringTunings = #custom-tuning}
		{
	<f g g>4
	<f a d>4
	<d b f>
		}
		>>

	>>
 
>>

}
