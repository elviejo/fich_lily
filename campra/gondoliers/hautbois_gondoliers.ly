\version "2.17.7"

\context Voice = "Haute-contre"

\relative c'' {
\set Staff.instrumentName = \markup { \column { "Haute-Contre" } }
\set Staff.midiInstrument = "oboe"
\set Staff.shortInstrumentName =#"Hte.c."

   \time 3/4
   \clef alto %treble
                \key c \major
                
                \set Score.currentBarNumber = #102
                
                \partial 4
                
        c8 d |
        e4 c c | b8 a b c d4 | c d8 c b a | b4 b c8 d | e4 c c | b8 a b c d4
%108
c b8 a g f | e4 e c'8 d | e4 c d | e8 d e f e d | c4 c c | b b b | c b b
%115
c8 b c d c4 | c d d | d d c8 d | e4 c c | b8 a b c d4 | c d8 c b a
%121
b4 b c8 d | e4 c c | b8 a b c d4 | c b8 a g f | e4 e c' | g g g | a a c |
%128
bes4 c c | c c d | c d d | e8 d e f e4 | a, g4. g8 | g4 g c8 d | e4 c c |
%135
b8 a b c d4 | c d8 c b a | b 4 b c8 d | e4 c c | b8 a b c d4 | c b8 a g f | e4 e
       
}
