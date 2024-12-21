import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn

slow_bows = [(_, 9) for _ in evans.Sequence([i for i in range(10)]).mirror(sequential_duplicates=False)]
medium_bows = [(_, 5) for _ in evans.Sequence([i for i in range(6)]).mirror(sequential_duplicates=False)]
fast_bows = [(_, 3) for _ in evans.Sequence([i for i in range(4)]).mirror(sequential_duplicates=False)]
full_bows = [(_, 1) for _ in evans.Sequence([0, 1])]

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
    fermata_measures=cairn.fermata_measures_25,
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
                r"\override Staff.StaffSymbol.transparent = ##f", site="before"
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
            "cello voice",
            abjad.LilyPondLiteral(r"\stopStaff", site="before"),
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
                r"\override Staff.StaffSymbol.transparent = ##f", site="before"
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
                r"\override Staff.Rest.transparent = ##f", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "left voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.transparent = ##f", site="before"
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
                r"\override Staff.StaffSymbol.transparent = ##f", site="before"
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
                r"\override Staff.Rest.transparent = ##f", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "right voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.transparent = ##f", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        #### MUSIC
        evans.MusicCommand(
            ("string voice", (0, 98)),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(0), 2),
            evans.PitchHandler([
                -8,
                -8,
                -8,
                -8,
                [-8, -6],
                [-8, -4],
                [-8, 0],
                [-2, 0],
                [-2, 5],
                [4, 5],
                [4, 6],
                [5, 6],
                [6, 7],
                [7, 8], #
                [-8, 0],
                [-8, 0],
                [-8, 0],
                [-8, 0],
                [-8, 2],
                [-8, 4],
                [-8, 6],
                [-8, 8],
                [-7, 8],
                [-6, 8],
                [-5, 8],
                [-4, 8],
                [-3, 8],
                [-2, 8],
                [-1, 8],
                [0, 7],
                [0, 6],
                [0, 5],
                [0, 4],
                [0, 3],
                [0, 2],
                [0, 1],
                [0, 1],
                [0, 1],
                [0, 1],
                [0, 1],
                [-1, 0],
                [-2, -1],
                [-3, -2],
                [-4, -2],
                [-5, -2],
                [-6, -2],
                [-7, -3],
                [-8, -4],
                [-8, -4],
                [-8, -4],
                [-7, -4],
                [-6, -5],
                [-6, -5],
                [-6, -5],
                [-6, -5],
                [-6, -4],
                [-7, -2],
                [-7, 0],
                [-6, 0],
                [-6, 0],
                [-6, 0],
                [-6, 0],
                [-6, 1],
                [-7, 2],
                [-8, 3],
                [-8, 4],
                [-8, 5],
                [-8, 6],
                [-8, 7],
                [-8, 8],
                [-8, 8],
                [-8, 8],
                [-8, 8],
                [-8, 8],
                [-8, 8],
                [-7, 8],
                [-5, 8],
                [-3, 8],
                [0, 8],
                [0, 8],
                [0, 8],
                [0, 8],
                [0, 8],
                [0, 8],
                [1, 8],
                [2, 8],
                [3, 8],
                [4, 8],
                [5, 8],
                [5, 8],
                [5, 8],
                [5, 8],
                [5, 8],
                [5, 7],
                [5, 7],
                [5, 6],
                [5, 6],
                [5, 6],
                [6, 7],
                [7, 8],
                [7, 8],
                [7, 8],
                [6, 7],
                [5, 6],
                [5, 6],
                [5, 6],
                [4, 5],
                [3, 4],
                [2, 3],
                [1, 2],
                [0, 1],
                [-1, 0],
                [-2, 0],
                [-3, 0],
                [-4, -0],
                [-5, -0],
                [-6, 0],
                [-7, 0],
                [-8, 0],
                [-8, -1],
                [-8, -2],
                [-8, -3],
                [-8, -4],
                [-8, -5],
                [-8, -6],
                [-8, -7],
            ], staff_positions=True),
            evans.zero_padding_glissando,
            evans.cutaway_commands,
        ),
        evans.MusicCommand(
            ("left voice", [4, 5, 6, 7]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-1), 8),
            evans.PitchHandler([-3], staff_positions=True),
            abjad.LilyPondLiteral(
                r"\override Staff.TupletBracket.direction = #down",
                site="before",
            ),
        ),
        evans.MusicCommand(
            ("left voice", [8, 9, 10, 11]),
            # evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(0), 8),
            evans.tuplet(
                evans.Sequence([(1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1, 1)]).mirror(sequential_duplicates=False).rotate(0),
            ),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [12, 13, 14, 15]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(1), 8),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [16, 17, 18, 19]),
            # evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(2), 8),
            evans.tuplet(
                evans.Sequence([(1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1, 1)]).mirror(sequential_duplicates=False).rotate(2),
            ),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [20, 21, 22, 23]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(3), 8),
            evans.PitchHandler([1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [24, 25, 26, 27]),
            # evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(4), 8),
            evans.tuplet(
                evans.Sequence([(1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1, 1)]).mirror(sequential_duplicates=False).rotate(4),
            ),
            evans.PitchHandler([[1, 3]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [28, 29, 30, 31]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(5), 8),
            evans.PitchHandler([3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [32, 33, 34, 35]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(6), 8),
            evans.PitchHandler([[1, 3]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [36, 37, 38, 39]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(7), 8),
            evans.PitchHandler([[1, 3]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [40, 41, 42, 43]),
            # evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(8), 8),
            evans.tuplet(
                evans.Sequence([(1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1, 1)]).mirror(sequential_duplicates=False).rotate(8),
            ),
            evans.PitchHandler([3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [44, 45, 46, 47]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(9), 8),
            evans.PitchHandler([3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [48, 49, 50, 51]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(10), 8),
            evans.PitchHandler([3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [52, 53, 54, 55]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(11), 8),
            evans.PitchHandler([3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [56, 57, 58, 59]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(12), 8),
            evans.PitchHandler([3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [60, 61, 62, 63]),
            # evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(13), 8),
            evans.tuplet(
                evans.Sequence([(1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1, 1)]).mirror(sequential_duplicates=False).rotate(13),
            ),
            evans.PitchHandler([3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [64, 65, 66, 67]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(14), 8),
            evans.PitchHandler([[1, 3]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [68, 69, 70, 71]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(15), 8),
            evans.PitchHandler([[1, 3]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [72, 73, 74, 75]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(16), 8),
            evans.PitchHandler([1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [76, 77, 78, 79]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(17), 8),
            evans.PitchHandler([[1, 3]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [80, 81, 82, 83]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(18), 8),
            evans.PitchHandler([1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [84, 85, 86, 87]),
            # evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(19), 8),
            evans.tuplet(
                evans.Sequence([(1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1, 1)]).mirror(sequential_duplicates=False).rotate(19),
            ),
            evans.PitchHandler([-1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [88, 89, 90, 91]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(20), 8),
            evans.PitchHandler([1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [92, 93, 94, 95]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(21), 8),
            evans.PitchHandler([-1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("left voice", [96, 97]),
            evans.talea(
                evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(22),
                8,
                pre_commands=[
                    lambda _: rmakers.force_rest(abjad.select.leaf(_, -1)),
                ],
            ),
            # evans.Attachment(
            #     abjad.AfterGraceContainer(["c'16"]),
            #     selector=lambda _: abjad.select.leaf(_, -1),
            # ),
            evans.PitchHandler([-3], staff_positions=True),
            evans.Attachment(
                abjad.LilyPondLiteral(
                    r"\revert Staff.TupletBracket.direction",
                    site="after",
                ),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
        ),
        ### Other hand
        evans.MusicCommand(
            ("right voice", [0, 1, 2, 3]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(0), 8),
            evans.PitchHandler([-3], staff_positions=True),
            evans.cutaway_commands,
            evans.Attachment(
                abjad.LilyPondLiteral(
                    r"\override Staff.TupletBracket.direction = #down",
                    site="before",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
        ),
        evans.MusicCommand(
            ("right voice", [4, 5, 6, 7]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-1), 8),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [8, 9, 10, 11]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-2), 8),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [12, 13, 14, 15]),
            # evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-3), 8),
            evans.tuplet(
                evans.Sequence([(1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1, 1)]).mirror(sequential_duplicates=False).rotate(-3),
            ),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [16, 17, 18, 19]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-4), 8),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [20, 21, 22, 23]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-5), 8),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [24, 25, 26, 27]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-6), 8),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [28, 29, 30, 31]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-7), 8),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [32, 33, 34, 35]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-8), 8),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [36, 37, 38, 39]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-9), 8),
            evans.PitchHandler([-1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [40, 41, 42, 43]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-10), 8),
            evans.PitchHandler([-1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [44, 45, 46, 47]),
            # evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-11), 8),
            evans.tuplet(
                evans.Sequence([(1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1, 1)]).mirror(sequential_duplicates=False).rotate(-11),
            ),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [48, 49, 50, 51]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-12), 8),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [52, 53, 54, 55]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-13), 8),
            evans.PitchHandler([[-1, 1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [56, 57, 58, 59]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-14), 8),
            evans.PitchHandler([1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [60, 61, 62, 63]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-15), 8),
            evans.PitchHandler([[-1, 1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [64, 65, 66, 67]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-16), 8),
            evans.PitchHandler([[-1, 1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [68, 69, 70, 71]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-17), 8),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [72, 73, 74, 75]),
            # evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-18), 8),
            evans.tuplet(
                evans.Sequence([(1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1, 1)]).mirror(sequential_duplicates=False).rotate(-18),
            ),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [76, 77, 78, 79]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-19), 8),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [80, 81, 82, 83]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-20), 8),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [84, 85, 86, 87]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-21), 8),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [88, 89, 90, 91]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-22), 8),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [92, 93, 94, 95]),
            evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-23), 8),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [96, 97]),
            # evans.talea(evans.Sequence([2, 2, 3, 2, 1, 2, 1, 1, 1]).rotate(-24), 8),
            evans.tuplet(
                evans.Sequence([(1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1, 1, 1)]).mirror(sequential_duplicates=False).rotate(-24),
                pre_commands=[
                    lambda _: rmakers.force_rest(abjad.select.leaf(_, -1)),
                ],
            ),
            # evans.Attachment(
            #     abjad.AfterGraceContainer(["c'16"]),
            #     selector=lambda _: abjad.select.leaf(_, -1),
            # ),
            evans.PitchHandler([-3], staff_positions=True),
            evans.Attachment(
                abjad.LilyPondLiteral(
                    r"\revert Staff.TupletBracket.direction",
                    site="after",
                ),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
        ),
        #### Bowings
        evans.call(
            "right voice",
            lambda _: baca.bcps(
                _,
                fast_bows + fast_bows + fast_bows + full_bows + full_bows + full_bows + fast_bows + medium_bows + medium_bows + slow_bows + slow_bows + medium_bows + slow_bows + medium_bows + fast_bows + fast_bows + fast_bows + fast_bows + full_bows + fast_bows + medium_bows,
                abjad.Tweak(r"\tweak staff-padding #4"),
                bow_change_tweaks=(
                    # abjad.Tweak(r"\tweak self-alignment-X #left"),
                    abjad.Tweak(r"\tweak staff-padding #6"),
                ),
                final_spanner=False,
            ),
            selector=lambda _: _,
        ),
        evans.call(
            "right voice",
            evans.hairpin(
                "f > pp < ff > p <",
                counts=[21],
                cyclic=True,
                pitched=True,
                final_hairpin=False,
                remove_length_1_spanner_start=False,
            ),
            selector=lambda _: _,
        ),
        # evans.attach(
        #     "right voice",
        #     abjad.StartHairpin(">"),
        #     selector=lambda _: abjad.select.leaf(_, -14),
        # ),
        # evans.attach(
        #     "right voice",
        #     abjad.Dynamic("p"),
        #     selector=lambda _: abjad.select.leaf(_, -5),
        # ),
        evans.call(
            "left voice",
            lambda _: baca.bcps(
                _,
                evans.Sequence(fast_bows + fast_bows + fast_bows + full_bows + full_bows + full_bows + fast_bows + medium_bows + medium_bows + slow_bows + slow_bows + medium_bows + slow_bows + medium_bows + fast_bows + fast_bows + fast_bows + fast_bows + full_bows + fast_bows + medium_bows).rotate(21),
                abjad.Tweak(r"\tweak staff-padding #4"),
                bow_change_tweaks=(
                    # abjad.Tweak(r"\tweak self-alignment-X #left"),
                    abjad.Tweak(r"\tweak staff-padding #6"),
                ),
                final_spanner=False,
            ),
            selector=lambda _: _,
        ),
        evans.call(
            "left voice",
            evans.hairpin(
                "f > pp < ff > p <",
                counts=[10],
                cyclic=True,
                pitched=True,
                final_hairpin=False,
                remove_length_1_spanner_start=False,
            ),
            selector=lambda _: _,
        ),
        #### Cleanup
        evans.call(
            "score",
            evans.SegmentMaker.beam_score_without_splitting,
            lambda _: abjad.select.components(_, abjad.Score),
        ),
        evans.attach(
            "Global Context",
            cairn.lib.mark_52,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            cairn.lib.met_52,
            lambda _: abjad.select.leaf(_, 0),
        ),
        ####
        # evans.attach(
        #     "violin voice",
        #     abjad.Markup(r"\colophon"),
        #     lambda _: abjad.select.leaf(_, -3),
        #     direction=abjad.DOWN,
        # ),
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
    time_signatures=cairn.signatures_25,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="25",
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
