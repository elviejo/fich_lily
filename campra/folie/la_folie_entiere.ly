\version "2.17.6"

\header {
	
    title = "Les Festes Venitiennes"
    subtitle =  \markup {"Deuxième Scene :" \large "LA FOLIE, LE CARNAVAL" 
	\normalsize "et leurs Suites" } 
    composer = \markup \bold \center-column { "André CAMPRA" \small "(1660 - 1744)" }
 %arranger = \markup {\fontsize #2.5 "Joseph Bodin de Boismortier (1682 - 1765)" }
    piece = \markup { \bold \fontsize #2 "Entrée de la suite de la Folie"   } 
    tagline = \markup {  "Partition gravée avec LilyPond (http://lilypond.org)" 
    	   

    }	    
}
date = #(strftime "%d %m %y" (localtime (current-time)))


#(set-default-paper-size "a4")
#(set-global-staff-size 20)


\paper {
	ragged-last-bottom = #'f
  line-width = 190\mm  % ---> je peux mettre n'importe quelle longueur ici,rien ne change !
  left-margin = 10\mm  % ---> par contre, si je mets 50\mm, la marge augmente !!!???
  top-margin = 10\mm	% CA VIENT DE LA CONFIGURATION DE L'IMPRIMANTE 
  bottom-margin = 10\mm
  oddFooterMarkup = \markup {\fill-line {
       \column { \fromproperty #'header:piece }
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

%% Identification
bgcolor =
#(define-music-function (parser location color) (string?)
 #{\override Staff.StaffSymbol $'stencil = $(lambda (grob)
    (let* ((staff (ly:staff-symbol::print grob))
           (X-ext (ly:stencil-extent staff X))
           (Y-ext (ly:stencil-extent staff Y)))
         (set! Y-ext (cons
            (- (car Y-ext) 0)	% le "0" définit l'épaisseur de la couleur
            (+ (cdr Y-ext) 0))) % ici, "0" correspond à la portée seulement.
         (ly:grob-set-property! grob 'layer -10)
         (ly:stencil-add
           (ly:make-stencil (list 'color (eval-string color)
               (ly:stencil-expr (ly:round-filled-box X-ext Y-ext 0))
               X-ext Y-ext))
           staff)))
#})



voixI =

\context Voice = "voice 1"

\relative c'' { 
	 
	 \set Staff.instrumentName = \markup { \column { "Htb / Rec." } }
         \set Staff.midiInstrument = "Oboe"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'()
 % 	\set Score.currentBarNumber = # 731
 %	\tempo 2=55
  	
        \time 2/2
        \clef treble
        \key bes \major
        
    \repeat volta 2 {      

	d4.^\markup {\halign #'+1 \bold "Gay"} es8 d4 g,4
	
	d' g, d' g | fis d g a | bes a8 g f4 es | d es8 d c4 bes
	
	a fis g a | bes4. a8 g a bes c | d4 d d c 
  }
        \alternative {
        		{d1 }
        		{d1 } 
        }
        \repeat volta 2 {        
%11	
	f4. g8 f4 bes,4 | f' bes, f' bes | a-+ f bes bes8 a | g4 f es d | c f c f
%16
	bes,4. c8 c4.-+ bes8 | bes4. a8 bes4 c | d4. es8 d c bes a | 
	g4 c8 bes a4.-+ g8 | fis2 d'4 g,	
%21
	d'4 e8 f e4 fis8 g | fis4. e8 d e fis d | g4 g g fis 
	
	 }
        \alternative {
        		{g1 }
        		{g1 } 
        }		
        \bar "|."







}      
                
%% fin voix 1 ----------------------------------------------
         
voixII =
\context Voice = "voice 2"
\relative c'' { 
	 \set Staff.instrumentName = \markup { \column { "2è dessus" } }
         \set Staff.midiInstrument = "recorder"
%         \set Staff.printKeyCancellation = ##f
 
  \once \override Staff.TimeSignature.style = #'()
%  \set Score.currentBarNumber = # 731
  		
  	\time 2/2
        \clef treble  
        \key bes \major

        g2 g4 g	| g4 g8 [a bes c] d4 | d a bes c | d2 c4 a | bes4. bes8 fis4 g |
        
        fis d g fis | g2 g4 g | a bes g a | 
        fis1 | fis
%11
	bes2 bes4 bes | bes bes8 c d4 d | c c d d8 c | bes4 bes a bes | a2.-+ a4 |
%16
	g g f4. f8 | f2 bes4 a | bes4. c8 bes4 f | es2 es4 es | d2 g4 g  	
%21
	g4 b c c |d2 d4 d d8 c d es d4 a | 
	bes1 | bes1




	
}

%% fin voix 2 ----------------------------------------------

%% voix 3
voixIII =
\context Voice = "voice 3"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Violon" } }
         \set Staff.midiInstrument = "violin"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731

       
        \time 2/2
        \clef treble  
        \key bes \major
        
        bes2 bes4 bes | bes8 c bes a g4 bes' | a fis g fis | 
        g bes a a8 g | f4. g8 a4 d,
        
        d2 d4 c | bes g8 a bes c d es | f4 d bes c | 
        a1 | a
 %11
 	d2 d4 d | d f f f | f2 f4 f | g bes c f, | f2. f4 |
 	
 	d es c f | d2 f4 f | f2 f8 es d c | bes4 g c c8 bes | a4 d d d 
%21
	bes'4 g g a | a4. g8 fis g a fis | bes4 bes a-+ a | 
	g1 | g1
        
        
        
        
        
        
        
        
        
        
}   
%%%%%%%%%%%%%%%%%%%%% fin voix 3 %%%%%%%%%%%
%% voix 3
voixIII =
\context Voice = "voice 3"
\relative c' { 
	 \set Staff.instrumentName = \markup { \column { "Violon" } }
         \set Staff.midiInstrument = "violin"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731

       
        \time 2/2
        \clef treble  
        \key bes \major
        
        bes2 bes4 bes | bes8 c bes a g4 bes' | a fis g fis | 
        g bes a a8 g | f4. g8 a4 d,
        
        d2 d4 c | bes g8 a bes c d es | f4 d bes c | 
        a1 | a
 %11
 	d2 d4 d | d f f f | f2 f4 f | g bes c f, | f2. f4 |
 	
 	d es c f | d2 f4 f | f2 f8 es d c | bes4 g c c8 bes | a4 d d d 
%21
	bes'4 g g a | a4. g8 fis g a fis | bes4 bes a-+ a | 
	g1 | g1
        
        
        
        
        
        
        
        
        
        
}   
%%%%%%%%%%%%%%%%%%%%% fin voix 3 %%%%%%%%%%%
voixIV = 
\context Voice =  "voice 4"
\relative c { 
	
	 \set Staff.instrumentName = \markup { \column { "Basson" } }
         \set Staff.midiInstrument = "bassoon"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 2/2
        \clef bass  
        \key bes \major
        
         d'2 d4 d | d4. c8 bes! a g4 | d' d d c | bes2 c4 c | d bes c d |
         
         d a bes c | d4. c8 bes a g4 | d' d d g, | 
         d'1 | d
	
        bes2 d4 f | bes, bes bes f8 g | a4 a8 g f4 bes | bes d es f | f c c d |
        
        d c8-+ bes a4.-+ bes8 | bes4. c8 d4 c | bes4. f8 bes4 bes |
        bes c c a | a d, d' d8 c 
         
        bes4 d c e | d2 a4 a | bes g d' d 
        d1 | d
         
         
         
         
         
         
  
  }
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%    fin voix IV   %%%%%%%%%%
voixV =
\context Voice = "voice 5"
\relative c { 
	 \set Staff.instrumentName = \markup { \column { "Cello" } }
         \set Staff.midiInstrument = "Cello"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 2/2
        \clef bass  
        \key bes \major
        
        g'2 g4 g | g, g' g8 a bes c | d4 c bes a | g2 a4 f | bes4. bes8 a4 g |
        
        d c bes a | g2 g'4 g, | f f' es es, |
        d2 d''4 d | d,,2 d''4 d8 c 
        
        bes2 bes4 bes | bes bes, bes8 c d es | 
        f4 f8 es d2 | es4 d c bes | f2 f'4 d
        
        g es f f, | bes2 bes'4 f | bes4. a8 bes4 bes, | 
        es4. d8 es4 c | d d'8 c bes c bes a 
%21
	g4 g, c a | d2 d4 c | bes8 a bes c d4 d, |
	g2 g'4 g8 a | g,1
} 
  
 %%%%%%%%%% fin de la musique 

upper =
\context Voice = "droite"
\relative c { 
	 \set Staff.instrumentName = \markup { \column { "" } }
         \set Staff.midiInstrument = "bassoon"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 2/2
        \clef treble  
        \key bes \major
        
        <bes' d g>2 <d g bes>4 <bes d g> | <g' bes d>2 <g bes d>4 <bes d g>
%3
	<a d fis> <fis a d> <g d' g> <a c fis> |
        <bes d g>2 <fis c' fis>4 <a c es> | 
        
        << { <bes d>2  <fis c'>4 <g bes> } \\
          { f4. g8 d2 }		% et voilà le bon !!!
       >> 
%6
<d fis a>4 <a d fis> <bes d g> <c fis a>
<d g bes>2 <bes d g>4 <d g bes>

	<< { d'2. <a c>4 } \\
	   { <f a>4 <f bes> <g bes> g4 }		
       >> 
%9
	<fis a d>1
	<fis a d>1
% 11
	<bes d f>2 <bes d f>4 <f bes d> | 
	<d f bes> <bes d f> <d f bes> <f bes d >
	<f a c> <c f a> <bes'd f> <f bes d> |
	
	<< {<bes es g>4 <f bes f'> <a es'> <bes d> } \\
	{ bes f f2 } >>	

	<< {c'2 f } \\
	{ <f, a>2 <a c>4 <a d> } >>	
%16	
	<< {<bes d>4 <c es> <a c>2 } \\
	{ g2 f } >>
  
	<d f bes>2 <d f bes>4 <f a c> | 
	
	<< {<bes d>4. <c es>8 <bes d>4 <f bes> } \\
	{ f2. d4 } >>
	
	<< {g4 c a4. g8  } \\
	{ <bes e>4  <es g> <c es>2 } >>
	
	<a, d fis>2 <d g d'>4 <d g>
%21
	<< { d'4 e8 f e4 fis8 g } \\
	{ <g, bis>4 <b d>4 <g c> <a c>} >>
	
	<a d fis>2 <fis a d>4 <a d fis> 
      
	<bes d g>2 <a d g>4 <a d fis>
	<bes d g>1 <bes d g>1
  
  }
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%    fin voix IV   %%%%%%%%%%
lower =
\context Voice = "gauche"
\relative c { 
	 \set Staff.instrumentName = \markup { \column { "" } }
         \set Staff.midiInstrument = "Cello"
%         \set Staff.printKeyCancellation = ##f

  \once \override Staff.TimeSignature.style = #'() 
%  \set Score.currentBarNumber = # 731
  
  	\time 2/2
        \clef bass  
        \key bes \major
        
        g'2 g4 g | g, g' g8 a bes c | d4 c bes a | g2 a4 f | bes4. bes8 a4 g |
        
        d c bes a | g2 g'4 g, | f f' es es, |
        d2 d''4 d | d,,2 d''4 d8 c 
        
        bes2 bes4 bes | bes bes, bes8 c d es | 
        f4 f8 es d2 | es4 d c bes | f2 f'4 d
        
        g es f f, | bes2 bes'4 f | bes4. a8 bes4 bes, | 
        es4. d8 es4 c | d d'8 c bes c bes a 
%21
	g4 g, c a | d2 d4 c | bes8 a bes c d4 d, |
	g2 g'4 g8 a | g,1
} 
  
 %%%%%%%%%% fin de la musique 

 %%%%%%%%%%%%%%%%%%%%%%%%%
 
 
 
 \score { 
	<<	
	\new StaffGroup <<
  
    \new Staff = "voice 1" {  \voixI }
    \new Staff = "voice 2" {  \voixII }
    \new Staff = "voice 3"  {\voixIII } 
  
  		
    \new Staff = "voice 4" {\voixIV } 
    \new Staff = "voice 5"  {\voixV } 



>>
    \new PianoStaff <<
    	    
    	    {
         \override Score.BarNumber.break-visibility =#end-of-line-invisible
          
         \override Score.RehearsalMark.padding = #2.5
         \resetBarnum
        \override  Score.BarNumber.self-alignment-X = #LEFT 

  }  
    	    
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout { }
   
  \midi { }
}
