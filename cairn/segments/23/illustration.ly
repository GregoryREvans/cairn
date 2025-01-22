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
                \time 5/4
                s1 * 5/4

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
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 5]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

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
                \time 3/4
                s1 * 3/4

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
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 10]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 11]
                  %! scaling time signatures
                \time 7/4
                s1 * 7/4

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
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 14]
                  %! scaling time signatures
                \time 7/4
                s1 * 7/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 15]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 16]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 17]
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 18]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

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
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 21]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 22]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 23]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 24]
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 25]
                  %! scaling time signatures
                \time 7/4
                s1 * 7/4

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
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 28]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 29]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 30]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 31]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 32]
                  %! scaling time signatures
                \time 7/4
                s1 * 7/4

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
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 35]
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 36]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 37]
                  %! scaling time signatures
                \time 5/4
                s1 * 5/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 38]
                  %! scaling time signatures
                \time 6/4
                s1 * 3/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 39]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 40]
                  %! scaling time signatures
                \time 4/4
                s1 * 1

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 41]
                  %! scaling time signatures
                \time 3/4
                s1 * 3/4

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 42]
                  %! scaling time signatures
                \time 2/4
                s1 * 1/2

                  %! COMMENT_MEASURE_NUMBERS
                  %! evans.SegmentMaker.comment_measure_numbers()
                % [Global Context measure 43]
                  %! scaling time signatures
                \time 7/4
                s1 * 7/4

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
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 4]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 5]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 7]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 10]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 11]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 13]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 14]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 15]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 16]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 17]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 18]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 20]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 21]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 22]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 23]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 24]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 25]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 27]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 28]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 29]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 30]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 31]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 32]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 34]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 35]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 36]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 37]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 38]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 39]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 40]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 41]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 42]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [string voice measure 43]
                                r1..

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
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 4]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 5]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 7]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 10]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 11]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 13]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 14]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 15]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 16]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 17]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 18]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 20]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 21]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 22]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 23]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 24]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 25]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 27]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 28]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 29]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 30]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 31]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 32]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 34]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 35]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 36]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 37]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 38]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 39]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 40]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 41]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 42]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [battuto voice measure 43]
                                r1..

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
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 4]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 5]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 7]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 10]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 11]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 13]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 14]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 15]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 16]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 17]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 18]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 20]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 21]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 22]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 23]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 24]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 25]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 27]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 28]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 29]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 30]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 31]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 32]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 34]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 35]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 36]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 37]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 38]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 39]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 40]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 41]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 42]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [bow voice measure 43]
                                r1..

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
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 4]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 5]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 7]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 10]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 11]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 13]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 14]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 15]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 16]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 17]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 18]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 20]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 21]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 22]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 23]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 24]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 25]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 27]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 28]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 29]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 30]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 31]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 32]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 34]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 35]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 36]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 37]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 38]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 39]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 40]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 41]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 42]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [left voice measure 43]
                                r1..

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
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 4]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 5]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 7]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 10]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 11]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 13]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 14]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 15]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 16]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 17]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 18]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 20]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 21]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 22]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 23]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 24]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 25]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 27]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 28]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 29]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 30]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 31]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 32]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 34]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 35]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 36]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 37]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 38]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 39]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 40]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 41]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 42]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [right voice measure 43]
                                r1..

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
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 4]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 5]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 7]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 10]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 11]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 13]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 14]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 15]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 16]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 17]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 18]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 20]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 21]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 22]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 23]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 24]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 25]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 27]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 28]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 29]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 30]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 31]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 32]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 34]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 35]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 36]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 37]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 38]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 39]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 40]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 41]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 42]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [front voice measure 43]
                                r1..

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
                                        \staff-line-count 4
                                          %! applying staff names and clefs
                                        \set Staff.instrumentName = \markup \center-column { \hcenter-in #12 " " }
                                          %! applying staff names and clefs
                                        \set Staff.shortInstrumentName = \markup \center-column { \hcenter-in #12 " " }
                                        \clef "bass"
                                        \clef "percussion"
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        g32
                                        \ff
                                        [
                                        - \tweak bound-details.right.padding 1.25
                                        - \tweak staff-padding 6.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright "behind bridge on wrapping" \hspace #0.5 }
                                        \startTextSpanOne

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

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        g32
                                        [

                                        b32

                                        d'32

                                        f'32

                                        d'32

                                        b32

                                        g32

                                        \revert VanishingStaff.Stem.stemlet-length
                                        b32
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 2]
                                        \staff-line-count 5
                                        \clef "bass"
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        c32
                                        \mp
                                        \stopTextSpanOne
                                        \stopTextSpanTwo
                                        [
                                        (
                                        \<

                                        <
                                            c
                                            \tweak NoteHead.style #'harmonic
                                            f
                                        >16
                                        )

                                        cs32
                                        (

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <
                                            cs
                                            \tweak NoteHead.style #'harmonic
                                            af
                                        >16
                                        )
                                        ]

                                          %! SPANNER_START
                                          %! baca._do_spanner_indicator_command(1)
                                          %! baca.trill_spanner()
                                        \pitchedTrill
                                        b,1
                                        ~
                                          %! SPANNER_START
                                          %! baca._do_spanner_indicator_command(1)
                                          %! baca.trill_spanner()
                                        - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                          %! SPANNER_START
                                          %! baca._do_spanner_indicator_command(1)
                                          %! baca.trill_spanner()
                                        \startTrillSpan e

                                        b,16
                                          %! SPANNER_STOP
                                          %! baca._do_spanner_indicator_command(2)
                                          %! baca.trill_spanner()
                                        \stopTrillSpan
                                        \stopTrillSpan

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 3]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        bf,32
                                        [
                                        (

                                        <
                                            bf,
                                            \tweak NoteHead.style #'harmonic
                                            cs
                                        >16
                                        )

                                        a,32
                                        (

                                        <
                                            a,
                                            \tweak NoteHead.style #'harmonic
                                            d
                                        >16
                                        )

                                        \revert VanishingStaff.Stem.stemlet-length
                                        bf,32
                                        ]
                                        (

                                        <
                                            bf,
                                            \tweak NoteHead.style #'harmonic
                                            f
                                        >16
                                        )

                                          %! SPANNER_START
                                          %! baca._do_spanner_indicator_command(1)
                                          %! baca.trill_spanner()
                                        \pitchedTrill
                                        g,1
                                        - \tweak staff-padding 8.5
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright "non percussion" \hspace #0.5 }
                                        \startTextSpanTwo
                                        ~
                                          %! SPANNER_START
                                          %! baca._do_spanner_indicator_command(1)
                                          %! baca.trill_spanner()
                                        - \tweak TrillPitchHead.stencil #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"noteheads.s0harmonic" #}))
                                          %! SPANNER_START
                                          %! baca._do_spanner_indicator_command(1)
                                          %! baca.trill_spanner()
                                        \startTrillSpan b,

                                        g,8..
                                        \f
                                        \stopTextSpanTwo
                                          %! SPANNER_STOP
                                          %! baca._do_spanner_indicator_command(2)
                                          %! baca.trill_spanner()
                                        \stopTrillSpan
                                        \stopTrillSpan
                                        - \tweak bound-details.right.padding 1.25
                                        - \tweak staff-padding 8.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright "finger percussion" \hspace #0.5 }
                                        \startTextSpanTwo

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 4]
                                        \staff-line-count 4
                                        \clef "percussion"
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        g32
                                        \ff
                                        [
                                        - \tweak bound-details.right.padding 1.25
                                        - \tweak staff-padding 6.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright "behind bridge on wrapping" \hspace #0.5 }
                                        \startTextSpanOne

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

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 10/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 5]
                                            \staff-line-count 5
                                            \clef "bass"
                                            fs4.
                                            \f
                                            \stopTextSpanOne
                                            \stopTextSpanTwo

                                            ftqs4.

                                            fs4.

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 6]
                                        cs,1.
                                        \f
                                        - \tweak staff-padding 3
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright "gridato" \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 7]
                                        ef,2.
                                        \stopTextSpanOne
                                        - \tweak staff-padding 3
                                        - \abjad-solid-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \upright "flautando" \hspace #0.5 }
                                        \startTextSpanOne
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 8]
                                        d,1
                                        \stopTextSpanOne
                                        - \tweak bound-details.right.padding 1.25
                                        - \tweak staff-padding 3
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { \upright "molto gridato" \hspace #0.5 }
                                        \startTextSpanOne

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 9]
                                        \staff-line-count 5
                                        \clef "bass"
                                        fs4
                                        \ff
                                        \stopTextSpanOne

                                        ftqs4

                                        g4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 10]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        ftqs8
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        fs8
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        ftqs8
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        g8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 11]
                                        \half-harmonic
                                        <c, a, fs ef'>4
                                        \mp
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 5
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
                                        - \baca-text-spanner-right-text "T"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanTwo
                                        \<
                                          %! abjad.glissando(7)
                                        \glissando

                                        c,4
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        c,16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        cs,8.
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        g,4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs,4..
                                          %! abjad.glissando(7)
                                        \glissando

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d,8
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        ef,16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.text_spanner()
                                        \stopTextSpanTwo
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 12]
                                        ef,2
                                          %! abjad.glissando(7)
                                        \glissando

                                        e,2
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 13]
                                        d,4
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 5
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
                                        - \baca-text-spanner-right-text "P"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanTwo
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        d,16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        af,8.
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 14]
                                        af,8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        g,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4
                                        ~

                                        b,16
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs,8.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.text_spanner()
                                        \stopTextSpanTwo
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        ef4..
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 15]
                                        a,8
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf,2
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 5
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
                                        - \baca-text-spanner-right-text "N"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanTwo
                                        ~

                                        bf,16
                                          %! abjad.glissando(7)
                                        \glissando

                                        d4
                                        ~

                                        d16
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 16]
                                        d8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        a,4
                                        ~

                                        a,16
                                          %! abjad.glissando(7)
                                        \glissando

                                        e4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.text_spanner()
                                        \stopTextSpanTwo
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 17]
                                        e8
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        c4
                                        ~

                                        c16
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        f4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf4
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 5
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
                                        - \baca-text-spanner-right-text "T"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanTwo
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 18]
                                        bf8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        ef8
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs4..
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 19]
                                        cs8
                                          %! abjad.glissando(7)
                                        \glissando

                                        g2
                                          %! abjad.glissando(7)
                                        \glissando

                                        af4
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        af16
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.text_spanner()
                                        \stopTextSpanTwo
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        e16
                                        ]
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 20]
                                        e4
                                        ~

                                        e16
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4
                                          %! abjad.glissando(7)
                                        \glissando

                                        e,4
                                        ~

                                        e,16
                                        \f
                                        \>
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs,8.
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 5
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
                                        - \baca-text-spanner-right-text "P"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanTwo
                                          %! abjad.glissando(7)
                                        \glissando

                                        c,8.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 21]
                                        c,8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs,4..
                                          %! abjad.glissando(7)
                                        \glissando

                                        f,8
                                          %! abjad.glissando(7)
                                        \glissando

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 22]
                                        c,2
                                        ~

                                        c,16
                                          %! abjad.glissando(7)
                                        \glissando

                                        g,4..
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.text_spanner()
                                        \stopTextSpanTwo
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 23]
                                        g,16
                                          %! abjad.glissando(7)
                                        \glissando

                                        f,4
                                        ~

                                        f,16
                                          %! abjad.glissando(7)
                                        \glissando

                                        b,4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        c4
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 5
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
                                        - \baca-text-spanner-right-text "N"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanTwo
                                          %! abjad.glissando(7)
                                        \glissando

                                        e4
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 24]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        e16
                                        [
                                          %! abjad.glissando(7)
                                        \glissando

                                        \revert VanishingStaff.Stem.stemlet-length
                                        a8.
                                        ]
                                          %! abjad.glissando(7)
                                        \glissando

                                        af4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs4..
                                          %! abjad.glissando(7)
                                        \glissando

                                        c8
                                          %! abjad.glissando(7)
                                        \glissando

                                        cs4
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.text_spanner()
                                        \stopTextSpanTwo
                                        ~

                                        cs16
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 25]
                                        cs4
                                          %! abjad.glissando(7)
                                        \glissando

                                        f2
                                          %! abjad.glissando(7)
                                        \glissando

                                        c4
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 5
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
                                        - \baca-text-spanner-right-text "T"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanTwo
                                        ~

                                        c16
                                          %! abjad.glissando(7)
                                        \glissando

                                        g4.
                                          %! abjad.glissando(7)
                                        \glissando

                                        f4
                                          %! abjad.glissando(7)
                                        \glissando

                                        b16
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 26]
                                        b4
                                          %! abjad.glissando(7)
                                        \glissando

                                        bf8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs4.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.text_spanner()
                                        \stopTextSpanTwo
                                          %! abjad.glissando(7)
                                        \glissando

                                        b8.
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 27]
                                        b4
                                          %! abjad.glissando(7)
                                        \glissando

                                        e8
                                          %! abjad.glissando(7)
                                        \glissando

                                        fs4.
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.padding 0.5
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak bound-details.right.stencil-align-dir-y #center
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        - \tweak staff-padding 5
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
                                        - \baca-text-spanner-right-text "P"
                                          %! SPANNER_START
                                          %! baca.PiecewiseCommand._call(2)
                                          %! baca.text_spanner()
                                        \startTextSpanTwo
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 28]
                                        fs8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        c'4
                                        ~

                                        c'16
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 29]
                                        c'8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        b4
                                        ~

                                        b16
                                          %! abjad.glissando(7)
                                        \glissando

                                        g4.
                                          %! SPANNER_STOP
                                          %! baca.PiecewiseCommand._call(3)
                                          %! baca.text_spanner()
                                        \stopTextSpanTwo
                                          %! abjad.glissando(7)
                                        \glissando

                                        d8
                                        ~

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 30]
                                        d8
                                          %! abjad.glissando(7)
                                        \glissando

                                        a4
                                        ~

                                        a16
                                          %! abjad.glissando(7)
                                        \glissando

                                        b8.
                                          %! abjad.glissando(7)
                                        \glissando

                                        f8
                                        \p
                                        \revert-noteheads

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 31]
                                            e4
                                            \fff

                                            eqs4

                                            e4

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 32]
                                        a,2

                                        aqs,4
                                        ~

                                        aqs,4

                                        as,4
                                        ~

                                        as,4

                                        aqs,4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 33]
                                        <b, ef>2

                                        <bf, e>2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 34]
                                        d2.
                                        ~

                                        d2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 35]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <b, ef>8.
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <bf, e>16
                                        ]
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <bf, e>8
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <b, ef>8
                                        ]
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <b, ef>16
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <bf, e>8.
                                        ]

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <b, ef>8.
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <bf, e>16
                                        ]
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <bf, e>8
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <b, ef>8
                                        ]
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <b, ef>16
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        <bf, e>8.
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 36]
                                        a,4
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        a,8
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        aqs,8
                                        ]
                                        ~

                                        aqs,4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 37]
                                        e4

                                        eqf4

                                        e4

                                        eqs4

                                        e4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 38]
                                        a,4

                                        aqs,4

                                        a,4

                                        aqs,4

                                        as,4

                                        aqs,4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 39]
                                        <b, ef>4

                                        <bf, e>4

                                        <b, ef>4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [cello voice measure 40]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            d8
                                            [

                                            dqs8

                                            d8

                                            ds8

                                            d8

                                            dqs8

                                            \revert VanishingStaff.Stem.stemlet-length
                                            d8
                                            ]

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 41]
                                        <b, ef>4

                                        <bf, e>4

                                        <b, ef>4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 42]
                                        a,4

                                        aqf,4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [cello voice measure 43]
                                        e4

                                        eqf4

                                        e4

                                        eqs4

                                        e4

                                        e4

                                        eqf4

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
                                        \stopStaff
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 2]
                                        r1

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 3]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 4]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 5]
                                        \startStaff
                                        \clef "bass"
                                        <c, a,>4

                                        ef'4

                                        <c, a,>4

                                        ef'4

                                        <c, a,>4
                                        \stopStaff

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 6]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 7]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 8]
                                        r1

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 6/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [temporary voice measure 9]
                                            \startStaff
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <c, a,>16
                                            [

                                            ef'16

                                            <c, a,>8.

                                            r16

                                            ef'16

                                            <c, a,>16

                                            ef'8

                                            <c, a,>16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            ef'8.
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [temporary voice measure 10]
                                            <c, a,>8

                                            ef'4

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <c, a,>8
                                            [

                                            ef'8

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <c, a,>8
                                            ]
                                            \stopStaff

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 11]
                                        r1..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 12]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 13]
                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 14]
                                        r1..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 15]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 16]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 17]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 18]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 19]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 20]
                                        r1

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 21]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 22]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 23]
                                        r1

                                        r4

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 24]
                                        r1.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 25]
                                        r1..

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 26]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 27]
                                        r2.

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 28]
                                        r2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 29]
                                        r1

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 30]
                                        r2.

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [temporary voice measure 31]
                                            \startStaff
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            <c, gs,>8
                                            [

                                            d'8

                                            <c, gs,>8

                                            d'8

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <c, gs,>8
                                            ]

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 7/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [temporary voice measure 32]
                                            c,4.

                                            <fs ef'>4

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            c,8
                                            [

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <fs ef'>8
                                            ]

                                            c,4

                                            <fs ef'>4.

                                            c,8

                                            <fs ef'>4

                                            c,4

                                            <fs ef'>8

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [temporary voice measure 33]
                                            f,4

                                            a4

                                            f,4

                                            a4

                                            f,4

                                            a4

                                        }

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/9
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [temporary voice measure 34]
                                            <e, g,>8

                                            b4

                                            <e, g,>8

                                            b4

                                            <e, g,>4

                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            b8
                                            [

                                            \revert VanishingStaff.Stem.stemlet-length
                                            <e, g,>8
                                            ]

                                            b4

                                            <e, g,>4.

                                            b4

                                            <e, g,>8

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 35]
                                        f,2

                                        a4
                                        ~

                                        a4

                                        f,2

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 36]
                                        c,4

                                        <fs ef'>4

                                        c,4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 5/6
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [temporary voice measure 37]
                                            <c, gs,>2.

                                            d'4

                                            <c, gs,>4

                                            d'4

                                        }

                                        \times 4/5
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [temporary voice measure 38]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            c,8
                                            [

                                            <fs ef'>8

                                            \revert VanishingStaff.Stem.stemlet-length
                                            c,8
                                            ]

                                            <fs ef'>4.

                                            c,8

                                            <fs ef'>4

                                            c,4

                                            <fs ef'>8

                                            c,4.

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 39]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        f,8
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        a8
                                        ]
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        a8
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        f,8
                                        ]
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        f,8
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        a8
                                        ]

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 40]
                                        <e, g,>4

                                        b4

                                        <e, g,>4

                                        b4

                                        \tweak text #tuplet-number::calc-fraction-text
                                        \times 8/7
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [temporary voice measure 41]
                                            \override VanishingStaff.Stem.stemlet-length = 0.75
                                            f,16.
                                            [

                                            a16

                                            f,16

                                            a16

                                            f,16

                                            a16

                                            f,16

                                            a16

                                            f,16

                                            \revert VanishingStaff.Stem.stemlet-length
                                            a16
                                            ]

                                        }

                                        \times 2/3
                                        {

                                              %! COMMENT_MEASURE_NUMBERS
                                              %! evans.SegmentMaker.comment_measure_numbers()
                                            % [temporary voice measure 42]
                                            c,4

                                            <fs ef'>4

                                            c,4

                                        }

                                          %! COMMENT_MEASURE_NUMBERS
                                          %! evans.SegmentMaker.comment_measure_numbers()
                                        % [temporary voice measure 43]
                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <c, gs,>8
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        d'4

                                        <c, gs,>4
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <c, gs,>8
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d'8
                                        ]
                                        ~

                                        d'4

                                        <c, gs,>4
                                        ~

                                        \override VanishingStaff.Stem.stemlet-length = 0.75
                                        <c, gs,>8
                                        [

                                        \revert VanishingStaff.Stem.stemlet-length
                                        d'8
                                        ]
                                        \stopStaff

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
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 4]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 5]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 7]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 10]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 11]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 12]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 13]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 14]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 15]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 16]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 17]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 18]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 19]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 20]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 21]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 22]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 23]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 24]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 25]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 26]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 27]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 28]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 29]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 30]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 31]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 32]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 34]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 35]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 36]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 37]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 38]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 39]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 40]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 41]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 42]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [back voice measure 43]
                                r1..

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
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 3]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 4]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 5]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 6]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 7]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 8]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 9]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 10]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 11]
                                \all-color-music #(x11-color "firebrick")
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

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'8
                                [
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'8
                                )
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                [
                                (

                                f'16
                                )

                                b16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                g16
                                )
                                ]

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g16
                                    [
                                    (

                                    b16
                                    )

                                    d'16
                                    (

                                    b16

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    g16
                                    )
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g16
                                [
                                (

                                b16

                                d'16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                ]
                                (

                                b4

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g16
                                )
                                [

                                f'16
                                (

                                d'16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 12]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g16
                                    )
                                    [

                                    g16
                                    (

                                    b16

                                    d'16

                                    f'16
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
                                g16
                                ]
                                (

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                )
                                [

                                f'16
                                (

                                d'16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'16
                                ]
                                (

                                \times 2/3
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    d'16
                                    )
                                    [

                                    g16
                                    (

                                    b16

                                    d'16
                                    )

                                    d'16
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b16
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 13]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g16
                                )
                                [

                                f'16
                                (

                                d'16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g16
                                )
                                [

                                f'16
                                (

                                d'16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 14]
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

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b8
                                [
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'8
                                )
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                [
                                (

                                b16
                                )

                                b16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                g16
                                )
                                ]

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b16
                                    [
                                    (

                                    g16
                                    )

                                    g16
                                    (

                                    b16

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'16
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'16
                                )
                                [

                                b16
                                (

                                d'16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'16
                                )
                                ]

                                f'4
                                (

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 15]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                [

                                b16

                                g16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                g16
                                ]
                                (

                                \times 2/3
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b16
                                    [

                                    d'16

                                    f'16
                                    )

                                    b16
                                    (

                                    d'16
                                    )

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'16
                                    ]
                                    (

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'16
                                )
                                [

                                g16
                                (

                                b16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'16
                                )
                                [

                                g16
                                (

                                b16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]
                                (

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 16]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    d'16
                                    [

                                    f'16
                                    )

                                    g16
                                    (

                                    b16

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

                                g16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                )
                                [

                                g16
                                (

                                b16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                )
                                ]

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 17]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    (

                                    d'16

                                    b16
                                    )

                                    g16
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b16
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                )
                                [

                                b16
                                (

                                d'16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'16
                                )
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g8
                                [
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b8
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                )
                                [

                                g16
                                (

                                b16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                )
                                ]

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    (

                                    d'16

                                    b16

                                    g16
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

                                f'16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                ]
                                (

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 18]
                                f'4
                                )

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g16
                                [
                                (

                                b16
                                )

                                b16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                )
                                ]

                                \times 2/3
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    d'16
                                    [
                                    (

                                    f'16
                                    )

                                    d'16
                                    (

                                    b16
                                    )

                                    f'16
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'16
                                    ]

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 19]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                )
                                [

                                f'16
                                (

                                d'16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
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

                                \times 2/3
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    (

                                    d'16

                                    b16

                                    g16
                                    )

                                    g16
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b16
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                [

                                f'16
                                )

                                b16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                g16
                                )
                                ]

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 20]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                [
                                (

                                d'16
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
                                    b16
                                    [
                                    (

                                    d'16

                                    f'16
                                    )

                                    f'16
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'16
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                )
                                [

                                b16
                                (

                                d'16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'16
                                )
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'8
                                [
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'8
                                ]

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

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 21]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g16
                                    [
                                    (

                                    b16

                                    d'16

                                    f'16
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

                                f'16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'16
                                ]
                                (

                                d'4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 22]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                [

                                g16
                                )

                                b16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                )
                                ]

                                \times 2/3
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b16
                                    [
                                    (

                                    g16
                                    )

                                    b16
                                    (

                                    d'16
                                    )

                                    f'16
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'16
                                    )
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                [
                                (

                                d'16

                                f'16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]
                                (

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                [

                                f'16
                                )

                                g16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 23]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    d'16
                                    )
                                    [

                                    b16
                                    (

                                    d'16

                                    f'16
                                    )

                                    b16
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'16
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'16
                                )
                                [

                                b16
                                (

                                d'16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'16
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

                                \times 4/5
                                {

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
                                )
                                [

                                g16
                                (

                                b16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                ]

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 24]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'8
                                )
                                [

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'8
                                ]
                                (

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
                                    b16
                                    [

                                    g16
                                    )

                                    g16
                                    (

                                    b16

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'16
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'16
                                )
                                [

                                g16
                                (

                                b16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                ]

                                f'4
                                )

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

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 25]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g16
                                    [
                                    (

                                    b16
                                    )

                                    d'16
                                    (

                                    f'16
                                    )

                                    d'16
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b16
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                g16
                                )
                                [

                                d'16
                                (

                                b16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                g16
                                )
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                [
                                (

                                d'16

                                f'16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                ]
                                (

                                \times 2/3
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b16
                                    [

                                    g16
                                    )

                                    d'16
                                    (

                                    b16

                                    g16
                                    )

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'16
                                    ]
                                    (

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                [

                                g16
                                )

                                g16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                [

                                f'16
                                )

                                f'16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                ]

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b16
                                    [

                                    g16
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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 26]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                )
                                [

                                b16
                                (

                                d'16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]
                                (

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'8
                                )
                                [

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'8
                                ]
                                (

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                )
                                [

                                f'16
                                (

                                d'16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                b16
                                ]

                                \times 4/5
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    g16
                                    )
                                    [

                                    f'16
                                    (

                                    d'16

                                    b16
                                    )

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    g16
                                    ]
                                    (

                                }

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 27]
                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                [

                                d'16

                                f'16
                                )

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                f'16
                                ]
                                (

                                d'4
                                )

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

                                \times 2/3
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 28]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    (

                                    d'16

                                    b16

                                    g16
                                    )

                                    f'16
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    d'16
                                    )
                                    ]

                                }

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

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 29]
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

                                \times 2/3
                                {

                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    f'16
                                    [
                                    (

                                    d'16

                                    b16

                                    g16
                                    )

                                    g16
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b16
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                [

                                f'16
                                )

                                b16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                g16
                                )
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                b16
                                [
                                (

                                d'16
                                )

                                b16
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                )
                                ]

                                \times 4/5
                                {

                                      %! COMMENT_MEASURE_NUMBERS
                                      %! evans.SegmentMaker.comment_measure_numbers()
                                    % [change voice measure 30]
                                    \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                    b16
                                    [
                                    (

                                    d'16

                                    f'16
                                    )

                                    g16
                                    (

                                    \revert VanishingChangeStaff.Stem.stemlet-length
                                    b16
                                    ]

                                }

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                d'16
                                )
                                [

                                g16
                                (

                                b16

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'16
                                )
                                ]

                                \override VanishingChangeStaff.Stem.stemlet-length = 0.75
                                f'8
                                [
                                (

                                \revert VanishingChangeStaff.Stem.stemlet-length
                                d'8
                                )
                                ]

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 31]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 32]
                                r1..

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 33]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 34]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 35]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 36]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 37]
                                r1

                                r4

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 38]
                                r1.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 39]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 40]
                                r1

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 41]
                                r2.

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 42]
                                r2

                                  %! COMMENT_MEASURE_NUMBERS
                                  %! evans.SegmentMaker.comment_measure_numbers()
                                % [change voice measure 43]
                                r1..

                            }

                        }

                    }

                >>

            }

        >>
    >>
  %! abjad.LilyPondFile._get_format_pieces()
}