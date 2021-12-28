\version "2.22.1"

\language "english"
melodyRight = \relative c'
{
    \clef treble
    \key f \major
    \time 4/4
    \tempo 4 = 120

    c1

}
melodyLeft = \relative c,
{
    \clef bass
    \key f \major
    \time 4/4

    c1

}
harmonies = \chordmode {
    c1:m | 
}

\paper {
    top-margin = 1.5\cm 
    left-margin = 2\cm
    right-margin = 2\cm
    % ragged-right = ##t
    page-count = #1
}
\header {
    title = \markup {\fontsize #3 "Piano Score Sample"}
    composer = "Piano Score"
    tagline = ##f
}
\markup \vspace #1 

\transpose f bf
\new PianoStaff <<

    \new Staff = "up" {
        <>
        \melodyRight
    }
    \new Staff = "down" {
        \clef bass
        \melodyLeft
    }
>>
% \midi { }
