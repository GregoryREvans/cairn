import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn

maker = evans.SegmentMaker(
    instruments=cairn.instruments,
    names=[
        '"SCP"',
        '"SCP"',
        '"BCP"',
        '"Mano Sinestra"',
        '"Mano Destra"',
        '"Davanti"',
        '" "',
        '" "',
        '"Dietro"',
        '"Archi"',
    ],
    abbreviations=[
        '"SCP"',
        '"SCP"',
        '"BCP"',
        '"man sin"',
        '"mn dst"',
        '"davanti"',
        '" "',
        '" "',
        '"dietro"',
        '"archi"',
    ],
    name_staves=True,
    fermata_measures=cairn.fermata_measures_22,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=22),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        ## Cello
        evans.attach(
            "cello voice",
            abjad.Clef("bass"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        # evans.attach(
        #     "string voice",
        #     abjad.LilyPondLiteral(r"\stopStaff", site="before"),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "string voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.StaffSymbol.transparent = ##t", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "string voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.Dots.transparent = ##t", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "string voice",
        #     abjad.LilyPondLiteral(r"\startStaff", site="before"),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "change voice",
        #     abjad.LilyPondLiteral(r"\stopStaff", site="before"),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "change voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.StaffSymbol.transparent = ##t", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "change voice",
        #     abjad.LilyPondLiteral(r"\startStaff", site="before"),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "change voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.Rest.transparent = ##t", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "change voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.Dots.transparent = ##t", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "left voice",
        #     abjad.LilyPondLiteral(r"\stopStaff", site="before"),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "left voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.StaffSymbol.transparent = ##t", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "left voice",
        #     abjad.LilyPondLiteral(r"\startStaff", site="before"),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "left voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.Rest.transparent = ##t", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "left voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.Dots.transparent = ##t", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "right voice",
        #     abjad.LilyPondLiteral(r"\stopStaff", site="before"),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "right voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.StaffSymbol.transparent = ##t", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "right voice",
        #     abjad.LilyPondLiteral(r"\startStaff", site="before"),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "right voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.Rest.transparent = ##t", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "right voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.Dots.transparent = ##t", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        #### MUSIC
        evans.MusicCommand(
            ("cello voice", [0]),
            evans.talea(
                [20],
                8,
                preamble=[1, 2, 1, 2],
            ),
            evans.PitchHandler(
                [
                    -12, [-12, -12 + 5],
                    -11, [-11, -11 + 7],
                    -13,
                ]
            ),
            lambda _: [abjad.tweak(leaf.note_heads[1], r"\tweak NoteHead.style #'harmonic") for leaf in abjad.select.chords(_)],
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            lambda _: baca.trill_spanner(abjad.select.logical_tie(_, -1), alteration="+P5", harmonic=True),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [1]),
            evans.talea(
                [20],
                8,
                preamble=[1, 2, 1, 2],
            ),
            evans.PitchHandler(
                [
                    -12, [-12, -12 + 5],
                    -11, [-11, -11 + 7],
                    -13,
                ]
            ),
            lambda _: [abjad.tweak(leaf.note_heads[1], r"\tweak NoteHead.style #'harmonic") for leaf in abjad.select.chords(_)],
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            lambda _: baca.trill_spanner(abjad.select.logical_tie(_, -1), alteration="+P5", harmonic=True),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [2]),
            evans.talea(
                [20],
                16,
                preamble=[1, 2, 1, 2, 1, 2],
            ),
            evans.PitchHandler(
                [
                    -12, [-12, -12 + 5],
                    -11, [-11, -11 + 7],
                    -13, [-13, -13 + 7],
                    -10,
                ]
            ),
            lambda _: [abjad.tweak(leaf.note_heads[1], r"\tweak NoteHead.style #'harmonic") for leaf in abjad.select.chords(_)],
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 4),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 5),
            ),
            lambda _: baca.trill_spanner(abjad.select.logical_tie(_, -1), alteration="+M3", harmonic=True),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [3]),
            evans.talea(
                [20],
                16,
                preamble=[1, 2, 1, 2, 1, 2, 1, 2],
            ),
            evans.PitchHandler(
                [
                    -12, [-12, -12 + 5],
                    -11, [-11, -11 + 7],
                    -13, [-13, -13 + 5],
                    -11, [-11, -11 + 7],
                    -10,
                ]
            ),
            lambda _: [abjad.tweak(leaf.note_heads[1], r"\tweak NoteHead.style #'harmonic") for leaf in abjad.select.chords(_)],
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 4),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 5),
            ),
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 6),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [4]),
            evans.talea(
                [40],
                32,
                preamble=[1, 2, 1, 2],
            ),
            evans.PitchHandler(
                [
                    -12, [-12, -12 + 5],
                    -11, [-11, -11 + 7],
                    -13,
                ]
            ),
            lambda _: [abjad.tweak(leaf.note_heads[1], r"\tweak NoteHead.style #'harmonic") for leaf in abjad.select.chords(_)],
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            lambda _: baca.trill_spanner(abjad.select.logical_tie(_, -1), alteration="+P4", harmonic=True),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),

            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "non percussion"'),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanTwo",
                    ),
                    r"- \tweak staff-padding 8.5",
                    # r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -2, pitched=True),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanTwo",),
                selector=lambda _: abjad.select.leaf(_, -1, pitched=True),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "finger percussion"'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanTwo",
                    ),
                    r"- \tweak staff-padding 8.5",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -1, pitched=True),
            ),
        ),
        #### Cleanup
        evans.call(
            "score",
            lambda _: evans.SegmentMaker.beam_score_without_splitting(_, better_tuplets=True),
            lambda _: abjad.select.components(_, abjad.Score),
        ),
        evans.attach(
            "Global Context",
            abjad.bundle(
                abjad.Markup(r'\boxed-markup "accel. a 91" 1'),
                r"\tweak padding 3",
            ),
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            cairn.lib.met_78,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_22,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="22",
    current_directory=pathlib.Path(__file__).parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    barline="|.",
    rehearsal_mark="",
    fermata="scripts.ufermata",
    with_layout=True,
    mm_rests=False,
    extra_rewrite=False,  # should default to false but defaults to true
    print_clock_time=True,
    color_out_of_range=False,
    name_columns=True,
)

maker.build_segment()
