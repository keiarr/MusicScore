myRhythm = {
s4 | r8 c r4 c2 |
r8 c r4 c2 |r8 c r4 c2 |r8 c r4 c2 |
}
\score {
<<
\new ChordNames {
\set chordChanges = ##t
\harmonies
}
\new RhythmicStaff \with{
\remove "Time_signature_engraver" %1
\remove "Staff_symbol_engraver" %2
\override NoteHead.style = #'slash %3
\override Stem.length = #2.5 %4
fontSize = #-4 %5
\override VerticalAxisGroup.default-staff-staff
-spacing = %6
#'((basic-distance . 3.5)
(padding . -10))
}{
\myRhythm
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
