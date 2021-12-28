\version "2.22.1"
\language "english"
booktitle = "Tune title"
melody = \relative c' { \key c \major c }
\bookpart {
\header {
title = \booktitle
subtitle = "concert pitch"
}
\score {\melody}
}
\bookpart {
\header {
title = \booktitle
subtitle = "Trombone"
}
\score { \transpose c d
\melody
}
}
図
