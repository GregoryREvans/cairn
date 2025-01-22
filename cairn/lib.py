from fractions import Fraction

import abjad
import baca
import evans
from abjadext import rmakers


def slur_intermittent_accents(group_counts=[2, 1, 3, 1], start_bowing=abjad.DOWN):
    def returned_function(selections, group_counts=group_counts, start_bowing=start_bowing):
        ties = abjad.select.logical_ties(selections, pitched=True)
        partitions = abjad.select.partition_by_counts(ties, group_counts, cyclic=True, overhang=True)
        for i, partition in enumerate(partitions):
            if 1 < len(partition):
                abjad.slur(partition)
            if (i + 1) % 2 == 0:
                if start_bowing is abjad.DOWN:
                    bowing = abjad.Articulation("upbow")
                else:
                    bowing = abjad.Articulation("downbow")
                abjad.attach(bowing, partition[0][0])
                abjad.attach(abjad.Articulation("accent"), partition[0][0])
            else:
                if start_bowing is abjad.DOWN:
                    bowing = abjad.Articulation("downbow")
                else:
                    bowing = abjad.Articulation("upbow")
                abjad.attach(bowing, partition[0][0])
    return returned_function

def reverse_swell(selections, dyns=["sf", "p", "ff"]):
    cyc_dyns = evans.CyclicList(dyns, forget=False)
    runs = abjad.select.runs(selections)
    for run in runs:
        ties = abjad.select.logical_ties(run)
        tie_count = len(ties)
        abjad.attach(abjad.Dynamic(cyc_dyns(r=1)[0]), ties[0][0])
        abjad.attach(abjad.StartHairpin("|>"), ties[0][0])
        abjad.attach(abjad.Dynamic(cyc_dyns(r=1)[0]), ties[tie_count//2][0])
        abjad.attach(abjad.StartHairpin("<"), ties[tie_count//2][0])
        abjad.attach(abjad.Dynamic(cyc_dyns(r=1)[0]), ties[-1][-1])

def center_swell(selections, dyns=["p", "f", "p"]):
    cyc_dyns = evans.CyclicList(dyns, forget=False)
    runs = abjad.select.runs(selections)
    for run in runs:
        ties = abjad.select.logical_ties(run)
        tie_count = len(ties)
        abjad.attach(abjad.Dynamic(cyc_dyns(r=1)[0]), ties[0][0])
        abjad.attach(abjad.StartHairpin("<"), ties[0][0])
        abjad.attach(abjad.Dynamic(cyc_dyns(r=1)[0]), ties[tie_count//2][0])
        abjad.attach(abjad.StartHairpin(">"), ties[tie_count//2][0])
        abjad.attach(abjad.Dynamic(cyc_dyns(r=1)[0]), ties[-1][-1])


def overlay_text(selections, text, color, direction):
    ties = abjad.select.logical_ties(selections)
    relevant_leaves = [tie[0] for tie in ties]
    words = text.split()
    for word, leaf in zip(words, relevant_leaves):
        bundle = abjad.bundle(
            abjad.Markup(rf'\markup "{word}"'),
            abjad.Tweak(rf"\tweak color {color}"),
        )
        abjad.attach(bundle, leaf, direction=direction)

# lily met

met_60 = abjad.MetronomeMark((1, 4), 60)  # for testing

met_117 = abjad.MetronomeMark((1, 4), 117)

met_91 = abjad.MetronomeMark((1, 4), 91)

met_78 = abjad.MetronomeMark((1, 4), 78)

met_65 = abjad.MetronomeMark((1, 4), 65)
met_32 = abjad.MetronomeMark((1, 4), 32)

met_52 = abjad.MetronomeMark((1, 4), 52)

met_97 = abjad.MetronomeMark((1, 4), 97) # for rallantando

# markup met

met_60_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 60)  # for testing

met_52_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 52)

met_65_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 65)
met_32_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 32)

met_78_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 78)

met_91_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 91)

met_117_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 117)

# markup met

mark_60 = abjad.LilyPondLiteral(  # for testing
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_60_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_52 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_52_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_65 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_65_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)
mark_32 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_32_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_78 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_78_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_91 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_91_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

mark_117 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \raise #6 \with-dimensions-from \null",
        # r"  \override #'(font-size . 5.5)", # score
        r"  \override #'(font-size . 3)",  # parts
        r"  \concat {",
        f"      {met_117_mark.string[8:]}",
        r"  }",
        r"}",
    ],
    site="after",
)

##
##
##


def zero_padding_glissando(selections):
    for run in abjad.select.runs(selections):
        leaves = abjad.select.leaves(run)
        for leaf in leaves[1:-1]:
            if abjad.get.has_indicator(leaf, abjad.Tie):
                abjad.detach(abjad.Tie(), leaf)
    abjad.glissando(selections[:], zero_padding=True, allow_repeats=True)
    for run in abjad.select.runs(selections):
        leaves = abjad.select.leaves(run)
        for leaf in leaves[1:-1]:
            if isinstance(leaf, abjad.Note):
                abjad.tweak(leaf.note_head, r"\tweak Accidental.stencil ##f")
                abjad.tweak(leaf.note_head, r"\tweak transparent ##t")
                abjad.tweak(leaf.note_head, r"\tweak X-extent #'(0 . 0)")
            elif isinstance(leaf, abjad.Chord):
                for head in leaf.note_heads:
                    abjad.override(leaf).Accidental.stencil = "##f"
                    abjad.override(leaf).NoteHead.transparent = "##t"
                    abjad.tweak(head, r"\tweak X-extent #'(0 . 0)")
                    abjad.override(leaf).NoteHead.X_extent = "#'(0 . 0)"


def with_sharps(selections):
    abjad.iterpitches.respell_with_sharps(selections)


def toggle_tuplet_prolation(selection):
    tuplet = selection[0]
    tuplet.toggle_prolation()
    tuplet.set_minimum_denominator(4)


start_repeat = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r'\bar ":|."',
    ],
    site="after",
)

center_repeat = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r'\bar ":|.|:"',
    ],
    site="after",
)

start_repeat_red = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #red",
        r"\once \override Score.SpanBar.color = #red",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat_red = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #red",
        r"\once \override Score.SpanBar.color = #red",
        r'\bar ":|."',
    ],
    site="after",
)

start_repeat_blue = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(0.5 . 3)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #blue",
        r"\once \override Score.SpanBar.color = #blue",
        r'\bar ".|:"',
    ],
    site="after",
)

stop_repeat_blue = abjad.LilyPondLiteral(
    [
        r"\once \override Score.BarLine.X-extent = #'(1 . 2)",
        r"\once \override Score.BarLine.thick-thickness = #3",
        r"\once \override Score.BarLine.color = #blue",
        r"\once \override Score.SpanBar.color = #blue",
        r'\bar ":|."',
    ],
    site="after",
)


clef_whitespace = abjad.LilyPondLiteral(
    r"\once \override Staff.Clef.X-extent = ##f \once \override Staff.Clef.extra-offset = #'(-2.25 . 0)",
    site="absolute_before",
)

tremolo_handler = evans.ArticulationHandler(
    ["tremolo"],
)

### Transposition Handlers ###

octave_up = evans.TranspositionHandler([abjad.NumberedInterval(12)])
octave_down = evans.TranspositionHandler([abjad.NumberedInterval(-12)])
two_octaves_up = evans.TranspositionHandler([abjad.NumberedInterval(24)])
two_octaves_down = evans.TranspositionHandler([abjad.NumberedInterval(-24)])
three_octaves_up = evans.TranspositionHandler([abjad.NumberedInterval(36)])
three_octaves_down = evans.TranspositionHandler([abjad.NumberedInterval(-36)])

quarter_up = evans.TranspositionHandler([abjad.NumberedInterval(0.5)])
quarter_down = evans.TranspositionHandler([abjad.NumberedInterval(-0.5)])

half_up = evans.TranspositionHandler([abjad.NumberedInterval(1)])
half_down = evans.TranspositionHandler([abjad.NumberedInterval(-1)])

trill_handler = evans.TrillHandler(boolean_vector=[1], only_chords=True)

bis_handler = evans.BisbigliandoHandler(
    fingering_list=[
        r"\double-diamond-parenthesized-top-markup",
        r"\diamond-parenthesized-double-diamond-markup",
        r"\double-diamond-parenthesized-top-markup",
    ],
    boolean_vector=[1],
    staff_padding=1,
    forget=False,
)

start_damp_indicator = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\damp-markup"),
    style="dashed-line-with-hook",
    command=r"\startTextSpanOne",
)

start_damp = abjad.bundle(start_damp_indicator, r"- \tweak staff-padding #3.5")

stop_damp = abjad.StopTextSpan(command=r"\stopTextSpanOne")


def fireworks(selections):
    for run in abjad.Selection(selections).runs():
        first_leaf = abjad.Selection(run).leaf(0)
        last_leaf = abjad.Selection(run).leaf(-1)
        abjad.attach(abjad.Dynamic("sfp"), first_leaf)
        abjad.attach(abjad.StartHairpin("<"), first_leaf)
        abjad.attach(abjad.Dynamic("fff", leak=True), last_leaf)


def sforzandi(selections):
    ties = abjad.Selection(selections).logical_ties(pitched=True)
    for tie in ties:
        abjad.attach(abjad.Dynamic("sfz"), tie[0])


start_scratch_indicator = abjad.StartTextSpan(
    left_text=abjad.Markup(r"poco \hspace #1 gridato"),
    right_text=abjad.Markup("molto gridato"),
    style="solid-line-with-arrow",
    command=r"\startTextSpanTwo",
)
start_scratch = abjad.bundle(start_scratch_indicator, r"- \tweak staff-padding #7")

stop_scratch = abjad.StopTextSpan(command=r"\stopTextSpanTwo")


def select_all_first_leaves(selections):
    run_ties = abjad.Selection(selections).runs().logical_ties(pitched=True)
    ties_first_leaves = abjad.Selection([_[0] for _ in run_ties])
    return ties_first_leaves


def select_run_first_leaves(selections):
    runs = abjad.Selection(selections).runs()
    first_ties = abjad.Selection([abjad.Selection(run).logical_tie(0) for run in runs])
    first_leaves = abjad.Selection([abjad.Selection(tie).leaf(0) for tie in first_ties])
    return first_leaves


# Scordatura


def scordatura(staff_padding=8):
    handler = evans.ScordaturaHandler(
        string_number="IV", default_pitch="c,", new_pitch="bf,,", padding=staff_padding
    )
    return handler


# ANNOTATIONS
class MAS:
    def __init__(
        self,
        string,
        color,
        staff_padding,
    ):
        self.string = string
        self.color = color
        self.staff_padding = staff_padding

    def __call__(self, selections):
        first_leaf = selections.leaf(0)
        last_leaf = selections.leaves()[-1]
        start_indicator = abjad.StartTextSpan(
            left_text=rf'- \evans-text-spanner-left-text "{self.string}"',
            command=r"\evansStartTextSpanMaterialAnnotation",
            style="dashed-line-with-hook",
            right_padding=-1,
        )
        start = abjad.bundle(
            start_indicator,
            rf"- \tweak staff-padding #{self.staff_padding}",
            rf"- \ tweak color #{self.color}",
        )
        stop = abjad.StopTextSpan(
            command=r"\evansStopTextSpanMaterialAnnotation",
        )
        abjad.attach(start, first_leaf, tag=abjad.Tag("ANNOTATION"), deactivate=False)
        abjad.attach(stop, last_leaf, tag=abjad.Tag("ANNOTATION"), deactivate=False)


A = MAS(
    string="[A].",
    color="#(rgb-color 0.6 0.6 1)",
    staff_padding=5.5,
)


def A_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.6 0.6 1)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


B = MAS(
    string="[B].",
    color="#(rgb-color 0.961 0.961 0.406)",
    staff_padding=5.5,
)


def B_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.961 0.961 0.406)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


C = MAS(
    string="[C].",
    color="#(rgb-color 0.2 1 0.592)",
    staff_padding=5.5,
)


def C_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.2 1 0.592)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


D = MAS(
    string="[D].",
    color="#(rgb-color 1 0.2 0.2)",
    staff_padding=5.5,
)


def D_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 1 0.2 0.2)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


E = MAS(
    string="[E].",
    color="#(rgb-color 0.6 0.8 1)",
    staff_padding=5.5,
)


def E_color(selections):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.group_by_contiguity(leaves)
    tag = abjad.Tag("MATERIAL_COLOR")
    start = abjad.LilyPondLiteral(
        r"\staffHighlight #(rgb-color 0.6 0.8 1)", site="before"
    )
    stop = abjad.LilyPondLiteral(r"\stopStaffHighlight", site="after")
    for group in groups:
        abjad.attach(start, group[0], tag=tag)
        abjad.attach(stop, group[-1], tag=tag)


def make_proportional_notation(selections):
    for tuplet in abjad.Selection(selections).tuplets():
        abjad.tweak(tuplet, r"\tweak TupletBracket.transparent ##t")
        abjad.tweak(tuplet, r"\tweak TupletNumber.transparent ##t")

    for rest in abjad.Selection(selections).leaves(pitched=False):
        transparent_literal = abjad.LilyPondLiteral(
            r"\once \override Rest.transparent = ##t", site="before"
        )
        transparent_dots_literal = abjad.LilyPondLiteral(
            r"\once \override Dots.transparent = ##t", site="before"
        )
        abjad.attach(transparent_literal, rest)
        abjad.attach(transparent_dots_literal, rest)

    for note in abjad.Selection(selections).leaves(pitched=True):
        abjad.attach(evans.DurationLine(), note)
        style_literal = abjad.LilyPondLiteral(r"\duration-line-style", site="before")
        abjad.attach(style_literal, note)


def make_proportaional_global_context(selections):
    leaves = abjad.Selection(selections).leaves()
    leaves_count = len(leaves)
    for i, leaf in enumerate(leaves):
        if i == 0:  # Experimental
            continue
        if i != leaves_count:
            bar_literal = abjad.LilyPondLiteral(
                r"\once \override Score.BarLine.stencil = ##f", site="before"
            )
            abjad.attach(bar_literal, leaf)
            span_literal = abjad.LilyPondLiteral(
                r"\once \override Score.SpanBar.stencil = ##f", site="before"
            )
            abjad.attach(span_literal, leaf)
        if i != 0:
            hidden_literal = abjad.LilyPondLiteral(
                r"\once \override Score.TimeSignature.stencil = ##f",
                site="before",
            )
            abjad.attach(hidden_literal, leaf)

    first_leaf = abjad.Selection(selections).leaf(0)
    x_literal = abjad.LilyPondLiteral(
        r"\once \override Score.TimeSignature.stencil = #(blank-time-signature)",
        site="before",
    )
    abjad.attach(x_literal, first_leaf)


def label_clock_time(selections):
    abjad.label.with_start_offsets(selections, clock_time=True)


def select_measures(
    index_list, leaf=None, leaves=None, logical_ties=None, note=None, notes=None
):
    if leaf is not None:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.leaf(sel_3, leaf)
            return sel_4

        return selector
    elif isinstance(leaves, list):

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.leaves(sel_3)
            sel_5 = abjad.select.get(sel_4, leaves)
            return sel_5

        return selector
    elif leaves is True:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.leaves(sel_3)
            return sel_4

        return selector
    elif logical_ties is True:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.logical_ties(sel_3)
            return sel_4

        return selector
    elif note is not None:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.note(sel_3, note)
            return sel_4

        return selector
    elif notes is True:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            sel_4 = abjad.select.notes(sel_3)
            return sel_4

        return selector
    else:

        def selector(selections):
            sel_1 = abjad.select.leaves(selections)
            sel_2 = abjad.select.group_by_measure(sel_1)
            sel_3 = abjad.select.get(sel_2, index_list)
            return sel_3

        return selector


hairpins = evans.CyclicList(["<", "<|", "<", "<", "<", "<", "<|", "<"], forget=False)


def swell_dynamics(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2], cyclic=True, overhang=False)
    )
    for pair in pairs:
        next_hairpin = hairpins(r=1)[0]
        hairpin_string = "p " + next_hairpin + " f"
        hairpin = baca.hairpin(hairpin_string)
        hairpin(pair)


_hairpins = evans.CyclicList(["<", "<|"], forget=False)


def cello_swell_dynamics(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2, 1], cyclic=True, overhang=False)
    )
    for i, pair in enumerate(pairs):
        if i % 2 != 0:
            abjad.attach(abjad.Dynamic("mf"), abjad.Selection(pair).leaf(0))
        else:
            next_hairpin = _hairpins(r=1)[0]
            hairpin_string = "p " + next_hairpin + " f"
            hairpin = baca.hairpin(hairpin_string)
            hairpin(pair)


def alternate_glissandi(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2], cyclic=True, overhang=False)
    )
    for pair in pairs:
        # abjad.attach(abjad.Glissando(), pair[0][-1])
        abjad.attach(abjad.Tie(), pair[0][-1])  # parts!


def cello_alternate_glissandi(selections):
    pairs = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([2, 1], cyclic=True, overhang=False)
    )
    for i, pair in enumerate(pairs):
        if i % 2 == 0:
            # abjad.attach(abjad.Glissando(), pair[0][-1])
            abjad.attach(abjad.Tie(), pair[0][-1])  # parts!


def trill_ties(selections):
    abjad.trill_spanner(selections, selector=lambda _: abjad.Selection(_).notes())


start_bis_trill_one = abjad.LilyPondLiteral(
    [
        r"- \tweak bound-details.left.text \double-diamond-parenthesized-top-markup",
        r"\startTrillSpan",
    ],
    site="after",
)

start_bis_trill_two = abjad.LilyPondLiteral(
    [
        r"- \tweak bound-details.left.text \diamond-parenthesized-double-diamond-markup",
        r"\startTrillSpan",
    ],
    site="after",
)

stop_bis_trill = abjad.StopTrillSpan()


multi_stac = evans.ArticulationHandler(
    articulation_list=[
        "tongue #2",
        "tongue #2",
        "tongue #3",
        "tongue #2",
        "tongue #2",
        "tongue #2",
        "tongue #3",
        "tongue #2",
        "tongue #3",
        "tongue #3",
    ],
    articulation_boolean_vector=[1],
    vector_forget=False,
    forget=False,
)


def triple_swell(selections):
    triples = (
        abjad.Selection(selections)
        .logical_ties()
        .partition_by_counts([3], cyclic=True, overhang=False)
    )
    for triple in triples:
        abjad.attach(abjad.Dynamic("mp"), triple[0][0])
        abjad.attach(abjad.StartHairpin("<"), triple[0][0])
        abjad.attach(abjad.Dynamic("f"), triple[1][0])
        abjad.attach(abjad.StartHairpin(">"), triple[1][0])
        abjad.attach(abjad.Dynamic("mp"), triple[2][-1])
        span = baca.text_spanner(  # WARNING: double check this interface
            "T. => P.",
            (abjad.tweak(5).staff_padding, 0),
            lilypond_id=1,
        )
        span(triple)
        abjad.trill_spanner(triple)


def angles(selections):
    for run in abjad.Selection(selections).runs():
        bah(run)


def bis_trill(selections):
    first_leaf = selections.leaf(0)
    last_leaf = selections.leaf(-1)
    abjad.attach(start_bis_trill_one, first_leaf)
    abjad.attach(stop_bis_trill, last_leaf)


def special_hairpin(selections):
    leaves = selections.leaves()
    abjad.attach(abjad.Dynamic("p"), leaves[0])
    abjad.attach(abjad.StartHairpin("<|"), leaves[0])
    abjad.attach(abjad.Dynamic("f"), leaves[1])
    abjad.attach(abjad.Dynamic("p"), leaves[2])
    abjad.attach(abjad.StartHairpin("<"), leaves[2])
    abjad.attach(abjad.Dynamic("ff"), leaves[3])
    abjad.attach(abjad.StartHairpin("--"), leaves[3])
    abjad.attach(abjad.StartHairpin(">"), leaves[4])
    abjad.attach(abjad.Dynamic("mf"), leaves[5])
    abjad.attach(abjad.StartHairpin("<|"), leaves[5])
    abjad.attach(abjad.Dynamic("f"), leaves[6])


def substitute_time_signatures(leaves, new_signatures):
    out = []
    for time_signature in new_signatures:
        new_skip = abjad.Skip(1, multiplier=(time_signature))
        abjad.attach(time_signature, new_skip, tag=abjad.Tag("scaling time signatures"))
        out.append(new_skip)
    abjad.mutate.replace(leaves, out)


def replace_sigs(new_sigs):
    return lambda _: substitute_time_signatures(_, new_sigs)


def add_fancy_glisses(indices=[0]):
    def returned_function(selections):
        ties = abjad.select.logical_ties(selections, grace=False)
        targets = abjad.select.get(ties, indices)
        final_targets = [abjad.select.leaf(_, -1) for _ in targets]
        for target in final_targets:
            abjad.attach(
                abjad.Glissando(),
                target,
            )
            abjad.attach(
                evans.make_fancy_gliss(3, 2, 4, 2, 1, right_padding=0.5),
                target,
            )

    return returned_function


def swells(selections, group_size=1, dyns=["p", "mf", "p", "f"]):
    ties = abjad.select.logical_ties(selections, pitched=True)
    leaves = [tie[0] for tie in ties]
    groups = abjad.select.partition_by_counts(
        leaves, [group_size], cyclic=True, overhang=True
    )
    cyc_dynamics = evans.CyclicList(dyns, forget=False)
    cyc_hairpins = evans.CyclicList(["<", ">"], forget=False)
    for group in groups:
        dynamic = abjad.Dynamic(cyc_dynamics(r=1)[0])
        abjad.attach(dynamic, group[0])
    for group in groups[:-1]:
        hairpin = abjad.StartHairpin(cyc_hairpins(r=1)[0])
        abjad.attach(hairpin, group[0])


def tenor_fingerings(selections):
    strings = [
        r"\tenor-sax-chart-one",
        r"\tenor-sax-chart-seven",
        r"\tenor-sax-chart-fourteen",
        r"\tenor-sax-chart-thirtyseven",
        r"\tenor-sax-chart-sixtynine",
        r"\tenor-sax-chart-seventyfive",
        r"\tenor-sax-chart-seventyseven",
        r"\tenor-sax-chart-seventyeight",
        r"\tenor-sax-chart-eightyeight",
    ]
    markups = [abjad.Markup(_) for _ in strings]
    cyc_marks = evans.CyclicList(markups, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf, direction=abjad.UP)


def tenor_dynamics(selections):
    dynamics = [
        abjad.Dynamic(_) for _ in ["ff", "p", "mf", "p", "f", "mp", "f", "ff", "p"]
    ]
    cyc_marks = evans.CyclicList(dynamics, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf)


def rotated_tenor_fingerings(selections):
    strings = [
        r"\tenor-sax-chart-fourteen",
        r"\tenor-sax-chart-thirtyseven",
        r"\tenor-sax-chart-sixtynine",
        r"\tenor-sax-chart-seventyfive",
        r"\tenor-sax-chart-seventyseven",
        r"\tenor-sax-chart-seventyeight",
        r"\tenor-sax-chart-eightyeight",
        r"\tenor-sax-chart-one",
        r"\tenor-sax-chart-seven",
    ]
    markups = [abjad.Markup(_) for _ in strings]
    cyc_marks = evans.CyclicList(markups, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf, direction=abjad.UP)


def rotated_tenor_dynamics(selections):
    dynamics = [
        abjad.Dynamic(_)
        for _ in [
            "mf",
            "p",
            "f",
            "mp",
            "f",
            "ff",
            "p",
            "ff",
            "p",
        ]
    ]
    cyc_marks = evans.CyclicList(dynamics, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf)


def baritone_fingerings(selections):
    strings = [
        r"\bari-sax-chart-one",
        r"\bari-sax-chart-seven",
        r"\bari-sax-chart-fourteen",
        r"\bari-sax-chart-thirtyseven",
        r"\bari-sax-chart-sixtynine",
        r"\bari-sax-chart-seventyfive",
        r"\bari-sax-chart-seventyseven",
        r"\bari-sax-chart-seventyeight",
        r"\bari-sax-chart-eightyeight",
    ]
    markups = [abjad.Markup(_) for _ in strings]
    cyc_marks = evans.CyclicList(markups, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf, direction=abjad.UP)


def baritone_dynamics(selections):
    dynamics = [
        abjad.Dynamic(_) for _ in ["ff", "mp", "p", "mf", "f", "mf", "p", "mp", "f"]
    ]
    cyc_marks = evans.CyclicList(dynamics, forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    for tie in ties:
        first_leaf = tie[0]
        mark = cyc_marks(r=1)[0]
        abjad.attach(mark, first_leaf)


def cyclic_trill_intervals(intervals, harmonic=True):

    cyc_intervals = evans.CyclicList(intervals, forget=False)

    def apply_trills(selections):
        ties = abjad.select.logical_ties(selections, pitched=True)
        for tie in ties:
            interval = cyc_intervals(r=1)[0]
            baca.trill_spanner(
                tie, alteration=abjad.NamedInterval(interval), harmonic=True
            )

    return apply_trills


def hairpin_cycles(selections):
    cyc_types = evans.CyclicList([1, 1, 2, 3, 2, 3, 4], forget=False)
    ties = abjad.select.logical_ties(selections, pitched=True)
    tie_groups = abjad.select.partition_by_counts(ties, [8], cyclic=True, overhang=True)
    for group in tie_groups:
        notes = abjad.select.notes(group)
        start = notes[0]
        end = notes[-1]
        middle = notes[len(notes) // 2]
        type = cyc_types(r=1)[0]
        if type == 1:
            abjad.attach(abjad.Dynamic("sfp"), start)
            abjad.attach(abjad.StartHairpin("<|"), start)
            abjad.attach(abjad.Dynamic("ff"), end)
        elif type == 2:
            abjad.attach(abjad.Dynamic("fff"), start)
            abjad.attach(abjad.StartHairpin(">"), start)
            abjad.attach(abjad.Dynamic("p"), end)
        elif type == 3:
            abjad.attach(abjad.Dynamic("p"), start)
            abjad.attach(abjad.StartHairpin("<"), start)
            abjad.attach(abjad.Dynamic("ff"), middle)
            abjad.attach(abjad.StartHairpin(">"), middle)
            abjad.attach(abjad.Dynamic("p"), end)
        elif type == 4:
            abjad.attach(abjad.Dynamic("ff"), start)
            abjad.attach(abjad.StartHairpin(">"), start)
            abjad.attach(abjad.Dynamic("p"), middle)
            abjad.attach(abjad.StartHairpin("<"), middle)
            abjad.attach(abjad.Dynamic("ff"), end)
        else:
            continue


def add_brackets(
    selections, partitions, hide_heads=True, padding=2, direction="UP", label=False
):
    notes = abjad.select.logical_ties(selections, pitched=True)
    groups = abjad.select.partition_by_counts(
        notes, partitions, cyclic=True, overhang=True
    )
    for group in groups:
        start = abjad.StartGroup()
        items = [
            start,
            abjad.Tweak(rf"- \tweak HorizontalBracket.staff-padding #{padding}"),
            abjad.Tweak(rf"- \tweak HorizontalBracket.direction #{direction}"),
        ]
        if label is True:
            items.append(
                abjad.Tweak(rf'- \tweak HorizontalBracketText.text "{len(group)}"')
            )
        bundle = abjad.bundle(*items)
        abjad.horizontal_bracket(group, start_group=bundle)
        if hide_heads is True:
            for i, note in enumerate(group):
                if 0 < i:
                    for leaf in note:
                        abjad.override(leaf).NoteHead.transparent = True
                        abjad.override(leaf).Accidental.stencil = False
                        abjad.override(leaf).NoteHead.no_ledgers = True
                        abjad.attach(abjad.Articulation("staccato"), leaf)


def markov_materials(
    instrument="vn",
    materials=None,
    stage=1,
    treat_tuplets=True,
    rewrite=-1,
    preprocessor=None,
    debug=False,
):
    material_generator = evans.CyclicList(materials, forget=False)

    def returned_function(time_signatures):
        divisions = [abjad.Duration(_) for _ in time_signatures]
        container = abjad.Container()
        if stage == 1:
            if instrument == "vn":
                division_nums = [
                    1,
                    -10,
                    2,
                    -8,
                    1,
                    -7,
                    1,
                    -9,
                    2,
                    -11,
                    6,
                    -8,
                    6,
                    -6,
                    5,
                    -4,
                    6,
                    -4,
                    2,
                    -2,
                    5,
                    -2,
                    2,
                    -2,
                    4,
                    -3,
                    1,
                    -2,
                    2,
                    -1,
                    3,
                ]
                divisions = [abjad.Duration(x, 16) for x in division_nums]
            else:
                division_nums = [
                    1,
                    -12,
                    1,
                    -6,
                    1,
                    -3,
                    1,
                    -4,
                    3,
                    -4,
                    1,
                    -3,
                    1,
                    -1,
                    1,
                    -3,
                    2,
                    -13,
                    1,
                    -8,
                    4,
                    -7,
                    9,
                    -2,
                    4,
                    -4,
                    2,
                    -2,
                    1,
                    -1,
                    2,
                    -4,
                    2,
                    -2,
                    2,
                    -2,
                    3,
                    -2,
                    3,
                ]
                divisions = [abjad.Duration(x, 16) for x in division_nums]
        else:
            divisions = [
                abjad.Duration(1, 1),
                abjad.Duration(1, 1),
                abjad.Duration(1, 1),
                abjad.Duration(1, 1),
            ]
            divisions = preprocessor(divisions)
        for duration in divisions:
            if duration < 0:
                rest_container = abjad.Container()
                music = rmakers.note([abs(duration)])
                for component in music:
                    if isinstance(component, list):
                        rest_container.extend(component)
                    else:
                        rest_container.append(component)
                rmakers.force_rest(rest_container)
                music = abjad.mutate.eject_contents(rest_container)
                for component in music:
                    if isinstance(component, list):
                        container.extend(component)
                    else:
                        container.append(component)
            else:
                material = material_generator(r=1)[0]
                if material == "jete":
                    if duration < abjad.Duration(4, 4):
                        music = rmakers.note([abs(duration)])
                        if stage == 2:
                            abjad.attach(
                                abjad.Dynamic("p"), abjad.select.leaf(music, 0)
                            )
                        for leaf in abjad.select.logical_ties(music):
                            abjad.attach(
                                abjad.Markup(r"\markup gettato"),
                                leaf[0],
                                direction=abjad.UP,
                            )
                        for component in music:
                            if isinstance(component, list):
                                container.extend(component)
                            else:
                                container.append(component)
                    else:
                        music = rmakers.tuplet([abs(duration)], [(1, 1, 1, 1, 1)])
                        if stage == 2:
                            abjad.attach(
                                abjad.Dynamic("p"), abjad.select.leaf(music, 0)
                            )
                        for leaf in abjad.select.logical_ties(music):
                            abjad.attach(
                                abjad.Markup(r"\markup gettato"),
                                leaf[0],
                                direction=abjad.UP,
                            )
                        for component in music:
                            if isinstance(component, list):
                                container.extend(component)
                            else:
                                container.append(component)
                elif material == "glissando":
                    if duration < abjad.Duration(4, 4):
                        music = rmakers.note([abs(duration)])
                        if stage == 2:
                            abjad.attach(
                                abjad.Dynamic("f"), abjad.select.leaf(music, 0)
                            )
                        for leaf in abjad.select.logical_ties(music):
                            abjad.attach(abjad.BendAfter(2.5), leaf[-1])
                        for component in music:
                            if isinstance(component, list):
                                container.extend(component)
                            else:
                                container.append(component)
                    else:
                        music = rmakers.tuplet([abs(duration)], [(3, 1)])
                        abjad.attach(abjad.Glissando(), abjad.select.leaf(music, 0))
                        if stage == 2:
                            abjad.attach(
                                abjad.Dynamic("f"), abjad.select.leaf(music, 0)
                            )
                        for component in music:
                            if isinstance(component, list):
                                container.extend(component)
                            else:
                                container.append(component)
                elif material == "trill":
                    if duration < abjad.Duration(4, 4):
                        music = rmakers.note([abs(duration)])
                        if stage == 2:
                            abjad.attach(
                                abjad.Dynamic("mf"), abjad.select.leaf(music, 0)
                            )
                        for leaf in abjad.select.logical_ties(music):
                            abjad.attach(abjad.Articulation("trill"), leaf[0])
                        for component in music:
                            if isinstance(component, list):
                                container.extend(component)
                            else:
                                container.append(component)
                    else:
                        music = rmakers.tuplet([abs(duration)], [(1, 1, 1)])
                        if stage == 2:
                            abjad.attach(
                                abjad.Dynamic("mf"), abjad.select.leaf(music, 0)
                            )
                        abjad.attach(abjad.StartTrillSpan(), music[0])
                        abjad.attach(abjad.StopTrillSpan(), music[-1])
                        abjad.attach(abjad.Dynamic("p"), music[0])
                        abjad.attach(abjad.Dynamic("mf"), music[1])
                        abjad.attach(abjad.StopTrillSpan("p"), music[-1])
                        abjad.attach(abjad.StartHairpin("<"), music[0])
                        abjad.attach(abjad.StartHairpin(">"), music[1])
                        for component in music:
                            if isinstance(component, list):
                                container.extend(component)
                            else:
                                container.append(component)
                elif material == "scratch":
                    if duration < abjad.Duration(4, 4):
                        music = rmakers.note([abs(duration)])
                        if stage == 2:
                            abjad.attach(
                                abjad.Dynamic("ff"), abjad.select.leaf(music, 0)
                            )
                        for leaf in abjad.select.logical_ties(music):
                            abjad.attach(
                                abjad.Markup(r"\markup gridato"),
                                leaf[0],
                                direction=abjad.UP,
                            )
                        for component in music:
                            if isinstance(component, list):
                                container.extend(component)
                            else:
                                container.append(component)
                    else:
                        music = rmakers.tuplet([abs(duration)], [(1, 1, 1)])
                        if stage == 2:
                            abjad.attach(
                                abjad.Dynamic("ff"), abjad.select.leaf(music, 0)
                            )
                        for leaf in abjad.select.logical_ties(music):
                            abjad.attach(
                                abjad.Markup(r"\markup gridato"),
                                leaf[0],
                                direction=abjad.UP,
                            )
                        abjad.attach(abjad.StartTextSpan(), music[0])
                        abjad.attach(abjad.StopTextSpan(), music[-1])
                        abjad.attach(abjad.Dynamic("mp"), music[0])
                        abjad.attach(abjad.Dynamic("f"), music[1])
                        abjad.attach(abjad.StopTrillSpan("mp"), music[-1])
                        abjad.attach(abjad.StartHairpin("<"), music[0])
                        abjad.attach(abjad.StartHairpin(">"), music[1])
                        for component in music:
                            if isinstance(component, list):
                                container.extend(component)
                            else:
                                container.append(component)
                elif material == "spazzolato":
                    if duration < abjad.Duration(4, 4):
                        music = rmakers.note([abs(duration)])
                        if stage == 2:
                            abjad.attach(
                                abjad.Dynamic("mp"), abjad.select.leaf(music, 0)
                            )
                        for leaf in abjad.select.logical_ties(music):
                            abjad.attach(
                                abjad.Markup(r"\markup spazzolato"),
                                leaf[0],
                                direction=abjad.UP,
                            )
                        for component in music:
                            if isinstance(component, list):
                                container.extend(component)
                            else:
                                container.append(component)
                    else:
                        music = rmakers.tuplet([abs(duration)], [(1, -1, 1, -1, 1, -1)])
                        if stage == 2:
                            abjad.attach(
                                abjad.Dynamic("mp"), abjad.select.leaf(music, 0)
                            )
                        for leaf in abjad.select.logical_ties(music):
                            abjad.attach(
                                abjad.Markup(r"\markup spazzolato"),
                                leaf[0],
                                direction=abjad.UP,
                            )
                        abjad.attach(abjad.StartTextSpan(), music[0])
                        abjad.attach(abjad.StopTextSpan(), music[-1])
                        abjad.attach(abjad.Dynamic('"mf"'), music[0])
                        for component in music:
                            if isinstance(component, list):
                                container.extend(component)
                            else:
                                container.append(component)
                else:
                    raise Exception(f"Material '{material}' not defined")

        if treat_tuplets is True:
            command_target = abjad.select.tuplets(container)
            rmakers.trivialize(command_target)
            command_target = abjad.select.tuplets(container)
            rmakers.rewrite_rest_filled(command_target)
            command_target = abjad.select.tuplets(container)
            rmakers.rewrite_sustained(command_target)
            rmakers.extract_trivial(container)  # ?
        if debug is True:
            music = abjad.mutate.eject_contents(container)
            staff = abjad.Staff(music)
            abjad.show(staff)
            raise Exception("STOP")
        if rewrite is not None:
            meter_command = evans.RewriteMeterCommand(boundary_depth=rewrite)
            metered_staff = rmakers.wrap_in_time_signature_staff(
                container[:], time_signatures
            )
            meter_command(metered_staff)
            music = abjad.mutate.eject_contents(metered_staff)
        else:
            music = abjad.mutate.eject_contents(container)

        return music

    return returned_function


def replace_chords_with_tremolo_containers(intervals, positions):
    cyc_intervals = evans.CyclicList(intervals, forget=False)
    cyc_positions = evans.CyclicList(positions, forget=False)

    def returned_function(selections):
        chords = abjad.select.chords(selections)
        chords = abjad.select.logical_ties(chords)
        for chord in chords:
            first_leaf = chord[0]
            position = cyc_positions(r=1)[0]
            interval = cyc_intervals(r=1)[0]
            written_dur = first_leaf.written_duration
            if written_dur == abjad.Duration(1, 2):
                number_of_repetitions = 4
                quarter_dur = written_dur / 2 / 2 / 2
            else:
                number_of_repetitions = 2
                quarter_dur = written_dur / 2 / 2
            if position == "up":
                new_container = abjad.TremoloContainer(
                    number_of_repetitions,
                    [
                        abjad.Chord(first_leaf.written_pitches, quarter_dur),
                        abjad.Chord(
                            [
                                first_leaf.written_pitches[0],
                                first_leaf.written_pitches[1].number + interval,
                            ],
                            quarter_dur,
                        ),
                    ],
                )
                new_tail = [
                    abjad.Note(leaf.written_pitches[0], leaf.written_duration)
                    for leaf in chord[1:]
                ]
            else:
                new_container = abjad.TremoloContainer(
                    number_of_repetitions,
                    [
                        abjad.Chord(first_leaf.written_pitches, quarter_dur),
                        abjad.Chord(
                            [
                                first_leaf.written_pitches[0].number + interval,
                                first_leaf.written_pitches[1],
                            ],
                            quarter_dur,
                        ),
                    ],
                )
                new_tail = [
                    abjad.Note(leaf.written_pitches[1], leaf.written_duration)
                    for leaf in chord[1:]
                ]
            second_leaf = abjad.select.leaf(new_container, 1)
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\once \override Stem.stencil = ##f", site="before"
                ),
                second_leaf,
            )
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\once \override Dots.stencil = ##f", site="before"
                ),
                second_leaf,
            )
            abjad.mutate.replace(first_leaf, new_container)
            if 1 < len(chord):
                abjad.attach(abjad.Tie(), abjad.select.leaf(new_container, 0))
                abjad.attach(abjad.Tie(), second_leaf)
            if 1 < len(new_tail):
                abjad.tie(new_tail)
            abjad.mutate.replace(chord[1:], new_tail)

    return returned_function
