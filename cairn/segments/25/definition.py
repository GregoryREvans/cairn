import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn

extreme_slow_bow_divisions = evans.make_preprocessor(fuse_counts=[3, 2])
extreme_slow_bow_divisions_b = evans.make_preprocessor(fuse_counts=[2, 3])
slow_bow_divisions = evans.make_preprocessor(fuse_counts=[2, 1])
slow_bow_divisions_b = evans.make_preprocessor(fuse_counts=[1, 2])
medium_bow_divisions = evans.make_preprocessor(fuse_counts=[1])
fast_bow_divisions = evans.make_preprocessor(quarters=True, fuse_counts=[2, 1], split_at_measure_boundaries=True)
fast_bow_divisions_b = evans.make_preprocessor(quarters=True, fuse_counts=[1, 2], split_at_measure_boundaries=True)
extreme_fast_bow_divisions = evans.make_preprocessor(eighths=True, fuse_counts=[1, 2], split_at_measure_boundaries=True)
extreme_fast_bow_divisions_b = evans.make_preprocessor(eighths=True, fuse_counts=[2, 1], split_at_measure_boundaries=True)

full_bows = evans.add_bowings(full_bow=True, stop_on_string=False)

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
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=25),
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
        #         r"\override Staff.StaffSymbol.transparent = ##f", site="before"
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
        #     "cello voice",
        #     abjad.LilyPondLiteral(r"\stopStaff", site="before"),
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
        #         r"\override Staff.StaffSymbol.transparent = ##f", site="before"
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
        #         r"\override Staff.Rest.transparent = ##f", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "left voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.Dots.transparent = ##f", site="before"
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
        #         r"\override Staff.StaffSymbol.transparent = ##f", site="before"
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
        #         r"\override Staff.Rest.transparent = ##f", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        # evans.attach(
        #     "right voice",
        #     abjad.LilyPondLiteral(
        #         r"\override Staff.Dots.transparent = ##f", site="before"
        #     ),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        #### MUSIC
        evans.attach(
            "Global Context",
            abjad.LilyPondLiteral([r"\barline-short-fermata"], site="after"),
            selector=lambda _: abjad.select.leaf(_, 97),
        ),
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
            # evans.cutaway_commands,
        ),
        evans.MusicCommand(
            ("left voice", [4, 5, 6, 7]),
            # extreme slow
            evans.note(preprocessor=extreme_slow_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([-3], staff_positions=True),

            abjad.LilyPondLiteral(
                r"\override Staff.TupletBracket.direction = #down",
                site="before",
            ),
        ),
        evans.MusicCommand(
            ("left voice", [8, 9, 10, 11]),
            # slow
            evans.note(preprocessor=extreme_slow_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([[-3, -1]], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [12, 13, 14, 15]),
            # medium
            evans.note(preprocessor=slow_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([[-3, -1]], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [16, 17, 18, 19]),
            # fast
            evans.note(preprocessor=slow_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([[-3, -1]], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [20, 21, 22, 23]),
            # extreme fast
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([1], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [24, 25, 26, 27]),
            # fast
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([[1, 3]], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [28, 29, 30, 31]),
            # medium
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([3], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [32, 33, 34, 35]),
            # slow
            evans.note(preprocessor=fast_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([[1, 3]], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [36, 37, 38, 39]),
            # extreme slow
            evans.note(preprocessor=fast_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([[1, 3]], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [40, 41, 42, 43]),
            # slow
            evans.note(preprocessor=fast_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([3], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [44, 45, 46, 47]),
            # medium
            evans.note(preprocessor=extreme_fast_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([3], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [48, 49, 50, 51]),
            # fast
            evans.note(preprocessor=extreme_fast_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([3], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [52, 53, 54, 55]),
            # extreme fast
            evans.note(preprocessor=extreme_fast_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([3], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [56, 57, 58, 59]),
            # fast
            evans.note(preprocessor=fast_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([3], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [60, 61, 62, 63]),
            # medium
            evans.note(preprocessor=fast_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([3], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [64, 65, 66, 67]),
            # slow
            evans.note(preprocessor=fast_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([[1, 3]], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [68, 69, 70, 71]),
            # extreme slow
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([[1, 3]], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [72, 73, 74, 75]),
            # slow
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([1], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [76, 77, 78, 79]),
            # medium
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([[1, 3]], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [80, 81, 82, 83]),
            # fast
            evans.note(preprocessor=slow_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([1], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [84, 85, 86, 87]),
            # extreme fast
            evans.note(preprocessor=slow_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([-1], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [88, 89, 90, 91]),
            # fast
            evans.note(preprocessor=slow_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([1], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [92, 93, 94, 95]),
            # medium
            evans.note(preprocessor=extreme_slow_bow_divisions_b, rewrite=-1),
            evans.PitchHandler([-1], staff_positions=True),

        ),
        evans.MusicCommand(
            ("left voice", [96, 97]),
            # slow
            evans.note(preprocessor=slow_bow_divisions_b, rewrite=-1),
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
            evans.note(preprocessor=extreme_slow_bow_divisions, rewrite=-1),
            evans.PitchHandler([-3], staff_positions=True),
            # evans.cutaway_commands,
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
            evans.note(preprocessor=extreme_slow_bow_divisions, rewrite=-1),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [8, 9, 10, 11]),
            evans.note(preprocessor=extreme_slow_bow_divisions, rewrite=-1),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [12, 13, 14, 15]),
            evans.note(preprocessor=slow_bow_divisions, rewrite=-1),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [16, 17, 18, 19]),
            evans.note(preprocessor=slow_bow_divisions, rewrite=-1),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [20, 21, 22, 23]),
            evans.note(preprocessor=slow_bow_divisions, rewrite=-1),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [24, 25, 26, 27]),
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [28, 29, 30, 31]),
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [32, 33, 34, 35]),
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [36, 37, 38, 39]),
            evans.note(preprocessor=fast_bow_divisions, rewrite=-1),
            evans.PitchHandler([-1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [40, 41, 42, 43]),
            evans.note(preprocessor=fast_bow_divisions, rewrite=-1),
            evans.PitchHandler([-1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [44, 45, 46, 47]),
            evans.note(preprocessor=fast_bow_divisions, rewrite=-1),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [48, 49, 50, 51]),
            evans.note(preprocessor=extreme_fast_bow_divisions, rewrite=-1),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [52, 53, 54, 55]),
            evans.note(preprocessor=extreme_fast_bow_divisions, rewrite=-1),
            evans.PitchHandler([[-1, 1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [56, 57, 58, 59]),
            evans.note(preprocessor=extreme_fast_bow_divisions, rewrite=-1),
            evans.PitchHandler([1], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [60, 61, 62, 63]),
            evans.note(preprocessor=fast_bow_divisions, rewrite=-1),
            evans.PitchHandler([[-1, 1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [64, 65, 66, 67]),
            evans.note(preprocessor=fast_bow_divisions, rewrite=-1),
            evans.PitchHandler([[-1, 1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [68, 69, 70, 71]),
            evans.note(preprocessor=fast_bow_divisions, rewrite=-1),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [72, 73, 74, 75]),
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [76, 77, 78, 79]),
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [80, 81, 82, 83]),
            evans.note(preprocessor=medium_bow_divisions, rewrite=-1),
            evans.PitchHandler([[-3, -1]], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [84, 85, 86, 87]),
            evans.note(preprocessor=slow_bow_divisions, rewrite=-1),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [88, 89, 90, 91]),
            evans.note(preprocessor=slow_bow_divisions, rewrite=-1),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [92, 93, 94, 95]),
            evans.note(preprocessor=slow_bow_divisions, rewrite=-1),
            evans.PitchHandler([-3], staff_positions=True),
        ),
        evans.MusicCommand(
            ("right voice", [96, 97]),
            evans.note(preprocessor=extreme_slow_bow_divisions, rewrite=-1),
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
            full_bows,
            selector=lambda _: _,
        ),
        evans.call(
            "right voice",
            evans.hairpin(
                "f > pp < ff > p <",
                counts=[7],
                cyclic=True,
                pitched=True,
                final_hairpin=False,
                remove_length_1_spanner_start=False,
            ),
            selector=lambda _: _,
        ),
        evans.call(
            "left voice",
            full_bows,
            selector=lambda _: _,
        ),
        evans.call(
            "left voice",
            evans.hairpin(
                "f > pp < ff > p <",
                counts=[5],
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
