        \context Score = "Score"
        <<
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 4=78
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

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
                \time 7/4
                s1 * 7/4

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
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                \time 7/4
                s1 * 7/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 9]
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 11]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 12]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 2]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 3]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 5]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 6]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 7]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 9]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 10]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 11]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 12]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 2]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 3]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 5]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 6]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 7]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 9]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 10]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 11]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 12]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 2]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 3]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 5]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 6]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 7]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 9]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 10]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 11]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 12]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 2]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 3]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 5]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 6]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 7]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 9]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 10]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 11]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 12]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 2]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 3]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 5]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 6]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 7]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 9]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 10]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 11]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 12]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 2]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 3]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 5]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 6]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 7]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 9]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 10]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 11]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 12]
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
                                        \harmonicsOn
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 " " }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 " " }
                                        \clef "bass"
                                        <c af e' c''>4
                                        \p
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                        \mp
                                        ^ \markup \upright {ditta simile}
                                        \>
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        g'16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d8.
                                        \pp
                                        ]
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        g'4.
                                        \mf
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando
                                        \harmonicsOff

                                        \half-harmonic
                                        d8
                                        \p
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        d4
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        f8
                                        \mp
                                        ]
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        d2
                                        \pp
                                        \<
                                        ~

                                        d16
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'2
                                        \mf
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando
                                        \revert-noteheads

                                        \harmonicsOn
                                        d4
                                        \p
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        d16
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4.
                                        \mp
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4
                                        \pp
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                        \mf
                                        \>
                                        ~

                                        g'16
                                          %! abjad.glissando(7)
                                        \glissando
                                        \harmonicsOff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 5]
                                        \half-harmonic
                                        e'8.
                                        \p
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'4
                                        \mp
                                        \>
                                        ~

                                        g'16
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 6]
                                        g'16
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'4..
                                        \pp
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'8
                                        \mf
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        e'2
                                        \p
                                        \<
                                        ~

                                        e'16
                                          %! abjad.glissando(7)
                                        \glissando

                                        g'2
                                        \mp
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando
                                        \revert-noteheads

                                        \harmonicsOn
                                        d16
                                        \pp
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 7]
                                        d4
                                          %! abjad.glissando(7)
                                        \glissando

                                        f4.
                                        \mf
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        af4
                                        \p
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando
                                        \harmonicsOff

                                        \half-harmonic
                                        b8
                                        \mp
                                        \>
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 8]
                                        b8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        af8.
                                        \pp
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        b4.
                                        \mf
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 9]
                                        d'4..
                                        \p
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        b8
                                        \mp
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        af2
                                        \pp
                                        \<
                                        ~

                                        af16
                                          %! abjad.glissando(7)
                                        \glissando

                                        b4.
                                        \mf
                                        \>
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 10]
                                        b8
                                          %! abjad.glissando(7)
                                        \glissando

                                        af4
                                        \p
                                        \<
                                        ~

                                        af16
                                          %! abjad.glissando(7)
                                        \glissando

                                        b4
                                        \mp
                                        \>
                                        ~

                                        b16
                                        ~
                                        \revert-noteheads

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 11]
                                        \harmonicsOn
                                        b16
                                          %! abjad.glissando(7)
                                        \glissando

                                        d'4
                                        \pp
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'4
                                        \mf
                                        \>
                                        ~

                                        f'16
                                          %! abjad.glissando(7)
                                        \glissando

                                        c8.
                                        \p
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8.
                                        \mp
                                        \>
                                        ~
                                        \harmonicsOff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 12]
                                        \half-harmonic
                                        f'8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        c4..
                                        \pp
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        f'8
                                        \mf
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        c2
                                        \p
                                        \revert-noteheads

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
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 2]
                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 3]
                                        r1..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 4]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 5]
                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 6]
                                        r1..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 7]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 8]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 9]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 10]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 11]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 12]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 2]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 3]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 4]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 5]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 6]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 7]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 9]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 10]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 11]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 12]
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
                                \all-color-music #(x11-color "firebrick")
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Archi" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "archi" }
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'32
                                [
                                (

                                d'32

                                b32

                                g32
                                )

                                f'32
                                (

                                d'32
                                )

                                d'32
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'32
                                )
                                ]

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 4/3
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b32
                                    [
                                    (

                                    g32
                                    )

                                    g32
                                    (

                                    b32
                                    )

                                    d'32
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b32
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g16
                                )
                                [

                                g16
                                (

                                b16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                )
                                ]

                                \times 8/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 2]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    d'32
                                    [
                                    (

                                    b32

                                    g32
                                    )

                                    f'32
                                    (

                                    d'32

                                    b32

                                    g32
                                    )

                                    g32
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b32
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'32
                                [

                                f'32
                                )

                                b32
                                (

                                d'32
                                )

                                d'32
                                (

                                f'32
                                )

                                g32
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b32
                                )
                                ]

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 3]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    (

                                    d'16
                                    )

                                    f'16
                                    (

                                    d'16
                                    )

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    g16
                                    ]
                                    (

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                [

                                d'16
                                )

                                d'16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g32
                                    )
                                    [

                                    f'32
                                    (

                                    d'32

                                    b32

                                    g32
                                    )

                                    f'32
                                    (

                                    d'32

                                    b32

                                    g32
                                    )

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    g32
                                    ]
                                    (

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b32
                                [

                                d'32

                                f'32
                                )

                                b32
                                (

                                g32
                                )

                                b32
                                (

                                d'32
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b32
                                ]
                                (

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                )
                                [

                                d'16
                                (

                                b16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]
                                (

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g32
                                    )
                                    [

                                    b32
                                    (

                                    g32
                                    )

                                    g32
                                    (

                                    b32

                                    d'32

                                    f'32
                                    )

                                    b32
                                    (

                                    d'32

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    f'32
                                    )
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'32
                                [
                                (

                                d'32

                                b32

                                g32
                                )

                                g32
                                (

                                b32

                                d'32

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'32
                                )
                                ]

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 4]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                [
                                (

                                d'16
                                )

                                d'16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'16
                                )
                                ]

                                \times 8/9
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g32
                                    [
                                    (

                                    b32

                                    d'32

                                    f'32
                                    )

                                    g32
                                    (

                                    b32
                                    )

                                    b32
                                    (

                                    d'32

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    f'32
                                    )
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g32
                                [
                                (

                                b32

                                d'32
                                )

                                g32
                                (

                                b32

                                d'32
                                )

                                g32
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b32
                                ]

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 4/3
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    d'32
                                    )
                                    [

                                    g32
                                    (

                                    b32

                                    d'32
                                    )

                                    f'32
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'32
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 5]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                )
                                [

                                g16
                                (

                                b16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                )
                                ]

                                \times 8/9
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b32
                                    [
                                    (

                                    d'32

                                    f'32
                                    )

                                    g32
                                    (

                                    b32

                                    d'32
                                    )

                                    g32
                                    (

                                    b32

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'32
                                    )
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 6]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'32
                                [
                                (

                                d'32

                                b32

                                g32
                                )

                                g32
                                (

                                b32

                                d'32

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'32
                                )
                                ]

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    d'16
                                    [
                                    (

                                    f'16
                                    )

                                    g16
                                    (

                                    b16
                                    )

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b16
                                    ]
                                    (

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                )
                                [

                                d'16
                                (

                                f'16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                ]
                                (

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b32
                                    )
                                    [

                                    f'32
                                    (

                                    d'32

                                    b32
                                    )

                                    f'32
                                    (

                                    d'32

                                    b32
                                    )

                                    g32
                                    (

                                    b32

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'32
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'32
                                )
                                [

                                f'32
                                (

                                d'32

                                b32

                                g32
                                )

                                g32
                                (

                                b32

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'32
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'16
                                )
                                [

                                b16
                                (

                                g16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]
                                (

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    d'32
                                    )
                                    [

                                    b32
                                    (

                                    d'32
                                    )

                                    b32
                                    (

                                    d'32

                                    f'32
                                    )

                                    f'32
                                    (

                                    d'32

                                    b32
                                    )

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b32
                                    ]
                                    (

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 7]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'32
                                [

                                f'32
                                )

                                f'32
                                (

                                d'32

                                b32
                                )

                                g32
                                (

                                b32

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'32
                                )
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g16
                                [
                                (

                                b16

                                d'16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'16
                                )
                                ]

                                \times 8/9
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g32
                                    [
                                    (

                                    b32

                                    d'32

                                    f'32
                                    )

                                    f'32
                                    (

                                    d'32

                                    b32

                                    g32
                                    )

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b32
                                    ]
                                    (

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'32
                                )
                                [

                                b32
                                (

                                g32
                                )

                                b32
                                (

                                d'32
                                )

                                f'32
                                (

                                d'32
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b32
                                ]
                                (

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 4/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 8]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    d'32
                                    [

                                    f'32
                                    )

                                    b32
                                    (

                                    d'32

                                    f'32
                                    )

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    g32
                                    ]
                                    (

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                [

                                d'16
                                )

                                b16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                ]

                                \times 8/9
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    f'32
                                    )
                                    [

                                    b32
                                    (

                                    d'32

                                    f'32
                                    )

                                    b32
                                    (

                                    d'32

                                    f'32
                                    )

                                    f'32
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'32
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 9]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b32
                                [

                                g32
                                )

                                f'32
                                (

                                d'32
                                )

                                f'32
                                (

                                d'32
                                )

                                g32
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b32
                                )
                                ]

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g16
                                    [
                                    (

                                    b16

                                    d'16

                                    f'16
                                    )

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    f'16
                                    ]
                                    (

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                [

                                b16
                                )

                                f'16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                ]

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b32
                                    [

                                    g32
                                    )

                                    g32
                                    (

                                    b32

                                    d'32

                                    f'32
                                    )

                                    g32
                                    (

                                    b32

                                    d'32

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    f'32
                                    )
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'32
                                [
                                (

                                d'32

                                b32

                                g32
                                )

                                g32
                                (

                                b32
                                )

                                d'32
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'32
                                )
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                [
                                (

                                b16

                                g16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                ]
                                (

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 10]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b32
                                    [

                                    g32
                                    )

                                    b32
                                    (

                                    d'32

                                    f'32
                                    )

                                    d'32
                                    (

                                    b32

                                    g32
                                    )

                                    d'32
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b32
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g32
                                )
                                [

                                d'32
                                (

                                b32

                                g32
                                )

                                g32
                                (

                                b32

                                d'32

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'32
                                )
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'16
                                [
                                (

                                d'16

                                b16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                g16
                                )
                                ]

                                \times 8/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 11]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g32
                                    [
                                    (

                                    b32
                                    )

                                    b32
                                    (

                                    d'32
                                    )

                                    b32
                                    (

                                    d'32
                                    )

                                    b32
                                    (

                                    d'32
                                    )

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'32
                                    ]
                                    (

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b32
                                )
                                [

                                f'32
                                (

                                d'32

                                b32

                                g32
                                )

                                f'32
                                (

                                d'32

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b32
                                )
                                ]

                                \tweak text #tuplet-number::calc-fraction-text
                                \times 4/3
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g32
                                    [
                                    (

                                    b32

                                    d'32

                                    f'32
                                    )

                                    f'32
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'32
                                    )
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g16
                                [
                                (

                                b16

                                d'16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'16
                                )
                                ]

                                \times 8/9
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 12]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    f'32
                                    [
                                    (

                                    d'32

                                    b32

                                    g32
                                    )

                                    f'32
                                    (

                                    d'32
                                    )

                                    f'32
                                    (

                                    d'32

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b32
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g32
                                )
                                [

                                g32
                                (

                                b32

                                d'32

                                f'32
                                )

                                f'32
                                (

                                d'32

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b32
                                ]

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g16
                                    )
                                    [

                                    g16
                                    (

                                    b16

                                    d'16

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    f'16
                                    )
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                [
                                (

                                g16
                                )

                                b16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                )
                                ]

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b32
                                    [
                                    (

                                    d'32
                                    )

                                    b32
                                    (

                                    d'32

                                    f'32
                                    )

                                    g32
                                    (

                                    b32

                                    d'32
                                    )

                                    g32
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b32
                                    )
                                    ]

                                }

                            }

                        }

                    }

                >>

            }

        >>
