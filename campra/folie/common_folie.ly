\version "2.17.7"


\header {
	title		= "Le Carnaval de Venise"
	 subtitle =  \markup {"Deuxième Scene :" \large "LA FOLIE, LE CARNAVAL" 
	\normalsize "et leurs Suites" } 
	composer	= \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)"}
	meter 		= \markup {\bold \fontsize #0 "Entrée de la suite de la Folie"} 
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
	
#(set-global-staff-size 19)
#(set-default-paper-size "a4")

global = { 	\time 2/2 }
globalTempo = { \override Score.MetronomeMark.transparent = ##t }

% numérotation toutes les 3 mesures
resetBarnum = \context Score \applyContext 
	#(set-bar-number-visibility 3)
