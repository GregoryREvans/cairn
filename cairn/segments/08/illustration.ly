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
                \time 5/4
                s1 * 5/4
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #2 #0 #1 #"78"
                  }
                }

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 2]
                  %! scaling time signatures
                \time 7/8
                s1 * 7/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 3]
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2

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
                \time 11/8
                s1 * 11/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 6]
                  %! scaling time signatures
                \time 5/8
                s1 * 5/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 7]
                  %! scaling time signatures
                \time 7/8
                s1 * 7/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 9]
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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 2]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 4]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 5]
                                r1

                                r4.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 6]
                                r2

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 7]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 9]
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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 2]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 4]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 5]
                                r1

                                r4.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 6]
                                r2

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 7]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 9]
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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 2]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 4]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 5]
                                r1

                                r4.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 6]
                                r2

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 7]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 9]
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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 2]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 4]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 5]
                                r1

                                r4.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 6]
                                r2

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 7]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 9]
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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 2]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 4]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 5]
                                r1

                                r4.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 6]
                                r2

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 7]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 9]
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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 2]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 4]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 5]
                                r1

                                r4.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 6]
                                r2

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 7]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 9]
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
                                        \all-color-music #"black"
                                        \harmonicsOn
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 " " }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 " " }
                                        \clef "tenor"
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        c'16
                                        - \accent
                                        \f
                                        \stopTextSpan
                                        \stopTextSpanOne
                                        [
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<

                                        ef16
                                        - \accent

                                        cs'16
                                        - \accent

                                        \revert VanishingStaff.Stem.stemlet-length
                                        e16
                                        - \accent
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        af16
                                        - \accent
                                        [

                                        a16
                                        - \accent
                                        \harmonicsOff

                                        \revert VanishingStaff.Stem.stemlet-length
                                          %! SPANNER_START
                                          %! baca._do_spanner_indicator_command(1)
                                          %! baca.trill_spanner()
                                        \pitchedTrill
                                        d'8
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
                                        \startTrillSpan g'

                                        d'4
                                        ~

                                        d'4
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d'8
                                          %! SPANNER_STOP
                                          %! baca._do_spanner_indicator_command(2)
                                          %! baca.trill_spanner()
                                        \stopTrillSpan
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            d'
                                            \tweak NoteHead.style #'harmonic
                                            g'
                                        >8
                                        \mp
                                        ]
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            d'
                                            \tweak NoteHead.style #'harmonic
                                            g'
                                        >8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            ef'
                                            \tweak NoteHead.style #'harmonic
                                            af'
                                        >8
                                        :32
                                        - \accent
                                        \ff
                                        ~

                                        <
                                            ef'
                                            \tweak NoteHead.style #'harmonic
                                            af'
                                        >16
                                        :32
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            af
                                            \tweak NoteHead.style #'harmonic
                                            df'
                                        >16
                                        \mp
                                        ]
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            af
                                            \tweak NoteHead.style #'harmonic
                                            df'
                                        >8
                                        [
                                        ~

                                        <
                                            af
                                            \tweak NoteHead.style #'harmonic
                                            df'
                                        >16
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            bf
                                            \tweak NoteHead.style #'harmonic
                                            ef'
                                        >16
                                        ]
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            bf
                                            \tweak NoteHead.style #'harmonic
                                            ef'
                                        >8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            ef
                                            \tweak NoteHead.style #'harmonic
                                            af
                                        >8
                                        :32
                                        - \accent
                                        \ff
                                        ]
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        <
                                            fs
                                            \tweak NoteHead.style #'harmonic
                                            b
                                        >4
                                        \mp
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            fs
                                            \tweak NoteHead.style #'harmonic
                                            b
                                        >16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            c'
                                            \tweak NoteHead.style #'harmonic
                                            f'
                                        >8.
                                        :32
                                        - \accent
                                        \ff
                                        ]
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        <
                                            b
                                            \tweak NoteHead.style #'harmonic
                                            e'
                                        >4
                                        \mp
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <
                                            e'
                                            \tweak NoteHead.style #'harmonic
                                            a'
                                        >8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            cs'
                                            \tweak NoteHead.style #'harmonic
                                            fs'
                                        >8
                                        :32
                                        - \accent
                                        \ff
                                        ]
                                        ~

                                        <
                                            cs'
                                            \tweak NoteHead.style #'harmonic
                                            fs'
                                        >2
                                        :32

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 4]
                                            \half-harmonic
                                            \clef "treble"
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            c'32
                                            \sfp
                                            [
                                            - \tweak staff-padding 6
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \default-notehead-markup \hspace #0.5 }
                                            \startTextSpanOne
                                            \(
                                            \<

                                            cs'32

                                            d'32

                                            cs'32

                                            dqf'32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            eqf'32
                                            \)
                                            ]

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        cs'32
                                        [
                                        \(

                                        d'32

                                        ef'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d'32
                                        \)
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        dqs'32
                                        [
                                        \(

                                        eqs'32

                                        ef'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        e'32
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            f'32
                                            [

                                            e'32

                                            eqs'32
                                            \)

                                            gqf'32
                                            \(

                                            d'32

                                            ef'32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            e'32
                                            ]

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        ef'32
                                        \)
                                        [

                                        eqf'32
                                        \(

                                        fqs'32

                                        f'32

                                        fs'32

                                        g'32

                                        fs'32
                                        \)

                                        \revert VanishingStaff.Stem.stemlet-length
                                        gqf'32
                                        ]
                                        \(

                                        \times 4/5
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            aqf'32
                                            [

                                            e'32

                                            f'32
                                            \)

                                            fs'32
                                            \(

                                            \revert VanishingStaff.Stem.stemlet-length
                                            f'32
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 5]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            fqs'32
                                            [

                                            gqs'32

                                            f'32

                                            fs'32

                                            g'32
                                            \)

                                            fs'32
                                            \stopTextSpanOne
                                            - \tweak staff-padding 6
                                            - \abjad-solid-line-with-arrow
                                            - \tweak bound-details.left.text \markup \concat { \half-diamond-notehead-markup \hspace #0.5 }
                                            \startTextSpanOne
                                            \(

                                            gqf'32

                                            aqf'32

                                            g'32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            af'32
                                            \)
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            a'32
                                            [
                                            \(

                                            af'32

                                            aqf'32

                                            bqf'32

                                            fs'32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            g'32
                                            \)
                                            ]

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        af'32
                                        [
                                        \(

                                        g'32

                                        gqs'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        aqs'32
                                        \)
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        a'32
                                        [
                                        \(

                                        bf'32

                                        b'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        bf'32
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            bqf'32
                                            [

                                            cqs''32

                                            af'32
                                            \)

                                            a'32
                                            \(

                                            bf'32

                                            a'32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            aqs'32
                                            ]

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        bqs'32
                                        \)
                                        [

                                        a'32
                                        \(

                                        bf'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b'32
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        bf'32
                                        [

                                        bqf'32

                                        cqs''32
                                        \)

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b'32
                                        ]
                                        \(

                                        \times 4/5
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            c''32
                                            \stopTextSpanOne
                                            [
                                            - \tweak staff-padding 6
                                            - \abjad-dashed-line-with-hook
                                            - \tweak bound-details.left.text \markup \concat { \diamond-notehead-markup \hspace #0.5 }
                                            \startTextSpanOne

                                            cs''32

                                            c''32
                                            \)

                                            cqs''32
                                            \(

                                            \revert VanishingStaff.Stem.stemlet-length
                                            dqs''32
                                            \mp
                                            \)
                                            ]
                                            \revert-noteheads

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 6]
                                        \clef "treble"
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        g'32
                                        \ff
                                        \stopTextSpanOne
                                        [
                                        - \tweak staff-padding 9
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright "quasi gridato" \hspace #0.5 }
                                        \startTextSpanTwo
                                        \>

                                        af'32

                                        a'32

                                        bf'32

                                        af'32

                                        bf'32

                                        b'32

                                        c''32

                                        cqs''32

                                        a'32

                                        bf'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b'32
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        c''32
                                        [

                                        bf'32

                                        c''32

                                        cs''32

                                        d''32

                                        dqs''32

                                        b'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        c''32
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 7]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        cs''32
                                        [

                                        d''32

                                        c''32

                                        d''32

                                        ef''32

                                        e''32

                                        eqs''32

                                        cs''32

                                        d''32

                                        ef''32

                                        e''32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d''32
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        e''32
                                        [

                                        f''32

                                        fs''32

                                        gqf''32

                                        ef''32

                                        e''32

                                        f''32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        fs''32
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        e''32
                                        [

                                        fs''32

                                        g''32

                                        af''32

                                        aqf''32

                                        f''32

                                        fs''32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        g''32
                                        \mf
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 8]
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
                                        e''1
                                        - \accent
                                        \fff
                                        \stopTextSpanTwo
                                        - \tweak staff-padding 6
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \half-diamond-notehead-markup \hspace #0.5 }
                                        \startTextSpanOne
                                        \>
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 9]
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
                                        e''2.
                                        \mf
                                        \<
                                        \glissando

                                        \afterGrace
                                        e''4
                                        \ff
                                        \stopTextSpanOne
                                        - \tweak staff-padding 6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \diamond-notehead-markup \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        \glissando
                                        {

                                            \highest
                                            \tweak Stem.direction #down
                                            c'''16
                                            \fff
                                            \stopTextSpanOne
                                            \revert-noteheads

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

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 2]
                                        r2..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 3]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 4]
                                        r1

                                        r8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 5]
                                        r1

                                        r4.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 6]
                                        r2

                                        r8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 7]
                                        r2..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 8]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 9]
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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 2]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 4]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 5]
                                r1

                                r4.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 6]
                                r2

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 7]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 9]
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

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 2]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 4]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 5]
                                r1

                                r4.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 6]
                                r2

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 7]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 9]
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