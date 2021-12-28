\markup \vspace #1
melody = \relative c' {
\clef treble \time 4/4 \key f \major
\partial 4
c8 g' ~ | \bar "||"
g2. c,8 g' ~ | g2. a8 bf ~ |
bf2. \tuplet 3/2 { a16 bf a } g8 |
bf2. \tuplet 3/2 { a16 bf a } g8 |
}
harmonies = \chordmode {
s4 | c2:m c:m/bf | a:m7.5- d:7 | g:m g:m/f |
e:m7.5- a:7 |
}
\score {
<<
\new ChordNames {
\set chordChanges = ##t
\harmonies
}
\new Staff \melody
>>
\layout{
indent = #0
ragged-right = ##f
\override Score.SystemStartBar.collapse-height = #1
}
\midi { }
}
図
