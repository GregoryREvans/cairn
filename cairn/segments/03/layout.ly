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
            \evans-lbsd #10 #'(8 9)
            \evans-new-spacing-section #1 #35
            \evans-system-X-offset #4
            s1 * 7/4
            \noBreak
            \evans-new-spacing-section #1 #35
            s1 * 1
            \noBreak
            \evans-new-spacing-section #1 #35
            s1 * 3/4
            \noBreak
            \evans-new-spacing-section #1 #24
            s1 * 1/2
            \break
            \evans-lbsd #60 #'(8 9)
            \evans-system-X-offset #4
            \evans-new-spacing-section #1 #35
            s1 * 1
            \noBreak
            \evans-new-spacing-section #1 #35
            s1 * 3/4
            \noBreak
            \evans-new-spacing-section #1 #24
            s1 * 1/2
            \break
            \evans-lbsd #10 #'(8 9)
            \evans-system-X-offset #4
            \pageBreak
        }
    }
>>