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
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 2]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 3]
                  %! scaling time signatures
                \time 9/8
                s1 * 9/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 4]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

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

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 8]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 9]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 11]
                  %! scaling time signatures
                \time 9/8
                s1 * 9/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 12]
                  %! scaling time signatures
                \time 7/8
                s1 * 7/8

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 13]
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 14]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 2]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 3]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 4]
                                r2

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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 8]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 10]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 11]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 12]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 13]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 14]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 15]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 2]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 3]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 4]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 5]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 7]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 8]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 10]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 11]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 12]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 13]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 14]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 15]
                                r2..

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
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 3]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 4]
                                r2

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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 8]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 10]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 11]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 12]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 13]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 14]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 15]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 2]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 3]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 4]
                                r2

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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 8]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 10]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 11]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 12]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 13]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 14]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 15]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 2]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 3]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 4]
                                r2

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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 8]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 10]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 11]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 12]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 13]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 14]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 15]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 2]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 3]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 4]
                                r2

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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 8]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 10]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 11]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 12]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 13]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 14]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 15]
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
                                        \all-color-music #"black"
                                        \harmonicsOn
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 " " }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 " " }
                                        \clef "tenor"
                                        <fs' b'>4
                                        :32
                                        - \accent
                                        - \espressivo
                                        \f
                                        - \tweak staff-padding 7
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright {\fraction 1 2 clt.} \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak staff-padding 9.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright XP \hspace #0.5 }
                                        \startTextSpanTwo
                                        \>

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo
                                        \p

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        <fs' b'>4
                                        :32
                                        - \accent
                                        - \espressivo
                                        \f
                                        \>

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo
                                        \p

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        <fs' b'>4
                                        :32
                                        - \accent
                                        - \espressivo
                                        \f
                                        \>

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>8
                                        :32
                                        - \espressivo
                                        \p
                                        \stopTextSpanTwo
                                        - \tweak staff-padding 9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright {\fraction 1 2 P} \hspace #0.5 }
                                        \startTextSpanTwo
                                        \harmonicsOff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        \clef "bass"
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <bf,! bf,!>8.
                                        \ff
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
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
                                            \stopTextSpanOne
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 5]
                                        \all-color-music #"black"
                                        \harmonicsOn
                                        \clef "tenor"
                                        <fs' b'>4
                                        :32
                                        - \accent
                                        - \espressivo
                                        \!
                                        \f
                                        - \tweak staff-padding 7
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright {\fraction 1 2 clt.} \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak staff-padding 9.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright MP \hspace #0.5 }
                                        \startTextSpanTwo
                                        \>

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo
                                        \p

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 6]
                                        <fs' b'>4
                                        :32
                                        - \accent
                                        - \espressivo
                                        \f
                                        \>

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo
                                        \p

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 7]
                                        <fs' b'>4
                                        :32
                                        - \accent
                                        - \espressivo
                                        \f
                                        \>

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>8
                                        :32
                                        - \espressivo
                                        \p
                                        \stopTextSpanTwo
                                        - \tweak staff-padding 9.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright N \hspace #0.5 }
                                        \startTextSpanTwo
                                        \harmonicsOff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 8]
                                        \clef "bass"
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <a,! a,!>8.
                                        \ff
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        [
                                        - \tweak staff-padding 6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { \fraction 1 2 P } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak stencil #constante-hairpin
                                        \<

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <gs,! a,!>16
                                        ]
                                        ~

                                        \times 8/9
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <gs, a,>16.
                                            [

                                            <a,! a,!>32

                                            <gs,! a,!>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <a,! a,!>8
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 9]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <aqf,! a,!>32
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <gs,! a,!>8..
                                        ]

                                        \times 4/5
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <a,! a,!>32
                                            [

                                            <a,! btqf,!>32

                                            <a,! a,!>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <gs,! a,!>8..
                                            ]
                                            ~

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <gs, a,>32
                                        [

                                        <a,! a,!>8.

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <gs,! a,!>32
                                        ]
                                        ~

                                        \times 8/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 10]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <gs, a,>8
                                            [

                                            <a,! a,!>32

                                            <gs,! a,!>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <a,! a,!>16.
                                            ]
                                            ~

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <a, a,>32
                                        [

                                        <aqf,! a,!>32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <gs,! a,!>8.
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <gs, a,>32
                                            [

                                            <a,! a,!>32

                                            <a,! btqf,!>32

                                            <a,! a,!>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <gs,! a,!>8.
                                            ]
                                            ~

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <gs, a,>16
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <a,! a,!>8.
                                        \stopTextSpanOne
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 11]
                                        \all-color-music #"black"
                                        \harmonicsOn
                                        \clef "tenor"
                                        <fs' b'>4
                                        :32
                                        - \accent
                                        - \espressivo
                                        \!
                                        \f
                                        - \tweak staff-padding 11
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright {\fraction 1 2 P} \hspace #0.5 }
                                        \startTextSpanTwo
                                        - \tweak staff-padding 7
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright {\fraction 1 2 clt.} \hspace #0.5 }
                                        \startTextSpanOne
                                        \>

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>4
                                        :32
                                        - \espressivo

                                        <fs' b'>8
                                        :32
                                        - \espressivo
                                        \p
                                        \stopTextSpanTwo
                                        - \tweak staff-padding 11
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright {\fraction 1 2 T} \hspace #0.5 }
                                        \startTextSpanTwo
                                        \harmonicsOff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 12]
                                        \clef "bass"
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <g,! g,!>8.
                                        \ff
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        [
                                        - \tweak staff-padding 6
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright { \fraction 1 2 P } \hspace #0.5 }
                                        \startTextSpanOne
                                        - \tweak stencil #constante-hairpin
                                        \<

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <fs,! g,!>16
                                        ]
                                        ~

                                        \times 8/9
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <fs, g,>16.
                                            [

                                            <g,! g,!>32

                                            <fs,! g,!>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <g,! g,!>8
                                            ]

                                        }

                                        <ftqs,! g,!>32

                                        <fs,! g,!>8..

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <g,! g,!>32
                                            [

                                            <g,! atqf,!>32

                                            <g,! g,!>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <fs,! g,!>16.
                                            ]
                                            ~

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 13]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <fs, g,>8
                                        [
                                        ~

                                        <fs, g,>32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <g,! g,!>16.
                                        ]
                                        ~

                                        \times 8/9
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <g, g,>16.
                                            [

                                            <f,! g,!>8
                                            ~

                                            <f, g,>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <g,! g,!>32
                                            ]

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <fs,! g,!>32
                                        [

                                        <g,! g,!>8

                                        <e,! g,!>32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <eqf,! g,!>16
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <eqf, g,>8
                                            [
                                            ~

                                            <eqf, g,>32

                                            <g,! g,!>32

                                            <g,! atqf,!>32

                                            <g,! g,!>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <e,! g,!>16
                                            ]
                                            ~

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <e, g,>8.
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <ef,! g,!>16
                                        ]
                                        ~

                                        \times 8/9
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <ef, g,>8
                                            [

                                            <g,! g,!>8
                                            ~

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <g, g,>32
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 14]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <fs,! g,!>32
                                        [

                                        <g,! g,!>32

                                        <fs,! g,!>8

                                        <g,! g,!>32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <ftqs,! g,!>32
                                        ]
                                        ~

                                        \times 4/5
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <ftqs, g,>8.
                                            [

                                            <fs,! g,!>32

                                            <g,! g,!>32

                                            <g,! atqf,!>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <g,! g,!>32
                                            ]
                                            ~

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <g, g,>8..
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <fs,! g,!>32
                                        ]
                                        ~

                                        \times 8/9
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <fs, g,>8
                                            [
                                            ~

                                            <fs, g,>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <g,! g,!>8
                                            ]
                                            ~

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <g, g,>32
                                        [

                                        <f,! g,!>32

                                        <g,! g,!>32

                                        <fs,! g,!>8

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <g,! g,!>32
                                        ]

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 15]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <e,! g,!>8..
                                            [

                                            <eqf,! g,!>32

                                            <g,! g,!>32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <g,! atqf,!>32
                                            ]

                                        }

                                        <g,! g,!>4

                                        \times 8/9
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <e,! g,!>8.
                                            [

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <ef,! g,!>16.
                                            ]
                                            ~

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <ef, g,>16
                                        [

                                        <g,! g,!>32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <fs,! g,!>32
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
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 2]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 3]
                                        r1

                                        r8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 4]
                                        r2

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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 8]
                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 9]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 10]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 11]
                                        r1

                                        r8

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 12]
                                        r2..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 13]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 14]
                                        r1

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 15]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 2]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 3]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 4]
                                r2

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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 8]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 10]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 11]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 12]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 13]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 14]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 15]
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
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 2]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 3]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 4]
                                r2

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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 8]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 10]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 11]
                                r1

                                r8

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 12]
                                r2..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 13]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 14]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 15]
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