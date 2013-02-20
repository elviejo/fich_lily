\version "2.17.7"

\header {
	title		= "Les Festes Vénitiennes"
	composer	= \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)"}
	meter 		= \markup {\bold \fontsize #2 "Isabelle sur un balcon"} 
%	meter		= \markup {\center-column {"" \fontsize #6 "" "" }}
	tagline		= \markup {"Partition gravée avec LilyPond (http://lilypond.org)"}	    
}
 
date = #(strftime "%d %m %y" (localtime (current-time)))

\paper { 
	oddFooterMarkup	= \markup {
		\fill-line {
			\column { \fromproperty #'header:meter }
			\column { \fromproperty #'header:tagline }
			\column { \line {JJG le \date }} 
				} 
			} 
	ragged-last-bottom= #'f
%	ragged-right=#'f
	line-width	= 180\mm

	indent = 13.0\mm

}
	
#(set-global-staff-size 18)
#(set-default-paper-size "a4")

global = {  \numericTimeSignature
	\time 3/4 }
globalTempo = {
\override Score.MetronomeMark.transparent = ##t}
	
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
	#(set-bar-number-visibility 2)

  {
         \override Score.BarNumber.break-visibility =#end-of-line-invisible
         \resetBarnum
         \override  Score.BarNumber.self-alignment-X = #LEFT
  }
  	
