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
                \time 5/4
                s1 * 5/4
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
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 3]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

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
                                \override Staff.Dots.transparent = ##t
                                \override Staff.StaffSymbol.transparent = ##t
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "SCP" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "SCP" }
                                \startStaff
                                \stopStaff
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 2]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 3]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 5]
                                r2.

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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 2]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 3]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 5]
                                r2.

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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 2]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 3]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 5]
                                r2.

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
                                \override Staff.Dots.transparent = ##t
                                \override Staff.Rest.transparent = ##t
                                \override Staff.StaffSymbol.transparent = ##t
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Mano Sinestra" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "man sin" }
                                \startStaff
                                \stopStaff
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 2]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 3]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 5]
                                r2.

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
                                \override Staff.Dots.transparent = ##t
                                \override Staff.Rest.transparent = ##t
                                \override Staff.StaffSymbol.transparent = ##t
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Mano Destra" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "mn dst" }
                                \startStaff
                                \stopStaff
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 2]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 3]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 5]
                                r2.

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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 2]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 3]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 5]
                                r2.

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
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <bf,! bf,!>8.
                                        \ff
                                        [
                                        - \tweak staff-padding 6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { \fraction 1 2 P } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak stencil #constante-hairpin
                                        \<

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <a,! bf,!>16
                                        ]
                                        ~

                                        \times 8/9
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <a, bf,>16.
                                            [

                                            <bf,! bf,!>32

                                            <a,! bf,!>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <bf,! bf,!>8
                                            ]

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <btqf,! bf,!>32
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <a,! bf,!>8..
                                        ]

                                        \times 4/5
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <bf,! bf,!>32
                                            [

                                            <bf,! bqf,!>32

                                            <bf,! bf,!>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <a,! bf,!>8..
                                            ]
                                            ~

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <a, bf,>32
                                        [

                                        <bf,! bf,!>8.

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <a,! bf,!>32
                                        \stopTextSpanOne
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 4 1 0)
                                              (1 0 1.5 -4 2 0)
                                              (2 0 2.5 5 3 0)
                                              (3 0 3.5 -5 4 0)
                                              (4 0 4.5 5 5 0)
                                              (5 0 5.5 -5 6 0)
                                              (6 0 6.5 4 7 0)
                                              (7 0 7.5 -4 8 0)
                                              (8 0 8.5 5 9 0)
                                              (9 0 9.5 -5 10 0)
                                              (10 0 10.5 6 11 0)
                                              (11 0 11.5 -6 12 0)
                                              (12 0 12.5 2 13 0)
                                              (13 0 13.5 -2 14 0)
                                              (14 0 14.5 1 15 0)
                                              (15 0 15.5 -1 16 0)
                                              (16 0 16.5 1 17 0)
                                              (17 0 17.5 -1 18 0)
                                              (18 0 18.5 1 19 0)
                                              (19 0 19.5 -1 20 0)
                                              (20 0 20.5 1 21 0)
                                              (21 0 21.5 -1 22 0)
                                              (22 0 22.5 1 23 0)
                                              (23 0 23.5 -1 24 0)
                                              (24 0 24.5 1 25 0)
                                              (25 0 25.5 -1 26 0)
                                              (26 0 26.5 1 27 0)
                                              (27 0 27.5 -1 28 0)
                                              (28 0 28.5 1 29 0)
                                              (29 0 29.5 -1 30 0)
                                              (30 0 30.5 1 31 0)
                                              (31 0 31.5 -1 32 0)
                                              (32 0 32.5 1 33 0)
                                              (33 0 33.5 -1 34 0)
                                              (34 0 34.5 1 35 0)
                                              (35 0 35.5 -1 36 0)
                                              (36 0 36.5 1 37 0)
                                              (37 0 37.5 -1 38 0)
                                              (38 0 38.5 1 39 0)
                                              (39 0 39.5 -1 40 0)
                                              (40 0 40.5 1 41 0)
                                              (41 0 41.5 -1 42 0)
                                              (42 0 42.5 1 43 0)
                                              (43 0 43.5 -1 44 0)
                                         )
                                         #2.5
                                        \half-harmonic
                                        a2.
                                        - \accent
                                        \!
                                        \ff
                                        \>
                                        \glissando

                                        \fancy-gliss
                                           #'(
                                              (0 0 0.5 1 1 0)
                                              (1 0 1.5 -1 2 0)
                                              (2 0 2.5 1 3 0)
                                              (3 0 3.5 -1 4 0)
                                              (4 0 4.5 1 5 0)
                                              (5 0 5.5 -1 6 0)
                                              (6 0 6.5 1 7 0)
                                              (7 0 7.5 -1 8 0)
                                              (8 0 8.5 1 9 0)
                                              (9 0 9.5 -1 10 0)
                                              (10 0 10.5 1 11 0)
                                              (11 0 11.5 -1 12 0)
                                              (12 0 12.5 1 13 0)
                                              (13 0 13.5 -1 14 0)
                                              (14 0 14.5 1 15 0)
                                              (15 0 15.5 -1 16 0)
                                              (16 0 16.5 1 17 0)
                                              (17 0 17.5 -1 18 0)
                                              (18 0 18.5 1 19 0)
                                              (19 0 19.5 -1 20 0)
                                              (20 0 20.5 1 21 0)
                                              (21 0 21.5 -1 22 0)
                                              (22 0 22.5 1 23 0)
                                              (23 0 23.5 -1 24 0)
                                              (24 0 24.5 1 25 0)
                                              (25 0 25.5 -1 26 0)
                                              (26 0 26.5 1 27 0)
                                              (27 0 27.5 -1 28 0)
                                              (28 0 28.5 1 29 0)
                                              (29 0 29.5 -1 30 0)
                                              (30 0 30.5 1 31 0)
                                              (31 0 31.5 -1 32 0)
                                              (32 0 32.5 1 33 0)
                                              (33 0 33.5 -1 34 0)
                                              (34 0 34.5 1 35 0)
                                              (35 0 35.5 -1 36 0)
                                              (36 0 36.5 1 37 0)
                                              (37 0 37.5 -1 38 0)
                                              (38 0 38.5 1 39 0)
                                              (39 0 39.5 -1 40 0)
                                              (40 0 40.5 1 41 0)
                                              (41 0 41.5 -1 42 0)
                                              (42 0 42.5 3 43 0)
                                              (43 0 43.5 -3 44 0)
                                              (44 0 44.5 4 45 0)
                                              (45 0 45.5 -4 46 0)
                                              (46 0 46.5 5 47 0)
                                              (47 0 47.5 -5 48 0)
                                              (48 0 48.5 6 49 0)
                                              (49 0 49.5 -6 50 0)
                                              (50 0 50.5 5 51 0)
                                              (51 0 51.5 -5 52 0)
                                              (52 0 52.5 6 53 0)
                                              (53 0 53.5 -6 54 0)
                                              (54 0 54.5 6 55 0)
                                              (55 0 55.5 -6 56 0)
                                              (56 0 56.5 5 57 0)
                                              (57 0 57.5 -5 58 0)
                                              (58 0 58.5 4 59 0)
                                              (59 0 59.5 -4 60 0)
                                              (60 0 60.5 5 61 0)
                                              (61 0 61.5 -5 62 0)
                                         )
                                         #2.5
                                        a2
                                        \mp
                                        \<
                                        \glissando

                                        \afterGrace
                                        a4
                                        \ff
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        \glissando
                                        {

                                            \highest
                                            \tweak Stem.direction #down
                                            c'16
                                            \fff
                                            \revert-noteheads

                                        }


                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        b,8.
                                        - \accent
                                        \f
                                        [
                                        - \tweak staff-padding 3
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright "non gridato" \hspace #0.5 }
                                        \startTextSpan

                                        \revert VanishingStaff.Stem.stemlet-length
                                        r16
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        b,8.
                                        - \accent
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        r16
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        b,8.
                                        - \accent
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        r16
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        bqs,8.
                                        - \accent
                                        \stopTextSpan
                                        [
                                        - \tweak staff-padding 3
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright {\fraction 1 2 gridato} \hspace #0.5 }
                                        \startTextSpan

                                        \revert VanishingStaff.Stem.stemlet-length
                                        c16
                                        - \accent
                                        ]
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        c16
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b,8.
                                        - \accent
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b,8.
                                        - \accent
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b,8.
                                        - \accent
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 5]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        r16
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b,8.
                                        - \accent
                                        \stopTextSpan
                                        ]
                                        - \tweak staff-padding 3
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright "molto gridato" \hspace #0.5 }
                                        \startTextSpan

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        bqs,8
                                        - \accent
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        c8
                                        - \accent
                                        ]
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        c16
                                        [

                                        r16

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b,8
                                        - \accent
                                        \stopTextSpan
                                        ]

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

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 2]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 3]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 4]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 5]
                                        r2.

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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 2]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 3]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 5]
                                r2.

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
                                \override Staff.Dots.transparent = ##t
                                \override Staff.Rest.transparent = ##t
                                \override Staff.StaffSymbol.transparent = ##t
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Archi" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "archi" }
                                \startStaff
                                \stopStaff
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 2]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 3]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 5]
                                r2.

                            }

                        }

                    }

                >>

            }

        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}