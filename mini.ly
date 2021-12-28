\version "2.22.1" % comment
\language "english"
\header {
title = "MiniScore"
composer = "Mini Score"
tagline = ##f
}
\relative c' {
\clef treble
\time 4/4
\key a \minor
\partial 4
c8 g' ~ | \bar "||"
g2. c,8 g' ~ | g2. a8 bf ~ |
bf2. \tuplet 3/2 { a16 bf a } g8 | \bar "|."
}
\layout{
indent = #0
ragged-right = ##f
\override Score.SystemStartBar.collapse-height = #1
}
