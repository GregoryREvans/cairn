\version "2.25.16"  %2.22.1
\language "english" %! LilyPondFile

\include "abjad.ily"
\include "../score_stylesheet.ily"                                      %! LilyPondFile
%{ \include "abjad.ily" %! LilyPondFile %}

\header { %! LilyPondFile
    tagline = ##f
} %! LilyPondFile

\score{
    <<
        { \include "layout.ly" }
    	{
            \include "01.ly"
            \include "02.ly"
            \include "03.ly"
            \include "04.ly"
            \include "05.ly"
            \include "06.ly"
            \include "07.ly"
            \include "08.ly"
            \include "09.ly"
            \include "10.ly"
            \include "11.ly"
            \include "12.ly"
            \include "13.ly"
            \include "14.ly"
            \include "15.ly"
            \include "16.ly"
            \include "17.ly"
            \include "18.ly"
            \include "19.ly"
            \include "20.ly"
            \include "21.ly"
            \include "22.ly"
            \include "23.ly"
            \include "24.ly"
            \include "25.ly"
            \include "26.ly"
            \include "27.ly"
            \include "28.ly"
            \include "29.ly"
            \include "30.ly"
            \include "31.ly"
            \include "32.ly"
            \include "33.ly"
            \include "34.ly"
            \include "35.ly"
            \include "36.ly"
            \include "37.ly"
            \include "38.ly"
            \include "39.ly"
    	}
    >>
%{ \midi{} %}
}
