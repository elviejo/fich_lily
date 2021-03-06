\version "2.17.7"

\markup \vspace #4


\header {
	title		= "2ème sonate"
	subtitle	= "extraite du cahier de 6 sonates pour deux bassons ou deux basses"
	composer	= \markup \bold \center-column { "Jean Daniel BRAUN (1767 - 1832)"}
%	meter 		= \markup {\bold \fontsize #2 "Largo"} 
%	poet		= \markup {\center-column {"" \fontsize #6 "" "" }}	
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
globalTempo = { \override Score.MetronomeMark.transparent = ##t}
	
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
	#(set-bar-number-visibility 2)

  {
         \override Score.BarNumber.break-visibility =#end-of-line-invisible
         \resetBarnum
 %        \override  Score.BarNumber.self-alignment-X = #CENTER
 %        \tweak #'color #red 
        
  }
  	
