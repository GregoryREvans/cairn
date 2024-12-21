\context Score = "Score"
\with
{
    currentBarNumber = 1
}
<<
    \context TimeSignatureContext = "Global Context"
    {
        \context LayoutContext = "Layout"
        {
            \autoPageBreaksOff
            \evans-lbsd #10 #'(8 10)
            \evans-new-spacing-section #1 #35
            \evans-system-X-offset #4
            s1 * 5/4
            \noBreak
            \evans-new-spacing-section #1 #35
            s1 * 7/8
            \noBreak
            \evans-new-spacing-section #1 #24
            s1 * 3/2
            \break
            \evans-lbsd #60 #'(8 10)
            \evans-system-X-offset #4
            \evans-new-spacing-section #1 #35
            s1 * 9/8
            \noBreak
            \evans-new-spacing-section #1 #24
            s1 * 11/8
            \break
            \evans-lbsd #110 #'(8 10)
            \evans-system-X-offset #4
            \evans-new-spacing-section #1 #35
            s1 * 5/8
            \noBreak
            \evans-new-spacing-section #1 #35
            s1 * 7/8
            \noBreak
            \evans-new-spacing-section #1 #35
            s1 * 1
            \noBreak
            \evans-new-spacing-section #1 #24
            s1 * 1
            \break
            \evans-lbsd #10 #'(8 10)
            \evans-system-X-offset #4
            \pageBreak
        }
    }
>>