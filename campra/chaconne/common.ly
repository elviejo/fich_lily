\version "2.17.6"

\header {
	title		= "Les Festes Venitiennes"
	composer	= \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)"}
	meter 		= \markup {\bold \fontsize #2 "Chaconne"} 
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
%	line-width	= 185\mm
}
	
#(set-global-staff-size 18)
#(set-default-paper-size "a4")

global = { }
globalTempo = { \override Score.MetronomeMark.transparent = ##t }
	
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
#(set-bar-number-visibility 3)

