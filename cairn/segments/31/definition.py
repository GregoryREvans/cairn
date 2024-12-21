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

proportions = (
    1,
    1 * 2,
    12 * 2,
    1, 1, 1, 1, 1, 1, 1, 1,
    2 * 2,
    7 * 2,
    2 * 2,
    1, 1,
    4 * 2,
    1,
    3 * 2,
    2 * 2,
    1,
    2,
    3 * 2,
    1, 1, 1, 1, 1, 1, 1, 1, 1,
    13 * 2,
    5 * 2,
)

pitch_sequence = [
    abjad.NumberedPitch(_).number for _ in [
        "a,",
        "a,",
        "b,",
        "a",
        "g",
        "a",
        "g",
        "b",
        "a",
        "g",
        "e",
        "f",
        "d",
        "e",
        "f",
        "c",
        "b,",
        "a,",
        "c",
        "d",
        "e",
        "b,",
        "d",
        "b,",
        "e",
        "c",
        "f",
        "d",
        "g",
        "e",
        "b",
        "f",

    ]
]

cyc_staves = evans.CyclicList(
    [
        0,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        2, 0, 0, 0, 0,
        1, 2, 1, 0, 1, 0,
        2, 0, 2, 0, 2, 0, 2, 0, 2, 0,
        0, 0
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
    fermata_measures=cairn.fermata_measures_31,
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
                        proportions,
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
                    0, 0,
                    1, 1, 1, 1, 1, 1, 1, 1, 1,
                    0, 0,
                    1, 1, 1,
                    0, 0, 0,
                    0, 0, 0,
                    1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
                    0, 0,
                ],
            ),
            lambda _: abjad.beam(_, direction=abjad.UP),
            lambda _: beam_position(_, 5),
            evans.staff_changes(
                reservoir=["front staff", "cello staff", "back staff"],
                sequence=[
                    0,
                    2, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                    2, 0, 0, 0, 0,
                    1, 2, 1, 0, 1, 0,
                    2, 0, 2, 0, 2, 0, 2, 0, 2, 0,
                    0, 0
                ],
            ),
            abjad.LilyPondLiteral(r"\my-hack-slash", site="before"),
            abjad.Markup(r"\markup pizz."),
            evans.Attachment(
                abjad.Articulation("+"),
                selector=lambda _: abjad.select.leaf(_, 18),
                direction=abjad.DOWN,
            ),
            evans.Attachment(
                abjad.Markup(r"\markup (simile)"),
                selector=lambda _: abjad.select.leaf(_, 20),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, -2),
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
                        proportions,
                    ],
                ),
            ),
            evans.PitchHandler(
                pitch_sequence,
            ),
            evans.gliss_only,
            abjad.Markup(r"\markup (IV)"),
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
        #     cairn.lib.mark_78,
        #     lambda _: abjad.select.leaf(_, 0),
        # ),
        evans.attach(
            "Global Context",
            cairn.lib.met_78,
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
                abjad.Markup(r'\boxed-markup-upright "6.F" 2'), r"\tweak padding 5"
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
    time_signatures=cairn.signatures_31,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="31",
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
