\version "2.25.16" %2.23.6
\language "english"
#(set-default-paper-size "11x17landscape")
#(set-global-staff-size 19) % 20 is standard part size

%{ \include "/Users/gregoryevans/ekmelily/ly/ekmel-24.ily" % just trying this out %}
%{ \ekmelicStyle evans-alt-one % just trying this out %}

\include "baca-spanners.ily"
\include "../../lib.ily"
\include "evans.ily"
\include "evans-accidentals-markups.ily"
\include "evans-chart-markups.ily"
\include "evans-spanners.ily"


afterGraceFraction = #(cons 15 16)

string-contact-clef-markup = \markup {
        \rotate #180
      \general-align #Y #-0.2
      \epsfile #Y #10 #"gfx/behind-bridge-clef.eps"
  }

swap-clefs = #(lambda (grob)
   (let* ((sz (ly:grob-property grob 'font-size 0))
          (mlt (magstep sz))
          (glyph (ly:grob-property grob 'glyph-name)))
           (cond
               ((equal? glyph "clefs.varpercussion")
                  (ly:stencil-scale (grob-interpret-markup grob string-contact-clef-markup) (* 1 mlt) (* 1 mlt))
                  )
               ((equal? glyph "clefs.varpercussion_change")
               (ly:stencil-scale (grob-interpret-markup grob string-contact-clef-markup) (* .7 mlt) (* .7 mlt))
                )
            (else (ly:clef::print grob)))))


%%%%%
#(define (lists-map function ls)
  "Apply @var{function} to @var{ls} and all of it sublists.
First it recurses over the children, then the function is applied to
@var{ls}."
    (if (list? ls)
        (set! ls (map (lambda (y) (lists-map function y)) ls))
        ls)
    (function ls))

#(define (tuplet-bracket::line-parts grob stencil)
  "Examine @code{TupletBracket.stencil), accumulate lines used to draw
@code{TupletBracket}, divided into wings and horizontal lines."
  (if (ly:stencil-empty? stencil)
      '()
      (let* ((lines '())
             (edge-height (ly:grob-property grob 'edge-height))
             (stil-expr (ly:stencil-expr stencil))
             (staff-space (ly:staff-symbol-staff-space grob)))

        ;; accumulate the bracket-drawing lines in `lines`
        (when (pair? stil-expr)
          (lists-map
            (lambda (l)
              (when (and (list? l)
                         (eq? (list-ref l 0) 'draw-line)
                         ;; Broken TupletBracket may have collapsed wings,
                         ;; don't catch them. Deal with them when this procedure
                         ;; is called.
                         (not (zero?
                                (- (- (list-ref l 2) (list-ref l 4))
                                   (- (list-ref l 3) (list-ref l 5))))))
                (set! lines (cons l lines)))
              l)
            stil-expr))

        (call-with-values
          (lambda ()
            (partition
              (lambda (l)
                (let ((height (- (list-ref l 3) (list-ref l 5))))
                  ;; TODO looking at height is probably not safe enough.
                  ;; Avoid rounding issues
                  (or
                     (> 0.0000001
                        (abs (- (abs height)
                                (* staff-space (abs (car edge-height))))))
                     (> 0.0000001
                        (abs (- (abs height)
                                (* staff-space (abs (cdr edge-height)))))))))
              lines))
          (lambda (x y)
            (list (cons 'wings x) (cons 'horizontals y)))))))

#(define (tuplet-bracket::wing-thickness wing-thickness)
  "Examine @code{TupletBracket.stencil), replace the wings by a polygon
mimicking enlarged thickness."
 (grob-transformer 'stencil
  (lambda (grob orig)
   (let* ((parts (tuplet-bracket::line-parts grob orig))
          (raw-wings (assoc-get 'wings parts)))
     (if (not (pair? raw-wings))
         orig
         (let* (
          (horizontals (assoc-get 'horizontals parts))
          (slopes
           (map
            (lambda (l)
              (/ (- (list-ref l 5) (list-ref l 3))
                 (- (list-ref l 4) (list-ref l 2))))
            horizontals))
          (wings
           (cond ((middle-broken-spanner? grob) '(#f #f))
                 ((first-broken-spanner? grob)
                   (append raw-wings (list #f)))
                 ((end-broken-spanner? grob)
                   (cons #f raw-wings))
                 (else raw-wings)))
          (grob-thick
           (ly:grob-property grob 'thickness))
          (staff-line-thick
           (ly:staff-symbol-line-thickness (ly:grob-object grob 'staff-symbol)))
          (thick (* grob-thick staff-line-thick))
          (edge-height (ly:grob-property grob 'edge-height))
          (shorten-pair (ly:grob-property grob 'shorten-pair '(0 . 0)))
          (dir (ly:grob-property grob 'direction))
          (staff-space (ly:staff-symbol-staff-space grob)))

    (ly:make-stencil
     (lists-map
      (lambda (l)
       (cond
        ((equal? l (car wings))
          (let* ((start-x (list-ref l 2))
                 (start-y (+ (list-ref l 3) (* wing-thickness (car slopes))))
                 (shorten-pair (car shorten-pair))
                 (edge-height (* staff-space (car edge-height))))
            `(polygon
              ,(list
                start-x (list-ref l 3)
                (+ start-x wing-thickness) start-y
                (+ start-x wing-thickness) (+ start-y (* -1 dir edge-height))
                start-x (+ (list-ref l 3) (* dir -1 edge-height)))
              ;; take `thick` as blot-diameter to match rounded line ends
              ,thick
              #t)))
        ((equal? l (cadr wings))
          (let* ((end-x (list-ref l 2))
                 (start-x (- end-x wing-thickness))
                 (start-y (* start-x (cadr slopes)))
                 (end-y (list-ref l 5))
                 (edge-height (* staff-space (cdr edge-height))))
            `(polygon
               ,(list
                 end-x end-y
                 end-x (- end-y (* dir -1 edge-height))
                 start-x start-y
                 start-x (+ start-y (* dir -1 edge-height)))
               ,thick
               #t)))
        (else l)))
      (ly:stencil-expr orig))
     (ly:stencil-extent orig X)
     (ly:stencil-extent orig Y))))))))
%%%%%

dashedStaffSymbolLines =
#(define-music-function (parser location dash-space bool-list)
 ((number-pair? '(0.5 . 0.5)) list?)
#{
 \override Staff.StaffSymbol.after-line-breaking =
   #(lambda (grob)
     (let* ((staff-stencil (ly:grob-property grob 'stencil))
            (staff-line-positions
              (if (equal? (ly:grob-property grob 'line-positions) '() )
                '(-4 -2 0 2 4)
                (ly:grob-property grob 'line-positions)))
            (staff-width
              (interval-length
                (ly:stencil-extent staff-stencil X)))
            (staff-space (ly:staff-symbol-staff-space grob))
            (staff-line-thickness (ly:staff-symbol-line-thickness grob))
            (dash-width (car dash-space))
            (space-width (cdr dash-space))
            (sample-path `((moveto 0 0)
                           (lineto ,dash-width 0)
                           ))
            (dash-stencil
              (grob-interpret-markup
                grob
                (markup
                  #:path staff-line-thickness sample-path)))
           (dash-space-width (+ dash-width space-width))
            (count-dashes
              (inexact->exact
                (round
                  (/ staff-width
                     (- dash-space-width
                        staff-line-thickness)))))
            (dashed-stil
                (ly:stencil-aligned-to
                  (apply ly:stencil-add
                    (map
                      (lambda (x)
                        (ly:stencil-translate-axis
                          dash-stencil
                          (* (- dash-space-width staff-line-thickness) x)
                          X))
                      (iota count-dashes)))
                  Y
                  CENTER))
            (stil-x-length
              (interval-length
                (ly:stencil-extent dashed-stil  X)))
            (line-stil
              (make-line-stencil staff-line-thickness 0 0 staff-width 0))
            (corr-factor
              (/ staff-width (- stil-x-length staff-line-thickness)))
            (new-stil
              (apply
                ly:stencil-add
                  (map
                    (lambda (x y)
                      (ly:stencil-translate
                          (if (eq? y #f)
                            line-stil
                            (ly:stencil-scale
                              dashed-stil
                              corr-factor 1))
                          (cons (/ staff-line-thickness 2)
                                (* (/ x 2) staff-space))))
                    staff-line-positions bool-list))))

      (if (= (length bool-list)(length staff-line-positions))
        (ly:grob-set-property! grob 'stencil new-stil)
        (ly:warning
          "length of dashed line bool-list doesn't match the line-positions - ignoring"))))
#})

\header {
	tagline = ##f
	breakbefore = ##t
	%{ dedication = \markup \override #'(font-name . "Bell MT") \fontsize #5.4 \center-column { \line{to Steph Tamas}} %}
	title =  \markup \center-column {
            \override #'(font-name . "Bell MT")
            \fontsize #-3
			\line {
				t o \hspace #1.75 L i a m \hspace #1.75 B a t t l e \hspace #1.75
			}
            \override #'(font-name . "Bell MT")
            \fontsize #14
            \line {
                \vspace #4.5
                \concat {
                C
                \hspace #3
                A
                \hspace #3
                I
                \hspace #3
                R
                \hspace #3
                N
                }
            }
            \override #'(font-name . "Bell MT")
            \fontsize #-3
			\line{
                \vspace #1.3
                n y c t i v o e \hspace #1.75 i n t e r l u d e \hspace #1.75
			}
            \override #'(font-name . "Bell MT Italic")
            \fontsize #-3
            \line {
                f o r \hspace #1.75
                v i o l o n c e l l o
            }
    }
	composer = \markup \override #'(font-name . "Bell MT") \fontsize #1.5 {"Gregory Rowland Evans (*1995)"}
	tagline = \markup { "" }
}

\layout {
	\accidentalStyle neo-modern % was forget
	%{ accidentals are printed like with modern,
	but they are printed again if the same note appears later in the same measure
	– except if the note is immediately repeated. %}
	indent = 0
    ragged-bottom = ##t
    ragged-last = ##t
    ragged-right = ##t
	\context {
		\name LayoutContext
		\type Engraver_group
		%{ \consists #Measure_attached_spanner_engraver %}
		%{ \consists Text_engraver
		\consists Text_spanner_engraver %}
	}
	\context {
        \name TimeSignatureContext
        \type Engraver_group
        \consists Axis_group_engraver
		\consists Bar_number_engraver
        \consists Caesura_engraver
        %{ \consists Time_signature_engraver %}
		\consists Mark_engraver % for section labels. Any errors?
		%{ \consists Metronome_mark_engraver %}
        \consists #Measure_attached_spanner_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
		\accepts LayoutContext

		\override MetronomeMark.stencil = ##f
		\override RehearsalMark.X-extent = #'(0 . 0)
		\override RehearsalMark.X-offset = 6
		\override RehearsalMark.Y-offset = -2.5
		\override RehearsalMark.break-align-symbols = #'(time-signature)
		\override RehearsalMark.break-visibility = #end-of-line-invisible
		\override RehearsalMark.font-name = "Bell MT"
		\override RehearsalMark.font-size = 3
		\override RehearsalMark.outside-staff-priority = 500
		\override RehearsalMark.self-alignment-X = #center
		\override TextScript.font-size = 6
        \override TextSpanner.font-size = 6

		\override TimeSignature.X-extent = ##f
        \override TimeSignature.break-align-symbol = #'left-edge
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 5 % was 8 for Bell MT
        \override TimeSignature.space-alist.clef = #'(extra-space . 0.5)
        \override TimeSignature.style = #'numbered
		\override TimeSignature.whiteout-style = #'outline
		\override TimeSignature.whiteout = ##t

		%{ \consists #Measure_attached_spanner_engraver %}
		\override MeasureCounter.font-encoding = #'latin1
		\override MeasureCounter.font-size = 4
		\override MeasureCounter.outside-staff-padding = 0
		\override MeasureCounter.outside-staff-horizontal-padding = #0

    }
	\context {
		\Score
		\remove Metronome_mark_engraver
		\remove Mark_engraver
		%{ \remove Volta_engraver %}
		%{ \remove Bar_number_engraver %}
		%{ \consists Measure_counter_engraver %}
		\accepts TimeSignatureContext
		%{ \override Accidental.X-extent = ##f % experimental %}
		\override Accidental.X-extent = #'(0 . 0.5)
		\override AccidentalSuggestion.avoid-slur = #'outside % just trying this out
		%{ \override BarLine.bar-extent = #'(-4 . 4) %}
		\override BarLine.hair-thickness = 0.5
		\override BarLine.X-extent = #'(0 . 0)
		\override BarLine.thick-thickness = #8

		\override BarNumber.Y-extent = ##f
		\override BarNumber.Y-offset = 0
		\override BarNumber.extra-offset = #'(-4 . -4)
        \override BarNumber.font-size = 1
		\override BarNumber.padding = 4

		\override Beam.breakable = ##t
		\override Beam.damping = #+inf.0 % was 99
		\override Beam.concaveness = #10000 % just trying this out
		\override Beam.beam-thickness = #0.8 % just trying this out
		\override Beam.length-fraction = #1.5 % just trying this out
		%{ \override Clef.whiteout-style = #'outline
		\override Clef.whiteout = 1 %}
		\override DynamicText.font-size = #-2
		\override DynamicLineSpanner.staff-padding = 7 %was 4.5
		\override DurationLine.breakable = ##t
		\override DurationLine.thickness = 2.5
		\override Glissando.breakable = ##t
		\override Glissando.thickness = #3 %was 1.8
		\override Hairpin.to-barline = ##f
		%{ \override Staff.thickness = #0.5 %}
		\override MetronomeMark.font-size = 3
		\override NoteCollision.merge-differently-dotted = ##t % experimental
		\override NoteCollision.merge-differently-headed = ##t % experimental for piano
		\override NoteColumn.ignore-collision = ##t % can cause bad merging!
		% consider merging rests?
		\shape #'((-2 . 0) (-1 . 0) (-0.5 . 0) (0 . 0)) RepeatTie
		\override RepeatTie.X-extent = ##f
		\override PaperColumn.used = ##t % just trying this out
		%{ \override SpacingSpanner.spacing-increment = 1.25 %}
		%{ \override SpacingSpanner.strict-grace-spacing = ##t % trevor %}
		%{ \override SpacingSpanner.strict-note-spacing = ##t % trevor %}
		\override SpacingSpanner.uniform-stretching = ##t % trevor
		\override GraceSpacing.spacing-increment = #1.5 %?? does this collaborate with afterGraceFraction?
		\override GraceSpacing.shortest-duration-space = #1.6
		\override Stem.stemlet-length = #1.15
		\override StemTremolo.beam-width = 1.5
        \override StemTremolo.flag-count = 4
        \override StemTremolo.slope = 0.5
		\override TextSpanner.breakable = ##t
		\override Tie.stencil = #flare-tie % experimental
		\override Tie.height-limit = 6 % experimental
		\override Tie.thickness = 1.5 % experimental

		\override TrillSpanner.bound-details.right.padding = #2 % experimental

		\override TupletBracket.breakable = ##t
        \override TupletBracket.full-length-to-extent = ##t
        \override TupletNumber.font-size = 1 % was 0.5
		%{ \override TupletBracket.padding = #1.5 % experimental %} % remove when using flat bracket function
		%{ \override TupletBracket.staff-padding = #3 % experimental %} % remove when using flat bracket function
        %{ \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods % experimental %}
		\override TupletBracket.bracket-visibility = ##t
		%{ \override TupletBracket.direction = #down %} % try removing?
		\override TupletNumber.text = #tuplet-number::calc-fraction-text
        %{ \override TupletBracket.stencil = #(tuplet-bracket::wing-thickness 1) %}
		\override TupletBracket.stencil = % just trying this out
		  #(lambda (grob)
			 (let* ((pos (ly:grob-property grob 'positions))
					(dir (ly:grob-property grob 'direction))
					(new-pos (if (= dir 1)
								 (max (car pos)(cdr pos))
								 (min (car pos)(cdr pos)))))
			   (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
			   (ly:tuplet-bracket::print grob)))
		autoBeaming = ##f
		pedalSustainStyle = #'mixed
		barNumberFormatter = #oval-bar-numbers
		tupletFullLength = ##t
        %{ caesuraType = #'((breath . spacer) (scripts . (outsidecomma)))
        caesuraTypeTransform = #(at-bar-line-substitute-caesura-type '((scripts . (fermata)))) %}
		%{ tupletFullLengthNote = ##t % makes grace notes stand out %}
		%{ subdivideBeams = ##t % just trying this out %}

		%{ \override VoltaBracketSpanner.Y-offset = #6 %? %}
		%{ \override MeasureCounter.Y-offset = #6 %? %}

		%{ \override Clef.stencil = \old-clefs %}
        \override Accidental.stencil = \alt-accidentals
        \override TupletBracket.edge-text = #(cons
            (markup #:arrow-head X LEFT #f)
            (markup #:arrow-head X RIGHT #f)
        )

	}
	\context {
		\StaffGroup
		\accepts RemoveableStaffGroup
        \accepts InterruptiveStaffGroup
        \accepts VanishingStaff
		\accepts VanishingVoiceStaff
		\accepts VanishingStringStaff
        \accepts VanishingBattutoStaff
        \accepts VanishingChangeStaff
        \accepts VanishingBowStaff
        \accepts VanishingRhythmicStaff
	}
	\context {
		\Voice
		\remove Forbid_line_break_engraver
		\consists "Horizontal_bracket_engraver"
		\override HorizontalBracket.direction = #UP
		\override HorizontalBracket.staff-padding = 7.5
		\override HorizontalBracket.bracket-flare = #'(0 . 0)
		%{ \consists Duration_line_engraver %}
		\override Accidental.font-size = 1
		%{ #(define afterGraceFraction (cons 1 4)) %}
		%{ \tupletSpan 4 %}
	}
	\context {
		\Staff
		%{ \consists Volta_engraver %}
		\consists Duration_line_engraver
		\numericTimeSignature
		%{ \remove Time_signature_engraver %}
		\remove Separating_line_group_engraver % just trying this out
		fontSize = #-1
		explicitClefVisibility = #end-of-line-invisible
        \override BarLine.bar-extent = #'(-2 . 2)
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.whiteout-style = #'outline
		\override TimeSignature.whiteout = ##t
	}
	\context {
		\Staff
		\name VanishingStaff
		\type Engraver_group
		\alias Staff
		%{ \remove Time_signature_engraver %}
		\RemoveAllEmptyStaves
        \consists Duration_line_engraver
		\numericTimeSignature
		\remove Separating_line_group_engraver % just trying this out
		fontSize = #-1
		explicitClefVisibility = #end-of-line-invisible
        \override BarLine.bar-extent = #'(-2 . 2)
        \override TimeSignature.break-visibility = #end-of-line-invisible
	}
    \context {
		\Staff
		\name VanishingChangeStaff
		\type Engraver_group
		\alias Staff
		%{ \remove Time_signature_engraver %}
		\remove Metronome_mark_engraver
        \remove Bar_number_engraver
		\remove Mark_engraver
		fontSize = #-1
        %{ \override Stem.direction = #down %}
        \override StaffSymbol.line-positions = #'(-3 -1 1 3)
		\RemoveAllEmptyStaves
		\clef alto
		\override Clef.stencil = ##f
		\override Accidental.stencil = ##f
		\override AccidentalCautionary.stencil = ##f
        \override BarLine.bar-extent = #'(-1.5 . 1.5)
	}
	\context {
		\Staff
		\name VanishingBattutoStaff
		\type Engraver_group
		\alias Staff
		\remove Time_signature_engraver
		\remove Metronome_mark_engraver
        \remove Bar_number_engraver
		\remove Mark_engraver
		fontSize = #-1
        \override Glissando.bound-details.left.padding = #0.5
        \override Glissando.bound-details.right.padding = #0.5
        \override Glissando.thickness = #4
        \override StaffSymbol.line-positions = #'(-8.2 -8 8 8.2)
		\RemoveAllEmptyStaves
        \override LedgerLineSpanner.transparent = ##t
        \override Clef.stencil = \swap-clefs
        \clef varpercussion
		\override Accidental.stencil = ##f
		\override AccidentalCautionary.stencil = ##f
        \override BarLine.bar-extent = #'(-4 . 4)

	}
    \context {
		\Staff
		\name VanishingStringStaff
		\type Engraver_group
		\alias Staff
		\remove Time_signature_engraver
		\remove Metronome_mark_engraver
        \remove Bar_number_engraver
		\remove Mark_engraver
		fontSize = #-1
        \override Glissando.bound-details.left.padding = #0.5
        \override Glissando.bound-details.right.padding = #0.5
        \override Glissando.thickness = #4
        %{ \override Stem.direction = #down %}
        \override StaffSymbol.line-positions = #'(-8.2 -8 -6 -4 -2 -0.2 0 0.2 2 4 6 8 8.2)
		\dashedStaffSymbolLines #'(#t #t #t #t #t #t #f #f #f #f #f #f #f)
		\RemoveAllEmptyStaves
		\clef alto
		\override Clef.stencil = ##f
		\override Accidental.stencil = ##f
		\override AccidentalCautionary.stencil = ##f
        \override Rest.stencil = ##f
        \override BarLine.bar-extent = #'(-4 . 4)
        % just trying these out
        \override Stem.stencil = ##f
        \override Beam.stencil = ##f
        \override Dots.stencil = ##f
        \override Flag.stencil = ##f
        \override NoteHead.transparent = ##t

	}
    \context {
		\Staff
		\name VanishingBowStaff
		\type Engraver_group
		\alias Staff
		\remove Time_signature_engraver
		\remove Metronome_mark_engraver
        \remove Bar_number_engraver
		\remove Mark_engraver
		fontSize = #-1
        %{ \override Stem.direction = #down %}
        \override StaffSymbol.line-positions = #'(0)
		\RemoveAllEmptyStaves
		\clef alto
		\override Clef.stencil = ##f
		\override Accidental.stencil = ##f
		\override AccidentalCautionary.stencil = ##f
        \override Glissando.bound-details.left.padding = #0.5
        \override Glissando.bound-details.right.padding = #0.5
        \override Glissando.thickness = #3
        \override BarLine.bar-extent = #'(-1 . 1)
	}
    \context {
		\RhythmicStaff
		\name VanishingRhythmicStaff
		\type Engraver_group
		\alias RhythmicStaff
		\remove Time_signature_engraver
		\remove Metronome_mark_engraver
        \remove Bar_number_engraver
		\remove Mark_engraver
		fontSize = #-1
        %{ \override Stem.direction = #down %}
        %{ \override StaffSymbol.line-positions = #'(0) %}
		\RemoveAllEmptyStaves
		\clef percussion
		\override Clef.stencil = ##f
		\override Accidental.stencil = ##f
		\override AccidentalCautionary.stencil = ##f
        \override Glissando.bound-details.left.padding = #0.5
        \override Glissando.bound-details.right.padding = #0.5
        \override Glissando.thickness = #3
        \override BarLine.bar-extent = #'(-1 . 1)
	}

	% make context for interruption and voice stuff. grandstaff?
	\context {
		\GrandStaff
		\name RemoveableStaffGroup
		\type Engraver_group
		\alias GrandStaff
        \accepts VanishingStaff
		\accepts VanishingVoiceStaff
		\accepts VanishingStringStaff
        \accepts VanishingChangeStaff
        \accepts VanishingBowStaff
        \accepts VanishingRhythmicStaff

	}
    \context {
		\GrandStaff
		\name InterruptiveStaffGroup
		\type Engraver_group
		\alias GrandStaff
        \accepts VanishingStaff
        \consists Grob_pq_engraver
        \consists #Interrupt_heads_engraver
        \consists #Explicit_interrupt_heads_engraver
        \consists #Follow_lines_engraver
        \consists #Switch_heads_engraver
        \override VoiceFollower.layer = -20
	}

}

\paper {
	system-separator-markup = \markup { \slashSeparator }

    left-margin = 20\mm
    right-margin = 15\mm

	oddHeaderMarkup = \markup ""
	evenHeaderMarkup = \markup ""
	oddFooterMarkup = \markup
        \fill-line {
			\override #'(font-name . "Bell MT")
			\concat {
			\fontsize #3
			"cairn"\hspace #1.5 — \hspace #1.5 \fontsize #3 GR \hspace #1 \fontsize #3 Evans
			}
	        \concat {
	            \fontsize #3
	            \fromproperty #'page:page-number-string
		    }
        }

    evenFooterMarkup = \markup
        \fill-line {
            \concat {
                \fontsize #3
                \fromproperty #'page:page-number-string
        	}
			\override #'(font-name . "Bell MT")
			\concat {
			\fontsize #3
        	 "cairn"\hspace #1.5 — \hspace #1.5 \fontsize #3 GR \hspace #1 \fontsize #3 Evans
			}
    	}
	print-first-page-number = ##f
    print-page-number = ##t
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 60)
        (padding . 0)
        (stretchability . 0)
    )
    %{ system-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 30) % space after each system
        (padding . 0)
        (stretchability . 0)
    ) %}
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 18)
        (padding . 0)
        (stretchability . 0)
    )
    %{ top-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 26)
        (padding . 0)
        (stretchability . 0)
    ) %}
    top-margin = 0\mm
	bottom-margin = 5\mm
	right-margin = 10\mm
	left-margin = 20\mm

	% experimental

	%{ #(define fonts
      (set-global-fonts
       #:roman "Bell MT"
       #:factor (/ staff-height pt 20)
      )) %}

}


%{ #(define-public abjad-flared-hairpin
  (elbowed-hairpin '((1.0 . 0.0) (1.45 . 1.0)) - #t)) %}

\pointAndClickOff
