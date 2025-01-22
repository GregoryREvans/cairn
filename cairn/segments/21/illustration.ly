  %! abjad.LilyPondFile._get_format_pieces()
\version "2.25.16"
  %! abjad.LilyPondFile._get_format_pieces()
\language "english"
\include "abjad.ily"
\include "../../build/segment_stylesheet.ily"
  %! abjad.LilyPondFile._get_format_pieces()
\score
  %! abjad.LilyPondFile._get_format_pieces()
{
    <<

        \context Score = "Score"
        <<
      { \include "layout.ly" }
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 4=65
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 4/4
                s1 * 1
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #2 #0 #1 #"65"
                  }
                }

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 2]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 3]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                \time 7/4
                s1 * 7/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

            }

            \tag #'group1
            {

                \context StaffGroup = "Staff Group"
                <<

                    \tag #'voice1
                    {

                        \context VanishingStringStaff = "string staff"
                        {

                            \context Voice = "string voice"
                            {

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 1]
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "SCP" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "SCP" }
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 3]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 4]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 5]
                                r1

                            }

                        }

                    }

                    \tag #'voice2
                    {

                        \context VanishingBattutoStaff = "battuto staff"
                        {

                            \context Voice = "battuto voice"
                            {

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 1]
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "SCP" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "SCP" }
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 3]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 4]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 5]
                                r1

                            }

                        }

                    }

                    \tag #'voice3
                    {

                        \context VanishingBowStaff = "bow staff"
                        {

                            \context Voice = "bow voice"
                            {

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 1]
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "BCP" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "BCP" }
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 3]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 4]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 5]
                                r1

                            }

                        }

                    }

                    \tag #'voice4
                    {

                        \context VanishingChangeStaff = "left staff"
                        {

                            \context Voice = "left voice"
                            {

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 1]
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Mano Sinestra" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "man sin" }
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 3]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 4]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 5]
                                r1

                            }

                        }

                    }

                    \tag #'voice5
                    {

                        \context VanishingChangeStaff = "right staff"
                        {

                            \context Voice = "right voice"
                            {

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 1]
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Mano Destra" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "mn dst" }
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 3]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 4]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 5]
                                r1

                            }

                        }

                    }

                    \tag #'voice6
                    {

                        \context VanishingRhythmicStaff = "front staff"
                        {

                            \context Voice = "front voice"
                            {

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 1]
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Davanti" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "davanti" }
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 3]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 4]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 5]
                                r1

                            }

                        }

                    }

                    \tag #'group2
                    {

                        \context InterruptiveStaffGroup = "Interruptive Group"
                        <<

                            \tag #'voice7
                            {

                                \context VanishingStaff = "cello staff"
                                {

                                    \context Voice = "cello voice"
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 " " }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 " " }
                                        \clef "bass"
                                        b,1
                                        \f
                                        - \tweak staff-padding 3
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { \fraction 1 2 gridato } \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        c2.
                                        \stopTextSpanOne
                                        - \tweak staff-padding 3
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright "molto gridato" \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        cs2
                                        \stopTextSpanOne
                                        - \tweak staff-padding 3
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { flauntando } \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        d1..
                                        \stopTextSpanOne
                                        - \tweak staff-padding 3
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright { teso } \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 5]
                                        \afterGrace
                                        ef1
                                        \stopTextSpanOne
                                        - \tweak staff-padding 3
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright "molto gridato" \hspace #0.5 }
                                        \startTextSpanOne
                                        \glissando
                                        {

                                            \start-single-grace
                                            \once \override Accidental.transparent = ##t
                                            \once \override Beam.positions = #'(6 . 6)
                                            \once \override Beam.transparent = ##t
                                            \once \override Flag.transparent = ##t
                                            \once \override NoteHead.transparent = ##t
                                            \once \override Stem.stencil = ##f
                                            \tweak X-extent #'(0 . 0)
                                            e16
                                            [

                                            e!16
                                            \stopTextSpanOne
                                            ]
                                            \stop-single-grace

                                        }


                                    }

                                }

                            }

                            \tag #'voice8
                            {

                                \context VanishingStaff = "temporary staff"
                                {

                                    \context Voice = "temporary voice"
                                    {

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 1]
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 " " }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 " " }
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 2]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 3]
                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 4]
                                        r1..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 5]
                                        r1

                                    }

                                }

                            }

                        >>

                    }

                    \tag #'voice9
                    {

                        \context VanishingRhythmicStaff = "back staff"
                        {

                            \context Voice = "back voice"
                            {

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 1]
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Dietro" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "dietro" }
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 3]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 4]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 5]
                                r1

                            }

                        }

                    }

                    \tag #'voice10
                    {

                        \context VanishingChangeStaff = "change staff"
                        {

                            \context Voice = "change voice"
                            {

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 1]
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Archi" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "archi" }
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 3]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 4]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 5]
                                r1

                            }

                        }

                    }

                >>

            }

        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}