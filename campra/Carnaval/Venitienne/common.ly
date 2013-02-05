\version "2.17.7"

\header {
	title		= "Le Carnaval de Venise"
	composer	= \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)"}
	meter 		= \markup {\bold \fontsize #2 "La Vénitienne"} 
%	meter		= \markup {\center-column {"" \fontsize #6 "" "" }}
	tagline		= \markup {"Partition gravée avec LilyPond (http://lilypond.org)"}	    
}
 
date = #(strftime "%d %m %y" (localtime (current-time)))

\paper { left-margin = 20\mm % permet d'agrandir ou de réduire la largeur de portée
	oddFooterMarkup	= \markup {
		\fill-line {
			\column { \fromproperty #'header:meter }
			\column { \fromproperty #'header:tagline }
			\column { \line {JJG le \date }} 
				} 
			} 
	ragged-last-bottom= #'f
	line-width	= 180\mm
%	indent = 20.0\mm

}
	
#(set-global-staff-size 18)
#(set-default-paper-size "a4")

global = { }
globalTempo = { 
\override Score.MetronomeMark.transparent = ##t}
	
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
	#(set-bar-number-visibility 2)

  {
         \override Score.BarNumber.break-visibility =#end-of-line-invisible
         
         \resetBarnum
         \override  Score.BarNumber.self-alignment-X = #LEFT
         \set Score.skipBars = ##t  % pour grouper les silences
         
        \set Staff.printKeyCancellation = ##f
	\set Score.skipBars = ##t
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
	\once \override Staff.TimeSignature.style = #'()
  }

%}% fin de \layout 	
