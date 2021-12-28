\version "2.22.1"
\language "english"
main = \relative c'
{
\clef treble
\key f \major
\time 4/4
\tempo 4 = 120
g'2^\markup { \halign #1.5 \rounded-box \bold \huge A
}
f8 ef d c | d e d e d2 | c4 a bf c | d2 r2 | \break
g2^\markup { \halign #3.5 \rounded-box \bold \huge B
\musicglyph "scripts.segno"}
f8 ef d c | d e d e d2 | c4 a bf c | d2 r2 | \break
g2 f8 ef d c | d e d e d2^\markup { \raise #1.4
\halign #-3.5 \fontsize #2 "to" \raise #2.8
\fontsize #-3 \huge \musicglyph "scripts.
coda" } |
c4 a bf c | d2 r2_\markup { \bold "D.S. al Coda."} |
\bar "|." \break
}
coda = \relative c' {
\key f \major
d2.^\markup { \halign #1.5 \raise #3.8 \huge
\musicglyph "scripts.coda" }
a'8 g ~ | g2. \tuplet 3/2 { f16 g f } e8 |
f1 | r1 | \bar "|."
}
\layout{
indent = #0
ragged-right = ##f
\override Score.SystemStartBar.collapse-height = #1
}
\header {
title = "MiniScore"
composer = "Mini Score"
tagline = ##f
}
\markup \vspace #2
\new Staff \main
\markup \vspace #1.5
\new Staff \coda
