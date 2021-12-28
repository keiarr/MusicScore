\version "2.22.1"

\language "english"
melody = \relative c'
{
    \clef treble
    \key f \major
    \time 4/4
    \tempo 4 = 120
    \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)

    \partial 4 
    r8 r |
    \repeat volta 2 { 
        r1^\markup { \halign #1.5 \rounded-box \bold \huge A } |
        r1 | r1 | r1 | \break
    }
    \alternative {
        {
            r1 | r1 |
        }
        {
            r1 | r1 | \bar "||"
        }
    } \break

    r1^\markup { \halign #3.5 \rounded-box \bold \huge B 
        \musicglyph "scripts.segno"}
    % ^\markup { \halign #1.5 \musicglyph "scripts.segno" }
    r1 | r1 | r1 | \break
    
    r1^\markup { \halign #1.5 \rounded-box \bold \huge C } | r1 |
    r1^\markup { \raise #2.4 \halign #6.5 \fontsize #2 "to" \raise #3.8 
                 \fontsize #-3 \huge \musicglyph "scripts.coda" }
    r1 | r1 | r1_\markup { \bold "D.S. al Coda."} | \bar "||"   
}
coda = \relative c' {
    \key f \major
    r1^\markup { \halign #1.5 \raise #3.8 \huge \musicglyph "scripts.coda" }
    r1 | r1 | r1 | \bar "|."
}
codah = \chordmode {
    c1:m | 
}
harmonies = \chordmode {
    s4 | c1:m | 
}
myRhythm = {
    s4 | r8 c r4 c2 |
}
\paper {
    top-margin = 1.5\cm 
    left-margin = 2\cm
    right-margin = 2\cm
    % ragged-right = ##t
    page-count = #1
}
\header {
    title = \markup {\fontsize #3 "Leadsheet Sample"}
    composer = "Leadsheet Sample"
    tagline = ##f
}
\markup \vspace #1
\score {
    \transpose f c'
    % \transpose f bf
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \harmonies
        }        
        \new RhythmicStaff  \with{      
            \remove "Time_signature_engraver"
            \remove "Staff_symbol_engraver"
            \override NoteHead.style = #'slash
            \override Stem.length = #4.5
            fontSize = #-5
            \override VerticalAxisGroup.default-staff-staff-spacing =
                #'((basic-distance . 3.5)
                    (padding . -10))
        }{
            \myRhythm                
        }
        \new Staff \with {
            % instrumentName = #"Theme "
        } \melody
    >>
    \layout{ indent = #0 
        % \override Score.BarNumber.break-visibility = #all-invisible
        \override Score.Clef.break-visibility = #all-invisible
        \override Score.KeySignature.break-visibility = #all-invisible
        \override Score.SystemStartBar.collapse-height = #1
        
        \set Score.startRepeatType = "[|:"
        \set Score.endRepeatType = ":|]"
        \set Score.doubleRepeatType = ":|][|:"
    }
    % \midi { }
}
\markup \vspace #1.5
\score {
    \transpose f c'
    % \transpose f bf
    <<
        \new ChordNames {
            \set chordChanges = ##t
            \codah
        }
        \new Staff \with {
            % instrumentName = #"Theme "
        } \coda        
    >>
    \layout{ 
        indent = #0
        ragged-right = ##f
        \override Score.SystemStartBar.collapse-height = #1
    }
    % \midi { }
}
