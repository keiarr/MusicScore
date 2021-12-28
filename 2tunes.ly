\version "2.22.1"
\language "english"
\header {
title = "Big Title"
composer = "Big Title"
}
\score {
\header { piece = "Tune 1" }
\relative c' { \clef treble c }
}
\markup \vspace #3
\markup {
...text of second memo...
}
\markup \vspace #2
\markup {
...text of third memo...
}
\markup \vspace #1
\score {
\header { piece = "Tune 2" }
\relative c' { \clef treble c }
}
