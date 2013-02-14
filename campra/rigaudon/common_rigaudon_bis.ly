\version "2.17.7"

\header {
	title		= "Les Festes Vénitiennes"
	composer	= \markup \bold \center-column { "André CAMPRA (1660 - 1744)"}
	meter 		= \markup {\bold \fontsize #1.5 "Rigaudon"} 
%	meter		= \markup {\center-column {"" \fontsize #6 "" "" }}
	tagline		= \markup {"Gravé avec LilyPond (http://lilypond.org)"}	    
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
						
%	ragged-last-bottom= #'f
	line-width	= 180\mm
%	indent = 20.0\mm	

}
	
#(set-global-staff-size 19)
#(set-default-paper-size "a4")

global = { } %\override Staff.TimeSignature #'style = #'single-digit }
	

globalTempo = { 
%	\override Score.MetronomeMark #'transparent = ##t}
	
%	resetBarnum = \context Score \applyContext % pour la numérotation des mesures
%	#(set-bar-number-visibility 3)

	

  {
 %       \override Score.BarNumber.break-visibility =#end-of-line-invisible       
 %       \resetBarnum
 %       \override  Score.BarNumber.self-alignment-X = #LEFT
        \set Score.skipBars = ##t  % pour grouper les silences         
 %       \set Staff.printKeyCancellation = ##f
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(-6 . 6)
%	\override TextScript.padding = #2.0
	\override MultiMeasureRest.expand-limit = 1
%	\once \override Staff.TimeSignature.style = #'()
%	\override  Score.TimeSignature #'break-visibility = #end-of-line-invisible
	
	
  }

%}% fin de \layout 	
