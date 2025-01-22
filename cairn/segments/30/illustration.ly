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
                \tempo 4=78
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 9/8
                s1 * 9/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 2]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

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
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                \time 7/8
                s1 * 7/8

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 2]
                                r2

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 7]
                                r2..

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
                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                c32
                                \sfp
                                ^ \markup IV
                                ^ \markup {quasi gettato}
                                [
                                \<

                                e32
                                ^ \markup III

                                g32
                                ^ \markup II

                                b32
                                ^ \markup I

                                c'32
                                ^ \markup II

                                a32
                                ^ \markup III

                                f32
                                ^ \markup IV

                                d32
                                ^ \markup (simile)

                                d32

                                f32

                                a32

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                c'32
                                ]

                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                d'32
                                [

                                b32

                                g32

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                e32
                                ]

                                \times 8/9
                                {

                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    f32
                                    [

                                    a32

                                    c'32

                                    e'32

                                    f'32

                                    d'32

                                    b32

                                    g32

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    a32
                                    ]

                                }

                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                c'32
                                [

                                e'32

                                g'32

                                a'32

                                f'32

                                d'32

                                b32

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                c32
                                ]

                                \times 2/3
                                {

                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    e32
                                    [

                                    g32

                                    b32

                                    c'32

                                    a32

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    f32
                                    ]

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [battuto voice measure 2]
                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    d32
                                    [

                                    d32

                                    f32

                                    a32

                                    c'32

                                    d'32

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    b32
                                    ]

                                }

                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                g32
                                [

                                e32

                                f32

                                a32

                                c'32

                                e'32

                                f'32

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                d'32
                                ]

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 3]
                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                b32
                                [

                                g32

                                a32

                                c'32

                                e'32

                                g'32

                                a'32

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                f'32
                                ]

                                \times 8/9
                                {

                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    d'32
                                    [

                                    b32

                                    c32

                                    e32

                                    g32

                                    b32

                                    c'32

                                    a32

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    f32
                                    ]

                                }

                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                d32
                                [

                                d32

                                f32

                                a32

                                c'32

                                d'32

                                b32

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                g32
                                ]

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [battuto voice measure 4]
                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    e32
                                    [

                                    f32

                                    a32

                                    c'32

                                    e'32

                                    f'32

                                    d'32

                                    b32

                                    g32

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    a32
                                    ]

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {

                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    c'32
                                    [

                                    e'32

                                    g'32

                                    a'32

                                    f'32

                                    d'32

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    b32
                                    ]

                                }

                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                c32
                                [

                                e32

                                g32

                                b32

                                c'32

                                a32

                                f32

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                d32
                                ]

                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                d32
                                [

                                f32

                                a32

                                c'32

                                d'32

                                b32

                                g32

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                e32
                                ]

                                \times 8/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [battuto voice measure 5]
                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    f32
                                    [

                                    a32

                                    c'32

                                    e'32

                                    f'32

                                    d'32

                                    b32

                                    g32

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    a32
                                    ]

                                }

                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                c'32
                                [

                                e'32

                                g'32

                                a'32

                                f'32

                                d'32

                                b32

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                c32
                                ]

                                \times 4/5
                                {

                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    e32
                                    [

                                    g32

                                    b32

                                    c'32

                                    a32

                                    f32

                                    d32

                                    d32

                                    f32

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    a32
                                    ]

                                }

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 8/7
                                {

                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    c'32
                                    [

                                    d'32

                                    b32

                                    g32

                                    e32

                                    f32

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    a32
                                    ]

                                }

                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                c'32
                                [

                                e'32

                                f'32

                                d'32

                                b32

                                g32

                                a32

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                c'32
                                ]

                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                e'32
                                [

                                g'32

                                a'32

                                f'32

                                d'32

                                b32

                                c32

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                e32
                                \ff
                                ]

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [battuto voice measure 6]
                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    d16
                                    \mp
                                    ^ \markup IV
                                    ^ \markup mechanico
                                    [
                                    \<

                                    d16

                                    d16

                                    d16

                                    d16

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    d16
                                    ]

                                }

                                \times 4/5
                                {

                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    d16
                                    [

                                    d16

                                    d16

                                    d16

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    d16
                                    ]

                                }

                                \times 4/5
                                {

                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    d16
                                    [

                                    d16

                                    d16

                                    d16

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    d16
                                    ]

                                }

                                \times 4/5
                                {

                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    d16
                                    [

                                    d16

                                    d16

                                    d16

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    d16
                                    ]

                                }

                                \times 4/5
                                {

                                    \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                    d16
                                    [

                                    d16

                                    d16

                                    d16

                                    \revert VanishingBattutoStaff.Stem.stemlet-length
                                    d16
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 7]
                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                d16
                                [

                                d16

                                d16

                                d16

                                d16

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                d16
                                ]

                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                d16
                                [

                                d16

                                d16

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                d16
                                ]

                                \override VanishingBattutoStaff.Stem.stemlet-length = 0.75
                                d16
                                [

                                d16

                                d16

                                \revert VanishingBattutoStaff.Stem.stemlet-length
                                d16
                                \ff
                                ]

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 2]
                                r2

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 7]
                                r2..

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 2]
                                r2

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 7]
                                r2..

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 2]
                                r2

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 7]
                                r2..

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 2]
                                r2

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 7]
                                r2..

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
                                        <fqs, cqs gqs dqs'>1
                                        \tweak bound-details.right.padding #3
                                        \tweak staff-padding #5.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \evans-damp-markup \hspace #0.5 }
                                        \startTextSpan
                                        ~

                                        <fqs, cqs gqs dqs'>8
                                        ^ \markup {(dita simile)}
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        gqs2
                                        \glissando
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        af2.
                                        \glissando
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        fs1
                                        \glissando
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 5]
                                        b1.
                                        \glissando
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 6]
                                        d'1
                                        \glissando
                                        ~

                                        d'4
                                        \glissando
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 7]
                                        bf2..
                                        \stopTextSpan
                                        \glissando

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

                                        r8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 2]
                                        r2

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
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 6]
                                        r1

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 7]
                                        r2..

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 2]
                                r2

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 7]
                                r2..

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 2]
                                r2

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 7]
                                r2..

                            }

                        }

                    }

                >>

            }

        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}