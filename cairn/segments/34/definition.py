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
    fermata_measures=cairn.fermata_measures_34,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=34),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
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
            ("cello voice", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]),
            evans.tuplet(
                [
                (1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1),
                (1, 1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
                (1, 1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1),
                (2, 1, 1, 2, 3, 2, 1, 1, 2, 3, 1, 2),
                (1, 2, 2, 2, 2, 2),
                (1, 1, 1, 1, 1),
                (2, 2, 2, 1),
                (1, 1),
                (1, 1, 1, 1, 1, 1, 1),
                (1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1),
                (1, 1, 1, 1, 1),
                (1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1, 1, 1),
                ],
                rewrite=-1,
            ),
            evans.PitchHandler(
                [
                    "f", "fqs", "fs", "fqs",
                    "a,", "aqf,", "af,", "aqf,", "aqs,", "as,", "aqs,",
                    ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"],
                    "f", "fqs", "f", "fs", "f", "fqs", "f", "fs", "f",
                    ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"],
                    "a,", "aqf,", "af,", "aqf,", "af,",
                    "e", "eqf", "e", "eqs", "e", "eqf", "e",
                    "a,", "aqf,", "af,", "aqf,", "aqs,", "as,", "aqs,", "a,", "aqf,", "af,", "aqf,", "aqs,",
                    ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"],
                    "d", "dqs", "d", "ds", "d",
                    ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"],
                    "a,", "aqf,",
                    "e", "eqf", "e", "eqs", "e", "e", "eqf",
                    "f", "fqs", "fs", "fqs",
                    "a,", "aqf,", "af,", "aqf,", "aqs,", "as,", "aqs,",
                    ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"],
                    "f", "fqs", "f", "fs",
                    ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"],
                ]
            ),
            abjad.Dynamic("ff"),
        ),
        evans.MusicCommand(
            ("temporary voice", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17]),
            evans.tuplet(
                [
                (1, 1, 1, 1, 1),
                (3, 2, 1, 1, 2, 3, 1, 2, 2, 1),
                (1, 1, 1, 1, 1, 1),
                (1, 2, 1, 2, 2, 1, 1, 2, 3, 2, 1),
                (1, 1, 1),
                (1, 1, 1),
                (3, 1, 1, 1),
                (1, 1, 1, 3, 1, 2, 2, 1, 3),
                (1, 2, 2, 1),
                (1, 1, 1, 1),
                (3, 2, 2, 2, 2, 2, 2, 2, 2, 2),
                (1, 1, 1),
                (2, 2, 2, 2, 1),
                (1, 1, 1, 1, 1),
                (3, 2, 1, 1, 2, 3, 1, 2, 2, 1),
                (1, 1, 1, 1, 1, 1),
                (1, 2, 1, 2, 2, 1, 1, 2, 3, 2, 1),
                (1, 1, 1),
                ],
                rewrite=-1,
            ),
            evans.PitchHandler(
                [
                    ["c,", "gs,"], "d'", ["c,", "gs,"], "d'", ["c,", "gs,"],
                    "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"],
                    "f,", "a", "f,", "a", "f,", "a",
                    ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"],
                    "f,", "a", "f,",
                    "c,", ["fs", "ef'"], "c,",
                    ["c,", "gs,"], "d'", ["c,", "gs,"], "d'",
                    "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,",
                    "f,", "a", "f,", "a",
                    ["e,", "g,"], "b", ["e,", "g,"], "b",
                    "f,", "a", "f,", "a", "f,", "a", "f,", "a", "f,", "a",
                    "c,", ["fs", "ef'"], "c,",
                    ["c,", "gs,"], "d'", ["c,", "gs,"], "d'", ["c,", "gs,"],
                    ["c,", "gs,"], "d'", ["c,", "gs,"], "d'", ["c,", "gs,"],
                    "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"],
                    "f,", "a", "f,", "a", "f,", "a",
                    ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"],
                    "f,", "a", "f,",
                ]
            ),
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\stopStaff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            abjad.Clef("bass"),
        ),
        #### Cleanup
        evans.call(
            "score",
            lambda _: evans.SegmentMaker.beam_score_without_splitting(_, better_tuplets=True),
            lambda _: abjad.select.components(_, abjad.Score),
        ),
        evans.attach(
            "Global Context",
            cairn.lib.met_117,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_34,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="34",
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
