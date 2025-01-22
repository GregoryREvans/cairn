        \context Score = "Score"
        <<
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 4=117
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #2 #0 #1 #"117"
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
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 3]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 4]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 5]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 6]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 7]
                                r1

                                r4

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 3]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 4]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 5]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 6]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 7]
                                r1

                                r4

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 3]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 4]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 5]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 6]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 7]
                                r1

                                r4

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 3]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 4]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 5]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 6]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 7]
                                r1

                                r4

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 3]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 4]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 5]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 6]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 7]
                                r1

                                r4

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 3]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 4]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 5]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 6]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 7]
                                r1

                                r4

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
                                        ef,1.
                                        :32
                                        \p
                                        - \tweak staff-padding 4
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright T \hspace #0.5 }
                                        \startTextSpanOne
                                        \<
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        e,8
                                        :32
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        eqf,8
                                        :32
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        f,8
                                        :32
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        eqs,8
                                        :32
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        e,8
                                        :32
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        eqs,8
                                        :32
                                        \mf
                                        \stopTextSpanOne
                                        ]
                                        - \tweak staff-padding 4
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright N \hspace #0.5 }
                                        \startTextSpanOne
                                        \>
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        f,1
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        fs,8
                                        :32
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        af,8
                                        :32
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        gqf,8
                                        :32
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        fs,8
                                        :32
                                        \stopTextSpanOne
                                        ]
                                        - \tweak staff-padding 4
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright {\fraction 1 2 T} \hspace #0.5 }
                                        \startTextSpanOne
                                        \glissando

                                        fqs,8
                                        \p
                                        \<
                                        \glissando

                                        af,4
                                        \stopTextSpanOne
                                        - \tweak staff-padding 4
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright {\fraction 1 2 P} \hspace #0.5 }
                                        \startTextSpanOne
                                        \glissando

                                        gqs,8
                                        :32
                                        \glissando

                                        gqf,4
                                        :32

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 5]
                                        g,2.
                                        :32
                                        \stopTextSpanOne
                                        - \tweak staff-padding 4
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright P \hspace #0.5 }
                                        \startTextSpanOne
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 6]
                                        ef,1
                                        :32
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 7]
                                        ef,2
                                        :32
                                        \stopTextSpanOne
                                        - \tweak staff-padding 4
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright XP \hspace #0.5 }
                                        \startTextSpanOne
                                        \glissando

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        e,8
                                        :32
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        eqf,8
                                        :32
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        f,8
                                        :32
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        eqs,8
                                        :32
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        e,8
                                        :32
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        eqs,8
                                        :32
                                        \f
                                        \stopTextSpanOne
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
                                        \clef "bass"
                                        g,1.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 2]
                                        g,2.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 3]
                                        g,1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 4]
                                        r1

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 5]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 6]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 7]
                                        r1

                                        r4

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 3]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 4]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 5]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 6]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 7]
                                r1

                                r4

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
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 2]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 3]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 4]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 5]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 6]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 7]
                                r1

                                r4

                            }

                        }

                    }

                >>

            }

        >>
