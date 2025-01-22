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
                \tempo 4=91
                \mark \markup \bold {  }
                  %! scaling time signatures
                \time 4/4
                s1 * 1
                ^ \markup {
                  \raise #6 \with-dimensions-from \null
                  \override #'(font-size . 3)
                  \concat {
                      \abjad-metronome-mark-markup #2 #0 #1 #"91"
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
                \time 6/4
                s1 * 3/2

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
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 11]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 12]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 13]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 14]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
                  %! scaling time signatures
                \time 7/4
                s1 * 7/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 16]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 17]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 18]
                  %! scaling time signatures
                \time 7/4
                s1 * 7/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 19]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 20]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 21]
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 22]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 23]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 24]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 25]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 26]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 27]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 28]
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 29]
                  %! scaling time signatures
                \time 7/4
                s1 * 7/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 30]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 31]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 32]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 33]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 34]
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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 7]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 9]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 10]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 11]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 13]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 14]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 15]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 16]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 17]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 18]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 20]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 21]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 22]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 23]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 24]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 25]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 27]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 28]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 29]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 30]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 31]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 32]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 34]
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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 7]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 9]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 10]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 11]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 13]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 14]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 15]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 16]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 17]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 18]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 20]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 21]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 22]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 23]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 24]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 25]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 27]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 28]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 29]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 30]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 31]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 32]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 34]
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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 7]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 9]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 10]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 11]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 13]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 14]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 15]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 16]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 17]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 18]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 20]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 21]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 22]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 23]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 24]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 25]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 27]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 28]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 29]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 30]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 31]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 32]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 34]
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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 7]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 9]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 10]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 11]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 13]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 14]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 15]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 16]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 17]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 18]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 20]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 21]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 22]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 23]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 24]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 25]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 27]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 28]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 29]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 30]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 31]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 32]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 34]
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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 7]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 9]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 10]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 11]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 13]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 14]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 15]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 16]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 17]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 18]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 20]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 21]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 22]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 23]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 24]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 25]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 27]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 28]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 29]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 30]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 31]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 32]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 34]
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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 7]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 9]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 10]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 11]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 13]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 14]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 15]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 16]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 17]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 18]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 20]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 21]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 22]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 23]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 24]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 25]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 27]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 28]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 29]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 30]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 31]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 32]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 34]
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
                                        bf,16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \f
                                        [
                                        (
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \>
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \tweak staff-padding #6.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-solid-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "P"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpan

                                        bqf,16

                                        bqs,16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \mp
                                        )
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        \revert VanishingStaff.Stem.stemlet-length
                                        bqf,16
                                        ]
                                        (

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        aqs,16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \ff
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \>

                                        bf,16
                                        )

                                        a,16
                                        (

                                        \revert VanishingStaff.Stem.stemlet-length
                                        bf,16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \stopTextSpan
                                        ]
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \tweak staff-padding #6.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-solid-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "T"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpan

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            a,16
                                            [

                                            af,16
                                            )

                                            \revert VanishingStaff.Stem.stemlet-length
                                            a,16
                                            ]
                                            (

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            aqs,32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \f
                                            [
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            - \tweak stencil #abjad-flared-hairpin
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \>

                                            bqf,32

                                            aqs,32

                                            bqf,32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            bqs,32
                                            )

                                            bqf,32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \ff
                                            (
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            - \tweak stencil #abjad-flared-hairpin
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \>

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b,32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 2]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            c16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                            [
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "N"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            cs16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            d16
                                            )
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            cs32
                                            [
                                            (

                                            d32

                                            dqs32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "P"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            eqf32

                                            dqs32

                                            dqf32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \mf
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            \revert VanishingStaff.Stem.stemlet-length
                                            cqs32
                                            )
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            dqf16
                                            [
                                            (

                                            d16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            ef16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                            ]
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "N"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 3]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            d16
                                            [

                                            ef16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \f
                                            )
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \>

                                            d16
                                            (

                                            ef16

                                            eqf16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            dqs16
                                            ]

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        eqf16
                                        [

                                        dqs16

                                        eqf16

                                        \revert VanishingStaff.Stem.stemlet-length
                                        eqs16
                                        ]

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 4]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            e16
                                            )
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                            [
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "P"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            ef16
                                            (

                                            e16

                                            ef16

                                            d16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            \revert VanishingStaff.Stem.stemlet-length
                                            ef16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                            ]
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "T"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        dqs16
                                        [

                                        eqf16

                                        dqs16

                                        \revert VanishingStaff.Stem.stemlet-length
                                        eqf16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \f
                                        ]
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \>

                                        \times 4/5
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            eqs16
                                            )
                                            [

                                            eqf16
                                            (

                                            ef16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \mp
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "N"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            d16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            ef16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            e16
                                            [

                                            ef16
                                            )

                                            e16
                                            (

                                            eqs16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            fqs16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \ff
                                            )
                                            ]
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \>

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        gqf16
                                        [
                                        (

                                        gqs16

                                        aqf16

                                        \revert VanishingStaff.Stem.stemlet-length
                                        aqs16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \pp
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \stopTextSpan
                                        ]
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \tweak staff-padding #6.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-solid-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "P"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpan

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        bf16
                                        [

                                        a16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \f
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        - \tweak stencil #abjad-flared-hairpin
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \>

                                        bf16

                                        \revert VanishingStaff.Stem.stemlet-length
                                        a16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                        )
                                        ]
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            bf16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                            [
                                            (
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "N"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            a16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            aqf16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \ff
                                            )
                                            ]
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            - \tweak stencil #abjad-flared-hairpin
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \>

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 5]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            gqs32
                                            [
                                            (

                                            aqf32

                                            aqs32

                                            aqf32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \mf
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            gqs32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "P"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            af32
                                            )

                                            \revert VanishingStaff.Stem.stemlet-length
                                            a32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \f
                                            ]
                                            (
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \>

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            bf16
                                            [

                                            b16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            )
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            \revert VanishingStaff.Stem.stemlet-length
                                            c'16
                                            ]
                                            (

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            cs'32
                                            [

                                            dqf'32
                                            )

                                            cqs'32
                                            (

                                            dqf'32

                                            cqs'32

                                            dqf'32
                                            )
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "T"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            \revert VanishingStaff.Stem.stemlet-length
                                            dqs'32
                                            ]
                                            (

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \clef "treble"
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            ef'16
                                            [

                                            e'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \f
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \>

                                            \revert VanishingStaff.Stem.stemlet-length
                                            f'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 6]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            fs'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                            [
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "N"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            f'16
                                            )

                                            fs'16
                                            (

                                            gqf'16

                                            gqs'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \mp
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            \revert VanishingStaff.Stem.stemlet-length
                                            aqf'16
                                            ]

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        gqs'16
                                        )
                                        [

                                        aqf'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \stopTextSpan
                                        (
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \tweak staff-padding #6.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-solid-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "P"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpan

                                        gqs'16

                                        \revert VanishingStaff.Stem.stemlet-length
                                        af'16
                                        ]

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            a'16
                                            [

                                            af'16

                                            a'16

                                            af'16
                                            )

                                            g'16
                                            (

                                            \revert VanishingStaff.Stem.stemlet-length
                                            gqs'16
                                            ]

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        gqf'16
                                        [

                                        gqs'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \ff
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \>

                                        gqf'16
                                        )
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \stopTextSpan
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \tweak staff-padding #6.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-solid-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "N"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpan

                                        \revert VanishingStaff.Stem.stemlet-length
                                        fqs'16
                                        ]
                                        (

                                        \times 4/5
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            gqf'16
                                            [

                                            fs'16

                                            g'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \pp
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            af'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "P"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            \revert VanishingStaff.Stem.stemlet-length
                                            a'16
                                            ]

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 7]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            bf'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \f
                                            [
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            - \tweak stencil #abjad-flared-hairpin
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \>

                                            a'16

                                            aqs'16
                                            )

                                            bqf'16
                                            (

                                            \revert VanishingStaff.Stem.stemlet-length
                                            bqs'16
                                            ]

                                        }

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        bqf'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \stopTextSpan
                                        [
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \tweak staff-padding #6.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \abjad-solid-line-with-arrow
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \baca-text-spanner-left-text "T"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpan

                                        aqs'16

                                        bqf'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \p
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \<

                                        \revert VanishingStaff.Stem.stemlet-length
                                        bf'16
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        a'16
                                        [

                                        bf'16

                                        a'16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \ff
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        - \tweak stencil #abjad-flared-hairpin
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.hairpin()
                                        \>

                                        \revert VanishingStaff.Stem.stemlet-length
                                        af'16
                                        )
                                        ]

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \mf
                                            [
                                            (
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            gqs'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            aqf'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \f
                                            ]
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \>

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            gqs'32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                            [
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "N"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            gqf'32

                                            fqs'32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \p
                                            )
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            eqs'32
                                            (

                                            e'32

                                            f'32
                                            )
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "P"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            \revert VanishingStaff.Stem.stemlet-length
                                            e'32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \f
                                            ]
                                            (
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \>

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            ef'16
                                            [

                                            e'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            ef'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \mp
                                            ]
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 8]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            dqs'32
                                            [

                                            eqf'32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \ff
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \>

                                            dqs'32
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "N"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            dqf'32
                                            )

                                            dqs'32
                                            (

                                            eqf'32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            e'32
                                            )
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 4/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            ef'16
                                            [
                                            (

                                            e'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            f'16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            e'16
                                            [

                                            f'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \pp
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.hairpin()
                                            \<

                                            fqs'16
                                            )

                                            eqs'16
                                              %! SPANNER_STOP
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \stopTextSpan
                                            (
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \tweak staff-padding #6.5
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \abjad-solid-line-with-arrow
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            - \baca-text-spanner-left-text "P"
                                              %! SPANNER_START
                                              %! baca.PiecewiseCommand._call(2)
                                              %! baca.text_spanner()
                                            \startTextSpan

                                            eqf'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            eqs'16
                                            )
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 9]
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
                                             )
                                             #2.5
                                            \half-harmonic
                                            af'2.
                                            - \accent
                                            \ff
                                            \stopTextSpan
                                            - \tweak staff-padding 6.5
                                            - \abjad-invisible-line
                                            - \tweak bound-details.left.text \markup \concat { \upright N \hspace #0.5 }
                                            \startTextSpan
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
                                                  (14 0 14.5 3 15 0)
                                                  (15 0 15.5 -3 16 0)
                                                  (16 0 16.5 4 17 0)
                                                  (17 0 17.5 -4 18 0)
                                                  (18 0 18.5 5 19 0)
                                                  (19 0 19.5 -5 20 0)
                                                  (20 0 20.5 6 21 0)
                                                  (21 0 21.5 -6 22 0)
                                                  (22 0 22.5 5 23 0)
                                                  (23 0 23.5 -5 24 0)
                                                  (24 0 24.5 6 25 0)
                                                  (25 0 25.5 -6 26 0)
                                                  (26 0 26.5 6 27 0)
                                                  (27 0 27.5 -6 28 0)
                                                  (28 0 28.5 5 29 0)
                                                  (29 0 29.5 -5 30 0)
                                                  (30 0 30.5 4 31 0)
                                                  (31 0 31.5 -4 32 0)
                                                  (32 0 32.5 5 33 0)
                                                  (33 0 33.5 -5 34 0)
                                             )
                                             #2.5
                                            af'2
                                            \mp
                                            \stopTextSpan
                                            \<
                                            \glissando

                                            \afterGrace
                                            af'4
                                            \ff
                                            - \tweak stencil #abjad-flared-hairpin
                                            \<
                                            \glissando
                                            {

                                                \highest
                                                \tweak Stem.direction #down
                                                c'''16
                                                \fff
                                                \revert-noteheads

                                            }


                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 10]
                                        \clef "bass"
                                        af,1.
                                        \mf
                                        - \tweak bound-details.right.padding 1.25
                                        - \tweak staff-padding 3
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright gridato \hspace #0.5 }
                                        \startTextSpan

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 11]
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
                                        \clef "treble"
                                        bf'4.
                                        - \accent
                                        \ff
                                        \stopTextSpan
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
                                              (14 0 14.5 3 15 0)
                                              (15 0 15.5 -3 16 0)
                                              (16 0 16.5 4 17 0)
                                              (17 0 17.5 -4 18 0)
                                              (18 0 18.5 5 19 0)
                                              (19 0 19.5 -5 20 0)
                                              (20 0 20.5 6 21 0)
                                              (21 0 21.5 -6 22 0)
                                              (22 0 22.5 5 23 0)
                                              (23 0 23.5 -5 24 0)
                                              (24 0 24.5 6 25 0)
                                              (25 0 25.5 -6 26 0)
                                              (26 0 26.5 6 27 0)
                                              (27 0 27.5 -6 28 0)
                                              (28 0 28.5 5 29 0)
                                              (29 0 29.5 -5 30 0)
                                              (30 0 30.5 4 31 0)
                                              (31 0 31.5 -4 32 0)
                                              (32 0 32.5 5 33 0)
                                              (33 0 33.5 -5 34 0)
                                         )
                                         #2.5
                                        bf'4
                                        \mp
                                        \<
                                        \glissando

                                        \afterGrace
                                        bf'8
                                        \ff
                                        - \tweak stencil #abjad-flared-hairpin
                                        \<
                                        \glissando
                                        {

                                            \highest
                                            \tweak Stem.direction #down
                                            c'''16
                                            \fff
                                            \revert-noteheads

                                        }


                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 12]
                                        \clef "bass"
                                        af,1
                                        \f
                                        - \tweak bound-details.right.padding 1.25
                                        - \tweak staff-padding 3
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright "molto gridato" \hspace #0.5 }
                                        \startTextSpan
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 13]
                                        atqf,2.
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 14]
                                        a,2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 15]
                                        \harmonicsOn
                                        \clef "bass"
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        cs,32
                                        \stopTextSpan
                                        [
                                        (

                                        a,32

                                        f32

                                        cs'32
                                        )

                                        cs'32
                                        (

                                        f32

                                        a,32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        cs,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        cs,32
                                        [
                                        (

                                        a,32

                                        f32

                                        cs'32
                                        )

                                        cs'32
                                        (

                                        f32

                                        a,32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        cs,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        cs,32
                                        [
                                        (

                                        a,32

                                        f32

                                        cs'32
                                        )

                                        cs'32
                                        (

                                        f32

                                        a,32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        cs,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        cs,32
                                        [
                                        (

                                        a,32

                                        f32

                                        cs'32
                                        )

                                        cs'32
                                        (

                                        f32

                                        a,32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        cs,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d,32
                                        [
                                        (

                                        bf,32

                                        fs32

                                        d'32
                                        )

                                        d'32
                                        (

                                        fs32

                                        bf,32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d,32
                                        [
                                        (

                                        bf,32

                                        fs32

                                        d'32
                                        )

                                        d'32
                                        (

                                        fs32

                                        bf,32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d,32
                                        [
                                        (

                                        bf,32

                                        fs32

                                        d'32
                                        )

                                        d'32
                                        (

                                        fs32

                                        bf,32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d,32
                                        )
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 16]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        ef,32
                                        [
                                        (

                                        b,32

                                        g32

                                        ef'32
                                        )

                                        ef'32
                                        (

                                        g32

                                        b,32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        ef,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        ef,32
                                        [
                                        (

                                        b,32

                                        g32

                                        ef'32
                                        )

                                        ef'32
                                        (

                                        g32

                                        b,32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        ef,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        e,32
                                        [
                                        (

                                        c32

                                        af32

                                        e'32
                                        )

                                        e'32
                                        (

                                        af32

                                        c32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        e,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        e,32
                                        [
                                        (

                                        c32

                                        af32

                                        e'32
                                        )

                                        e'32
                                        (

                                        af32

                                        c32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        e,32
                                        )
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 17]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        e,32
                                        [
                                        (

                                        c32

                                        af32

                                        e'32
                                        )

                                        e'32
                                        (

                                        af32

                                        c32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        e,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        e,32
                                        [
                                        (

                                        c32

                                        af32

                                        e'32
                                        )

                                        e'32
                                        (

                                        af32

                                        c32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        e,32
                                        )
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 18]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        fs,32
                                        [
                                        (

                                        d32

                                        bf32

                                        fs'32
                                        )

                                        fs'32
                                        (

                                        bf32

                                        d32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        fs,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        fs,32
                                        [
                                        (

                                        d32

                                        bf32

                                        fs'32
                                        )

                                        fs'32
                                        (

                                        bf32

                                        d32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        fs,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        fs,32
                                        [
                                        (

                                        d32

                                        bf32

                                        fs'32
                                        )

                                        fs'32
                                        (

                                        bf32

                                        d32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        fs,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        g,32
                                        [
                                        (

                                        ef32

                                        b32

                                        g'32
                                        )

                                        g'32
                                        (

                                        b32

                                        ef32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        g,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        g,32
                                        [
                                        (

                                        ef32

                                        b32

                                        g'32
                                        )

                                        g'32
                                        (

                                        b32

                                        ef32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        g,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        a,32
                                        [
                                        (

                                        f32

                                        cs'32

                                        a'32
                                        )

                                        a'32
                                        (

                                        cs'32

                                        f32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        a,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        a,32
                                        [
                                        (

                                        f32

                                        cs'32

                                        a'32
                                        )

                                        a'32
                                        (

                                        cs'32

                                        f32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        a,32
                                        )
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 19]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        a,32
                                        [
                                        (

                                        f32

                                        cs'32

                                        a'32
                                        )

                                        a'32
                                        (

                                        cs'32

                                        f32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        a,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        a,32
                                        [
                                        (

                                        f32

                                        cs'32

                                        a'32
                                        )

                                        a'32
                                        (

                                        cs'32

                                        f32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        a,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        bf,32
                                        [
                                        (

                                        fs32

                                        d'32

                                        bf'32
                                        )

                                        bf'32
                                        (

                                        d'32

                                        fs32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        bf,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        bf,32
                                        [
                                        (

                                        fs32

                                        d'32

                                        bf'32
                                        )

                                        bf'32
                                        (

                                        d'32

                                        fs32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        bf,32
                                        )
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 20]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        bf,32
                                        [
                                        (

                                        fs32

                                        d'32

                                        bf'32
                                        )

                                        bf'32
                                        (

                                        d'32

                                        fs32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        bf,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        b,32
                                        [
                                        (

                                        g32

                                        ef'32

                                        b'32
                                        )

                                        b'32
                                        (

                                        ef'32

                                        g32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b,32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        b,32
                                        [
                                        (

                                        g32

                                        ef'32

                                        b'32
                                        )

                                        b'32
                                        (

                                        ef'32

                                        g32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b,32
                                        )
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 21]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        c32
                                        [
                                        (

                                        af32

                                        e'32

                                        c''32
                                        )

                                        c''32
                                        (

                                        e'32

                                        af32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        c32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        c32
                                        [
                                        (

                                        af32

                                        e'32

                                        c''32
                                        )

                                        c''32
                                        (

                                        e'32

                                        af32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        c32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        c32
                                        [
                                        (

                                        af32

                                        e'32

                                        c''32
                                        )

                                        c''32
                                        (

                                        e'32

                                        af32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        c32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        c32
                                        [
                                        (

                                        af32

                                        e'32

                                        c''32
                                        )

                                        c''32
                                        (

                                        e'32

                                        af32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        c32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d32
                                        [
                                        (

                                        bf32

                                        fs'32

                                        d''32
                                        )

                                        d''32
                                        (

                                        fs'32

                                        bf32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d32
                                        [
                                        (

                                        bf32

                                        fs'32

                                        d''32
                                        )

                                        d''32
                                        (

                                        fs'32

                                        bf32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d32
                                        )
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 22]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d32
                                        [
                                        (

                                        bf32

                                        fs'32

                                        d''32
                                        )

                                        d''32
                                        (

                                        fs'32

                                        bf32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        ef32
                                        [
                                        (

                                        b32

                                        g'32

                                        ef''32
                                        )

                                        ef''32
                                        (

                                        g'32

                                        b32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        ef32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        ef32
                                        [
                                        (

                                        b32

                                        g'32

                                        ef''32
                                        )

                                        ef''32
                                        (

                                        g'32

                                        b32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        ef32
                                        )
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 23]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        f32
                                        [
                                        (

                                        cs'32

                                        a'32

                                        f''32
                                        )

                                        f''32
                                        (

                                        a'32

                                        cs'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        f32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        f32
                                        [
                                        (

                                        cs'32

                                        a'32

                                        f''32
                                        )

                                        f''32
                                        (

                                        a'32

                                        cs'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        f32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        f32
                                        [
                                        (

                                        cs'32

                                        a'32

                                        f''32
                                        )

                                        f''32
                                        (

                                        a'32

                                        cs'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        f32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        f32
                                        [
                                        (

                                        cs'32

                                        a'32

                                        f''32
                                        )

                                        f''32
                                        (

                                        a'32

                                        cs'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        f32
                                        )
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 24]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        fs32
                                        [
                                        (

                                        d'32

                                        bf'32

                                        fs''32
                                        )

                                        fs''32
                                        (

                                        bf'32

                                        d'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        fs32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        fs32
                                        [
                                        (

                                        d'32

                                        bf'32

                                        fs''32
                                        )

                                        fs''32
                                        (

                                        bf'32

                                        d'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        fs32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        fs32
                                        [
                                        (

                                        d'32

                                        bf'32

                                        fs''32
                                        )

                                        fs''32
                                        (

                                        bf'32

                                        d'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        fs32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        g32
                                        [
                                        (

                                        ef'32

                                        b'32

                                        g''32
                                        )

                                        g''32
                                        (

                                        b'32

                                        ef'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        g32
                                        )
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        g32
                                        [
                                        (

                                        ef'32

                                        b'32

                                        g''32
                                        )

                                        g''32
                                        (

                                        b'32

                                        ef'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        g32
                                        )
                                        ]
                                        \harmonicsOff

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 25]
                                            \staff-line-count 4
                                            \clef "percussion"
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            \mf
                                            \tweak padding #6
                                            ^ \markup \upright {behind bridge on wrapping}
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 26]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 27]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 28]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g16
                                            [

                                            b16

                                            d'16

                                            f'16

                                            d'16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b16
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 7/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 29]
                                            \staff-line-count 5
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
                                             )
                                             #2.5
                                            \half-harmonic
                                            \clef "treble"
                                            af'2.
                                            - \accent
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
                                                  (14 0 14.5 3 15 0)
                                                  (15 0 15.5 -3 16 0)
                                                  (16 0 16.5 4 17 0)
                                                  (17 0 17.5 -4 18 0)
                                                  (18 0 18.5 5 19 0)
                                                  (19 0 19.5 -5 20 0)
                                                  (20 0 20.5 6 21 0)
                                                  (21 0 21.5 -6 22 0)
                                                  (22 0 22.5 5 23 0)
                                                  (23 0 23.5 -5 24 0)
                                                  (24 0 24.5 6 25 0)
                                                  (25 0 25.5 -6 26 0)
                                                  (26 0 26.5 6 27 0)
                                                  (27 0 27.5 -6 28 0)
                                                  (28 0 28.5 5 29 0)
                                                  (29 0 29.5 -5 30 0)
                                                  (30 0 30.5 4 31 0)
                                                  (31 0 31.5 -4 32 0)
                                                  (32 0 32.5 5 33 0)
                                                  (33 0 33.5 -5 34 0)
                                             )
                                             #2.5
                                            af'2
                                            \mp
                                            \<
                                            \glissando

                                            \afterGrace
                                            af'4
                                            \ff
                                            - \tweak stencil #abjad-flared-hairpin
                                            \<
                                            \glissando
                                            {

                                                \highest
                                                \tweak Stem.direction #down
                                                c'''16
                                                \fff
                                                \revert-noteheads

                                            }


                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 30]
                                            \staff-line-count 4
                                            \clef "percussion"
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g32
                                            \f
                                            \tweak padding #6
                                            ^ \markup \upright {behind bridge on wrapping}
                                            [

                                            b32

                                            d'32

                                            f'32

                                            d'32

                                            b32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            g32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            b32
                                            [

                                            d'32

                                            f'32

                                            d'32

                                            b32

                                            g32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            d'32
                                            [

                                            f'32

                                            d'32

                                            b32

                                            g32

                                            b32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            d'32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            f'32
                                            [

                                            d'32

                                            b32

                                            g32

                                            b32

                                            d'32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            f'32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 31]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            d'32
                                            [

                                            b32

                                            g32

                                            b32

                                            d'32

                                            f'32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            d'32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            b32
                                            [

                                            g32

                                            b32

                                            d'32

                                            f'32

                                            d'32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            g32
                                            [

                                            b32

                                            d'32

                                            f'32

                                            d'32

                                            b32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            g32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 32]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            b32
                                            [

                                            d'32

                                            f'32

                                            d'32

                                            b32

                                            g32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            b32
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            d'32
                                            [

                                            f'32

                                            d'32

                                            b32

                                            g32

                                            b32

                                            \revert VanishingStaff.Stem.stemlet-length
                                            d'32
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 33]
                                            \staff-line-count 5
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
                                             )
                                             #2.5
                                            \half-harmonic
                                            \clef "treble"
                                            af'2.
                                            - \accent
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
                                                  (14 0 14.5 3 15 0)
                                                  (15 0 15.5 -3 16 0)
                                                  (16 0 16.5 4 17 0)
                                                  (17 0 17.5 -4 18 0)
                                                  (18 0 18.5 5 19 0)
                                                  (19 0 19.5 -5 20 0)
                                                  (20 0 20.5 6 21 0)
                                                  (21 0 21.5 -6 22 0)
                                                  (22 0 22.5 5 23 0)
                                                  (23 0 23.5 -5 24 0)
                                                  (24 0 24.5 6 25 0)
                                                  (25 0 25.5 -6 26 0)
                                                  (26 0 26.5 6 27 0)
                                                  (27 0 27.5 -6 28 0)
                                                  (28 0 28.5 5 29 0)
                                                  (29 0 29.5 -5 30 0)
                                                  (30 0 30.5 4 31 0)
                                                  (31 0 31.5 -4 32 0)
                                                  (32 0 32.5 5 33 0)
                                                  (33 0 33.5 -5 34 0)
                                             )
                                             #2.5
                                            af'2
                                            \mp
                                            \<
                                            \glissando

                                            \afterGrace
                                            af'4
                                            \ff
                                            - \tweak stencil #abjad-flared-hairpin
                                            \<
                                            \glissando
                                            {

                                                \highest
                                                \tweak Stem.direction #down
                                                c'''16
                                                \fff
                                                \revert-noteheads

                                            }


                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 34]
                                        \staff-line-count 4
                                        \clef "percussion"
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        g32
                                        \ff
                                        \tweak padding #6
                                        ^ \markup \upright {behind bridge on wrapping}
                                        [
                                        \staff-line-count 5

                                        b32

                                        d'32

                                        f'32

                                        d'32

                                        b32

                                        g32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b32
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d'32
                                        [

                                        f'32

                                        d'32

                                        b32

                                        g32

                                        b32

                                        d'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        f'32
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d'32
                                        [

                                        b32

                                        g32

                                        b32

                                        d'32

                                        f'32

                                        d'32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b32
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

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 6]
                                        r1

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 7]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 8]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 9]
                                        r1

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 10]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 11]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 12]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 13]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 14]
                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 15]
                                        r1..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 16]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 17]
                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 18]
                                        r1..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 19]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 20]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 21]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 22]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 23]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 24]
                                        r1

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 25]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 26]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 27]
                                        r1

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 28]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 29]
                                        r1..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 30]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 31]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 32]
                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 33]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 34]
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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 7]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 9]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 10]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 11]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 13]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 14]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 15]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 16]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 17]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 18]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 20]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 21]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 22]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 23]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 24]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 25]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 27]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 28]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 29]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 30]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 31]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 32]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 34]
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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 6]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 7]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 8]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 9]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 10]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 11]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 13]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 14]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 15]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 16]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 17]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 18]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 20]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 21]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 22]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 23]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 24]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 25]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 27]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 28]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 29]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 30]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 31]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 32]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 34]
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