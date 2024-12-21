        \context Score = "Score"
        <<
            \context TimeSignatureContext = "Global Context"
            {

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 1]
                \tempo 4=65
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2
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
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                \time 9/8
                s1 * 9/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                \time 7/8
                s1 * 7/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                \time 7/8
                s1 * 7/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 9]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                \time 9/8
                s1 * 9/8

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
                                r2

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 5]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 7]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 8]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 9]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 10]
                                r1

                                r8
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
                                r2

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 5]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 7]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 8]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 9]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 10]
                                r1

                                r8
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
                                r2

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 5]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 7]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 8]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 9]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 10]
                                r1

                                r8
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
                                \override Staff.Dots.transparent = ##t
                                \override Staff.Rest.transparent = ##t
                                \override Staff.StaffSymbol.transparent = ##t
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Mano Sinestra" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "man sin" }
                                \startStaff
                                \stopStaff
                                r2

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 5]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 7]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 8]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 9]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 10]
                                r1

                                r8
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
                                \override Staff.Dots.transparent = ##t
                                \override Staff.Rest.transparent = ##t
                                \override Staff.StaffSymbol.transparent = ##t
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Mano Destra" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "mn dst" }
                                \startStaff
                                \stopStaff
                                r2

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 5]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 7]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 8]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 9]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 10]
                                r1

                                r8
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
                                r2

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 5]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 7]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 8]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 9]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 10]
                                r1

                                r8
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 1]
                                        \harmonicsOn
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 " " }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 " " }
                                        \clef "bass"
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        eqf16
                                        - \accent
                                        \f
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<

                                        d,16
                                        - \accent

                                        f16
                                        - \accent

                                        \revert VanishingStaff.Stem.stemlet-length
                                        eqf,16
                                        - \accent
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        aqs,16
                                        - \accent
                                        [

                                        b,16
                                        - \accent
                                        \harmonicsOff

                                        \revert VanishingStaff.Stem.stemlet-length
                                          %! SPANNER_START
                                          %! baca._do_spanner_indicator_command(1)
                                          %! baca.trill_spanner()
                                        \pitchedTrill
                                        gqf8
                                        \ff
                                        ]
                                        \>
                                        ~
                                          %! SPANNER_START
                                          %! baca._do_spanner_indicator_command(1)
                                          %! baca.trill_spanner()
                                        - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                          %! SPANNER_START
                                          %! baca._do_spanner_indicator_command(1)
                                          %! baca.trill_spanner()
                                        \startTrillSpan cqf'

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        gqf2
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        gqf8
                                          %! SPANNER_STOP
                                          %! baca._do_spanner_indicator_command(2)
                                          %! baca.trill_spanner()
                                        \stopTrillSpan
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            gqf
                                            \tweak NoteHead.style #'harmonic
                                            d'
                                        >8
                                        \mp
                                        ]
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            gqf
                                            \tweak NoteHead.style #'harmonic
                                            d'
                                        >8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            af
                                            \tweak NoteHead.style #'harmonic
                                            eqf'
                                        >8
                                        :32
                                        - \accent
                                        \ff
                                        ]
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            af
                                            \tweak NoteHead.style #'harmonic
                                            eqf'
                                        >16
                                        :32
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            aqs,
                                            \tweak NoteHead.style #'harmonic
                                            f
                                        >8.
                                        \mp
                                        ]
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            aqs,
                                            \tweak NoteHead.style #'harmonic
                                            f
                                        >16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            cqs
                                            \tweak NoteHead.style #'harmonic
                                            af
                                        >8.
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            d,
                                            \tweak NoteHead.style #'harmonic
                                            aqs,
                                        >8
                                        :32
                                        - \accent
                                        \ff
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            gqf,
                                            \tweak NoteHead.style #'harmonic
                                            d
                                        >8
                                        \mp
                                        ]
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            gqf,
                                            \tweak NoteHead.style #'harmonic
                                            d
                                        >8
                                        [
                                        ~

                                        <
                                            gqf,
                                            \tweak NoteHead.style #'harmonic
                                            d
                                        >16
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            eqf
                                            \tweak NoteHead.style #'harmonic
                                            b
                                        >16
                                        :32
                                        - \accent
                                        \ff
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        ~

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            eqf
                                            \tweak NoteHead.style #'harmonic
                                            b
                                        >8
                                        :32
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            d
                                            \tweak NoteHead.style #'harmonic
                                            aqs
                                        >4
                                        \mp
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            aqs
                                            \tweak NoteHead.style #'harmonic
                                            f'
                                        >8
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            f
                                            \tweak NoteHead.style #'harmonic
                                            cqs'
                                        >4.
                                        :32
                                        - \accent
                                        \ff
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 5]
                                        <
                                            f
                                            \tweak NoteHead.style #'harmonic
                                            cqs'
                                        >4.
                                        :32
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            d
                                            \tweak NoteHead.style #'harmonic
                                            aqs
                                        >4
                                        \mp
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            eqf
                                            \tweak NoteHead.style #'harmonic
                                            b
                                        >8
                                        :32
                                        - \accent
                                        \ff
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        ~

                                        <
                                            eqf
                                            \tweak NoteHead.style #'harmonic
                                            b
                                        >16
                                        :32
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            b,
                                            \tweak NoteHead.style #'harmonic
                                            gqf
                                        >16
                                        \mp
                                        ]
                                        - \tweak circled-tip ##t
                                        \>
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 6]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            b,
                                            \tweak NoteHead.style #'harmonic
                                            gqf
                                        >8.
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            aqs,
                                            \tweak NoteHead.style #'harmonic
                                            f
                                        >16
                                        ]
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            aqs,
                                            \tweak NoteHead.style #'harmonic
                                            f
                                        >8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            f,
                                            \tweak NoteHead.style #'harmonic
                                            cqs
                                        >8
                                        :32
                                        ]
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak staff-padding 7
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright "non gridato" \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak staff-padding 9
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright N \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            af,
                                            \tweak NoteHead.style #'harmonic
                                            eqf
                                        >4
                                        :32
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            af,
                                            \tweak NoteHead.style #'harmonic
                                            eqf
                                        >16
                                        :32
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            aqs,
                                            \tweak NoteHead.style #'harmonic
                                            f
                                        >8.
                                        :32
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            b,
                                            \tweak NoteHead.style #'harmonic
                                            gqf
                                        >4
                                        :32
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            cqs
                                            \tweak NoteHead.style #'harmonic
                                            af
                                        >8
                                        :32
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            af
                                            \tweak NoteHead.style #'harmonic
                                            eqf'
                                        >8
                                        :32
                                        \stopTextSpanOne
                                        ]
                                        - \tweak staff-padding 9
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright P \hspace #0.5 }
                                        \startTextSpanOne
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 7]
                                        <
                                            af
                                            \tweak NoteHead.style #'harmonic
                                            eqf'
                                        >2
                                        :32
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            af
                                            \tweak NoteHead.style #'harmonic
                                            eqf'
                                        >8
                                        :32
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            eqf'
                                            \tweak NoteHead.style #'harmonic
                                            b'
                                        >8
                                        :32
                                        \stopTextSpanOne
                                        ]
                                        - \tweak bound-details.right.padding 1.25
                                        - \tweak staff-padding 9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright T \hspace #0.5 }
                                        \startTextSpanOne
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            eqf'
                                            \tweak NoteHead.style #'harmonic
                                            b'
                                        >8
                                        :32
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            d'
                                            \tweak NoteHead.style #'harmonic
                                            aqs'
                                        >8
                                        :32
                                        \stopTextSpanOne
                                        ]
                                        - \tweak bound-details.right.padding 1.25
                                        - \tweak staff-padding 9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright spz. \hspace #0.5 }
                                        \startTextSpanOne
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            d'
                                            \tweak NoteHead.style #'harmonic
                                            aqs'
                                        >16
                                        :32
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            f'
                                            \tweak NoteHead.style #'harmonic
                                            cqs''
                                        >8.
                                        :32
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 8]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            f'
                                            \tweak NoteHead.style #'harmonic
                                            cqs''
                                        >16
                                        :32
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            eqf
                                            \tweak NoteHead.style #'harmonic
                                            b
                                        >16
                                        :32
                                        ~

                                        <
                                            eqf
                                            \tweak NoteHead.style #'harmonic
                                            b
                                        >8
                                        :32
                                        \stopTextSpanOne
                                        - \tweak staff-padding 9
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright T \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            cqs'
                                            \tweak NoteHead.style #'harmonic
                                            af'
                                        >8
                                        :32
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            aqs,
                                            \tweak NoteHead.style #'harmonic
                                            f
                                        >4
                                        :32
                                        \stopTextSpan
                                        - \tweak staff-padding 7
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright "molto gridato" \hspace #0.5 }
                                        \startTextSpan
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            aqs,
                                            \tweak NoteHead.style #'harmonic
                                            f
                                        >16
                                        :32
                                        \stopTextSpanOne
                                        [
                                        - \tweak bound-details.right.padding 1.25
                                        - \tweak staff-padding 9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright P \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            gqf
                                            \tweak NoteHead.style #'harmonic
                                            d'
                                        >16
                                        :32
                                        ~

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            gqf
                                            \tweak NoteHead.style #'harmonic
                                            d'
                                        >8
                                        :32
                                        \stopTextSpanOne
                                        ]
                                        - \tweak bound-details.right.padding 1.25
                                        - \tweak staff-padding 9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright spz. \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 9]
                                        <
                                            af,
                                            \tweak NoteHead.style #'harmonic
                                            eqf
                                        >4
                                        :32
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            f
                                            \tweak NoteHead.style #'harmonic
                                            cqs'
                                        >8
                                        :32
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            b,
                                            \tweak NoteHead.style #'harmonic
                                            gqf
                                        >8
                                        :32
                                        ]
                                        ~

                                        <
                                            b,
                                            \tweak NoteHead.style #'harmonic
                                            gqf
                                        >2
                                        :32
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 10]
                                        <
                                            b,
                                            \tweak NoteHead.style #'harmonic
                                            gqf
                                        >8
                                        :32
                                        \stopTextSpanOne
                                        - \tweak staff-padding 9
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright P \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            aqs,
                                            \tweak NoteHead.style #'harmonic
                                            f
                                        >4
                                        :32
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            af,
                                            \tweak NoteHead.style #'harmonic
                                            eqf
                                        >8
                                        :32
                                        [
                                        ~

                                        <
                                            af,
                                            \tweak NoteHead.style #'harmonic
                                            eqf
                                        >16
                                        :32
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            gqf,
                                            \tweak NoteHead.style #'harmonic
                                            d
                                        >16
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        - \tweak staff-padding 7
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright "quasi gridato" \hspace #0.5 }
                                        \startTextSpan
                                        - \tweak staff-padding 9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright XP \hspace #0.5 }
                                        \startTextSpanOne
                                        ~

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            gqf,
                                            \tweak NoteHead.style #'harmonic
                                            d
                                        >8
                                        ]
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            gqf,
                                            \tweak NoteHead.style #'harmonic
                                            d
                                        >16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            f,
                                            \tweak NoteHead.style #'harmonic
                                            cqs
                                        >16
                                        :32
                                        ~

                                        <
                                            f,
                                            \tweak NoteHead.style #'harmonic
                                            cqs
                                        >8
                                        :32
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            eqf,
                                            \tweak NoteHead.style #'harmonic
                                            b,
                                        >8
                                        \ff
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        ]
                                        \bar "||"

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
                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 2]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 3]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 4]
                                        r1

                                        r8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 5]
                                        r2..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 6]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 7]
                                        r1

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 8]
                                        r2..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 9]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 10]
                                        r1

                                        r8
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
                                r2

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 5]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 7]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 8]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 9]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 10]
                                r1

                                r8
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
                                \override Staff.Dots.transparent = ##t
                                \override Staff.Rest.transparent = ##t
                                \override Staff.StaffSymbol.transparent = ##t
                                  %! applying staff names and clefs
                                \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 "Archi" }
                                  %! applying staff names and clefs
                                \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 "archi" }
                                \startStaff
                                \stopStaff
                                r2

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

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 5]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 7]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 8]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 9]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 10]
                                r1

                                r8
                                \bar "||"

                            }

                        }

                    }

                >>

            }

        >>
