\version "2.17.6"

\header {
    title = "Les Festes Venitiennes"
    composer = \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)" }
 %arranger = \markup {\fontsize #2.5 "Joseph Bodin de Boismortier (1682 - 1765)" }
    meter = \markup { \bold \fontsize #2 "Air pour les Arlequins"   } 
    tagline = \markup {  "Partition gravée avec LilyPond (http://lilypond.org)" 
    }	    
}
date = #(strftime "%d %m %y" (localtime (current-time)))


#(set-default-paper-size "a4")
#(set-global-staff-size 19)


\paper {
	ragged-last-bottom = #'f
  line-width = 190\mm  % ---> je peux mettre n'importe quelle longueur ici,rien ne change !
  left-margin = 10\mm  % ---> par contre, si je mets 50\mm, la marge augmente !!!???
  top-margin = 10\mm	% CA VIENT DE LA CONFIGURATION DE L'IMPRIMANTE 
  bottom-margin = 10\mm
  oddFooterMarkup = \markup {\fill-line {
       \column { \fromproperty #'header:meter }
 %      \column { \fromproperty #'header:tagline }
       \column { \line {JJG le \date }} 
       } } 
}


%global = { }
globalTempo = {
    \override Score.MetronomeMark.transparent = ##t
		}
	
resetBarnum = \context Score \applyContext % pour la numérotation des mesures
  #(set-bar-number-visibility 3)
 
custom-tuning = \stringTuning <d f g' c f a d g >  
  
\score {
	
		<<
		\new Staff = "VoixI"  <<

\relative c'' { 
  	\time 3/4
        \clef "treble"
        \key f \major
        
        d8 e f g a a, | d4 d d | e8 d e f e d | cis4 a e' | a8 bes a g f-+ e
 %6
 	f4 a, d | d cis8 d e cis | d4 d d | f8 e f g a f |
 	g4 c, g' | a8 bes a g f a |
%11
	g4 c, c | f c8 d es c | d c d e f4 | f e8 f g e | f4 f f \bar ":|."
%16
	f,8 g a bes c d | c4 f, c' | d8 c d e f g | 
	e4-+ c e | fis8 e fis g a b |
% 21

}      
>>            
%% fin voix 1 ----------------------------------------------
         
	\new TabStaff = "Tablature"

 <<% { \stringTunings = #custom-tuning}
{
	<f g g>4
	<f a d>4
	<d b f>
}
>>

>>
 
}
 %%%%%%%%%%%%%%%%%%%%%%%%%