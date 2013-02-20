\version "2.17.7"

\context Voice = "premier_dessus"


\relative c'' {
\set Staff.instrumentName = \markup { \column { "Premier dessus" } }
\set Staff.midiInstrument = "recorder"
\set Staff.shortInstrumentName =#"1er des."
%\set Staff.bgcolor = blue

   \time 3/4
   \clef treble
                \key c \major
                
                \set Score.currentBarNumber = #102
                \partial 4
                
                
                e8^ \markup {\fontsize #2 {"[Rondeau]"}} f |
                g4 g c, | d8 c d e f4 | e f8 e d-+ c | d4 d e8 f |
                g4 g c, | d8 c d e f4 |
%108
e4 d8-+ c d b | c4 c
e8^ \markup \box {\fontsize #2 {"1er Couplet"}} f | g4 e-+ f
%111
g8 f g a g4 | g a8 g f e | d4-+ d d8 e | f4 d g |
%115
e8-+ d e f e4 | a fis8 g a fis |
g4 g e8^ \markup {\fontsize #2 {"[Rondeau]"}} f |
g4 g c, | d8 c d e f4 | e f8 e d-+ c |
%121
d4 d e8 f | g4 g c, | d8 c d e f4 | e4 d8-+ c d b | c4 c
e8^ \markup \box {\fontsize #2 {"2e Couplet"}} f | g4 d e-+ | f8 e f g f4
%128
f e8-+ f g e | f4 f f8 g | a4 a d, | g8 f g a g4 | c, b8-+ c d b |
c4 c e8^ \markup {\fontsize #2 {"[Rondeau]"}} f | g4 g c, |
%135
d8 c d e f4 | e f8 e d-+ c | d4 d e8 f | g4 g c, | d8 c d e f4 |
e d8-+ c d b | c4 c \fermata \bar "||"



% d2\segno \bar "||" \break



%a4^ \markup \box {\fontsize #2 {"2e Couplet"}} b2 cis4

% e2 \segno \bar "||"s s %\break
% \mark \markup {\musicglyph #"scripts.segno"} \bar "||"


% d2 %\break %s s %^\markup \bold \italic "[fin}"
             
}
       
