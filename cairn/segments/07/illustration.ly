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
                \tempo 4=97
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 4/4
                s1 * 1
                \tweak padding 3
                - \boxed-markup "rall. a 78" 1

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
                                \bar "||"

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
                                \bar "||"

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
                                \bar "||"

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
                                \bar "||"

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
                                \bar "||"

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
                                \bar "||"

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

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 1]
                                            \all-color-music #(universal-color "bluegreen")
                                              %! applying staff names and clefs
                                            \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 " " }
                                              %! applying staff names and clefs
                                            \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 " " }
                                            \clef "bass"
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            bf,16
                                            :32
                                            - \accent
                                            \ff
                                            [
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak bound-details.right.padding 1.25
                                            - \tweak staff-padding 6
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \upright {XP} \hspace #0.5 }
                                            \startTextSpan
                                            - \tweak bound-details.right.padding 1.25
                                            - \tweak staff-padding 8
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \diamond-notehead-markup \hspace #0.5 }
                                            \startTextSpanOne
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>

                                            \tweak Accidental.stencil ##f
                                            \tweak X-extent #'(0 . 0)
                                            \tweak transparent ##t
                                            a,8
                                            :32
                                            - \accent
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando

                                            \tweak Accidental.stencil ##f
                                            \tweak X-extent #'(0 . 0)
                                            \tweak transparent ##t
                                            c'16
                                            :32
                                            - \accent
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando

                                            \revert VanishingStaff.Stem.stemlet-length
                                            \tweak Accidental.stencil ##f
                                            \tweak X-extent #'(0 . 0)
                                            \tweak transparent ##t
                                            cs''16
                                            :32
                                            - \accent
                                            \mp
                                            ]
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            \<

                                        }

                                        \times 2/3
                                        {

                                            \tweak Accidental.stencil ##f
                                            \tweak X-extent #'(0 . 0)
                                            \tweak transparent ##t
                                            c'8
                                            :32
                                            - \accent
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando

                                            a,4
                                            :32
                                            - \accent
                                            \f
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando

                                        }

                                        r4

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            fs,16
                                            :32
                                            - \accent
                                            \ff
                                            [
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>

                                            \tweak Accidental.stencil ##f
                                            \tweak X-extent #'(0 . 0)
                                            \tweak transparent ##t
                                            a,8
                                            :32
                                            - \accent
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando

                                            \tweak Accidental.stencil ##f
                                            \tweak X-extent #'(0 . 0)
                                            \tweak transparent ##t
                                            c'8
                                            :32
                                            - \accent
                                            \mp
                                              %! abjad.glissando(7)
                                            - \abjad-zero-padding-glissando
                                              %! abjad.glissando(7)
                                            \glissando
                                            \<

                                            \revert VanishingStaff.Stem.stemlet-length
                                            a,16
                                            :32
                                            - \accent
                                            \f
                                            ]
                                            \bar "||"

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
                                        \bar "||"

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
                                \bar "||"

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
                                \bar "||"

                            }

                        }

                    }

                >>

            }

        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}