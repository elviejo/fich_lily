\version "2.17.6"

\header {
	title		= "Les Festes Venitiennes"
	composer	= \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)"}
	meter		= \markup {\bold \fontsize #2 " Chaconne"} 
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
	
#(set-global-staff-size 19)
#(set-default-paper-size "a4")

global = { }
globalTempo = { \override Score.MetronomeMark.transparent = ##t }
	
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
#(set-bar-number-visibility 3)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La musique, mais où est le chant ?
%%%
recorder	= \include "recorder.ly"
hautbois	= \include "hautbois.ly"
violon		= \include "violon.ly"
basson		= \include "basson.ly"
cello		= \include "cello.ly"
clavecind	= \include "clavecind.ly"
clavecing	= \include "clavecing.ly"
%text		= \include "text.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%	La partition
%%%
\score {
	<<
		\new StaffGroup <<
			{
				\override Score.BarNumber.break-visibility	= #end-of-line-invisible
				\override Score.RehearsalMark.padding	= #2.5
				\resetBarnum
			}
			\new Staff \with {instrumentName = #"Recorder" 
					shortInstrumentName = #"Rec." }
				{\recorder}
			\new Staff \with {instrumentName = #"Hautbois" 
					shortInstrumentName = #"Htb." }
				{\hautbois} 			
		
			{
				\override Score.BarNumber.break-visibility	= #end-of-line-invisible
				\override Score.RehearsalMark.padding	= #2.5
				\resetBarnum
			}
			\new Staff \with{ instrumentName = #"Violon" 
					shortInstrumentName 	= #"Vln." }
				{\violon}
			\new Staff \with{ instrumentName = #"Basson" 
					shortInstrumentName  = #"Bsn." }
				{\basson} 
			\new Staff \with{ instrumentName = #"Cello" 
					shortInstrumentName  = #"Cel." }
				{\cello} 
			>>
			
		\new PianoStaff <<
			
			\set PianoStaff.instrumentName = #"Clavecin"  
				
			\new Staff %\with{ instrumentName = #"Clavecin D." 
		%			shortInstrumentName  = #"Cl.d." }
				{\clavecind}
			\new Staff %\with{ instrumentName = #"Clavecin G." 
		%			shortInstrumentName  = #"Cl.g." }
				{\clavecing} 
		>>
	>>
}
\layout { }
\midi { }
			
