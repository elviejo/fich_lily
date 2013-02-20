\override Score.BarNumber.break-visibility =#end-of-line-invisible
  %       \resetBarnum
 % Aligner les N° de mesures à gauche de la mesure
         \override  Score.BarNumber.self-alignment-X = #LEFT
         
         \override Score.RehearsalMark.padding = #2.5
% met le numéros de mesure en italique et en rouge
 	 \override Score.BarNumber #'font-shape = #'italic
 	 \override Score.BarNumber #'color = #red
% N° de mesures dans un cercle
 %	 \override Score.BarNumber  #'stencil
 %	 = #(make-stencil-circler 0.1 0.25 ly:text-interface::print)
 % augmenter la taille des N° de mesures
 	\override Score.BarNumber #'font-size = #0.5
