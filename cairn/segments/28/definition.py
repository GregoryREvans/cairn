import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn


def beam_position(selection, position):
    first_leaf = abjad.select.leaf(selection, 0)
    abjad.override(first_leaf).Beam.positions = rf"#'({position} . {position})"


pitch_sequence = [
    -11,
    -13,
    -7,
    -10,
    -7,
    -12,
    -7,
    -6,
    -5,
    -17,
    -19,
    -16,
    -15,
    -17,
    -7,
    -10,
    -7,
    -10,
    -5,
    -3,
    -7,
    -3,
    -7,
    -1,
    -4,
    -2,
    -5,
    -3,
    -6,
    -4,
    -7,
    -12,
    -14,
    -12,
    -7,
    0,
    -7,
    0,
    -10,
    0,
    -7,
    0,
    -10,
    -7,
    -10,
    -7,
    -10,
]

cyc_staves = evans.CyclicList(
    [
        0,
        1,
        1,
        0,
        2,
        1,
        1,
        1,
        1,
        0,
        2,
        2,
        2,
        2,
        2,
        2,
        1,
        2,
        1,
        2,
        1,
        2,
        1,
        2,
        0,
        2,
        0,
    ],
    forget=False,
)

pizz_seq = []
for i in pitch_sequence:
    staff = cyc_staves(r=1)[0]
    if staff == 1:
        pizz_seq.append(i)
    else:
        pizz_seq.append(0)

maker = evans.SegmentMaker(
    instruments=cairn.instruments,
    names=[
        '"SCP"',
        '"SCP"',
        '"BCP"',
        '"Mano Destra"',
        '"Mano Sinestra"',
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
        '"mn dst"',
        '"man sin"',
        '"davanti"',
        '" "',
        '" "',
        '"dietro"',
        '"archi"',
    ],
    name_staves=True,
    fermata_measures=cairn.fermata_measures_28,
    commands=[
        ## Cello
        evans.attach(
            "cello voice",
            abjad.Clef("bass"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "string voice",
            abjad.LilyPondLiteral(r"\stopStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "string voice",
            abjad.LilyPondLiteral(
                r"\override Staff.StaffSymbol.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "string voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "string voice",
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "change voice",
            abjad.LilyPondLiteral(r"\stopStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "change voice",
            abjad.LilyPondLiteral(
                r"\override Staff.StaffSymbol.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "change voice",
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "change voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Rest.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "change voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "left voice",
            abjad.LilyPondLiteral(r"\stopStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "left voice",
            abjad.LilyPondLiteral(
                r"\override Staff.StaffSymbol.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "left voice",
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "left voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Rest.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "left voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "right voice",
            abjad.LilyPondLiteral(r"\stopStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "right voice",
            abjad.LilyPondLiteral(
                r"\override Staff.StaffSymbol.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "right voice",
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "right voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Rest.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "right voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        #### MUSIC
        evans.MusicCommand(
            ("front voice", (0, 2)),
            evans.multiplied_duration(
                (1, 16),
                preprocessor=evans.make_preprocessor(
                    sum=True,
                    split_divisions_by_proportions=[
                        (
                            8,
                            1,
                            4,
                            1,
                            8,
                            5,
                            1,
                            2,
                            2,
                            2,
                            2,
                            1,
                            1,
                            1,
                            1,
                            1,
                            1,
                            3,
                            1,
                            1,
                            1,
                            1,
                            4,
                            2,
                            10,
                            3,
                            4,
                        )
                    ],
                ),
            ),
            evans.PitchHandler(
                pizz_seq,
            ),
            evans.NoteheadHandler(
                ["cross"],
                head_boolean_vector=[
                    0,
                    0,
                    0,
                    1,
                    1,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    1,
                    0,
                    0,
                    0,
                    0,
                ],
            ),
            lambda _: abjad.beam(_, direction=abjad.UP),
            lambda _: beam_position(_, 5),
            evans.staff_changes(
                reservoir=["front staff", "cello staff", "back staff"],
                sequence=[
                    0,
                    1,
                    1,
                    0,
                    2,
                    1,
                    1,
                    1,
                    1,
                    0,
                    2,
                    2,
                    2,
                    2,
                    2,
                    2,
                    1,
                    2,
                    1,
                    2,
                    1,
                    2,
                    1,
                    2,
                    0,
                    2,
                    0,
                ],
            ),
            abjad.LilyPondLiteral(r"\my-hack-slash", site="before"),
            abjad.Markup(r"\markup pizz."),
            evans.Attachment(
                abjad.Articulation("+"),
                selector=lambda _: abjad.select.leaf(_, 1),
                direction=abjad.DOWN,
            ),
            evans.Attachment(
                abjad.Markup(r"\markup (simile)"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, 12),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 12),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.leaf(_, -1),
                direction=abjad.UP,
            ),
        ),
        evans.MusicCommand(
            ("cello voice", (0, 2)),
            evans.multiplied_duration(
                (1, 1),
                preprocessor=evans.make_preprocessor(
                    sum=True,
                    split_divisions_by_proportions=[
                        (
                            8,
                            1,
                            4,
                            1,
                            8,
                            5,
                            1,
                            2,
                            2,
                            2,
                            2,
                            1,
                            1,
                            1,
                            1,
                            1,
                            1,
                            3,
                            1,
                            1,
                            1,
                            1,
                            4,
                            2,
                            10,
                            3,
                            4,
                        )
                    ],
                ),
            ),
            evans.PitchHandler(
                pitch_sequence,
            ),
            evans.gliss_only,
            abjad.Markup(r"\markup (II)"),
        ),
        evans.attach(
            "back voice",
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Rest.stencil = ##f",
                    r"\override Staff.Dots.stencil = ##f",
                ],
                site="before",
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "back voice",
            abjad.LilyPondLiteral(
                [
                    r"\override Staff.Rest.stencil = ##t",
                    r"\override Staff.Dots.stencil = ##t",
                ],
                site="after",
            ),
            selector=lambda _: abjad.select.leaf(_, -1),
        ),
        #### Cleanup
        # evans.call(
        #     "score",
        #     evans.SegmentMaker.beam_score_without_splitting,
        #     lambda _: abjad.select.components(_, abjad.Score),
        # ),
        # evans.attach(
        #     "Global Context",
        #     cairn.lib.mark_91,
        #     lambda _: abjad.select.leaf(_, 0),
        # ),
        evans.attach(
            "Global Context",
            cairn.lib.met_91,
            lambda _: abjad.select.leaf(_, 0),
        ),
        ####
        # TIME BRACKETS
        ####
        evans.call(
            "Global Context",
            evans.bracket_time_duration,
            selector=evans.select_measures([0, 1], leaves=[0, 1]),
        ),
        ####
        evans.attach(
            "Global Context",
            abjad.bundle(
                abjad.Markup(r'\boxed-markup-upright "6.C" 2'), r"\tweak padding 5"
            ),
            lambda _: abjad.select.leaf(_, 0),
            direction=abjad.UP,
        ),
        #### Fermati
        # evans.attach(
        #     "Global Context",
        #     abjad.Markup(
        #         r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.ulongfermata"',
        #     ),
        #     evans.select_measures([1], leaf=1),
        #     direction=abjad.UP,
        # ),
        ####
        # evans.attach(
        #     "Global Context",
        #     abjad.BarLine("|."),
        #     evans.select_measures([165], leaf=1),
        # ),
        # evans.attach(
        #     "Global Context",
        #     abjad.Markup(
        #         r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.uverylongfermata"',
        #     ),
        #     evans.select_measures([165], leaf=1),
        #     direction=abjad.UP,
        # ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_28,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="28",
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
