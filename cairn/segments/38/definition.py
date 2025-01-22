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
    fermata_measures=cairn.fermata_measures_38,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=38),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        ## Cello
        # evans.attach(
        #     "cello voice",
        #     abjad.Clef("treble"),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
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
        # evans.MusicCommand(
        #     ("cello voice", [0, 1, 2, 3, 4, 5, 6, 7, 8]),
        #     evans.accelerando(((1, 6), (1, 20), (1, 16)), ((1, 6), (1, 30), (1, 16)), ((1, 25), (1, 8), (1, 16)), ((1, 9), (1, 15), (1, 16))),
        #     evans.ArticulationHandler(["scrape-circular-clockwise"]),
        #     abjad.Dynamic("mp"),
        #     abjad.StartHairpin("<"),
        #     evans.Attachment(
        #         abjad.Dynamic("ff"),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
        # ),
        # evans.call(
        #     "cello voice",
        #     evans.PitchHandler(["ef''"]),
        #     selector=evans.select_measures([0]),
        # ),
        # evans.attach(
        #     "cello voice",
        #     abjad.Clef("treble"),
        #     selector=evans.select_measures([0], leaf=0),
        # ),
        # evans.call(
        #     "cello voice",
        #     evans.PitchHandler(["dqs'"]),
        #     selector=evans.select_measures([1]),
        # ),
        # evans.call(
        #     "cello voice",
        #     evans.PitchHandler(["f'"]),
        #     selector=evans.select_measures([2]),
        # ),
        # evans.call(
        #     "cello voice",
        #     evans.PitchHandler(["d"]),
        #     selector=evans.select_measures([3]),
        # ),
        # evans.attach(
        #     "cello voice",
        #     abjad.Clef("bass"),
        #     selector=evans.select_measures([3], leaf=0),
        # ),
        # evans.call(
        #     "cello voice",
        #     evans.PitchHandler(["ef''"]),
        #     selector=evans.select_measures([4]),
        # ),
        # evans.attach(
        #     "cello voice",
        #     abjad.Clef("treble"),
        #     selector=evans.select_measures([4], leaf=0),
        # ),
        # evans.call(
        #     "cello voice",
        #     evans.PitchHandler(["dqs'"]),
        #     selector=evans.select_measures([5]),
        # ),
        # evans.call(
        #     "cello voice",
        #     evans.PitchHandler(["f'"]),
        #     selector=evans.select_measures([6]),
        # ),
        # evans.call(
        #     "cello voice",
        #     evans.PitchHandler(["d"]),
        #     selector=evans.select_measures([7]),
        # ),
        # evans.attach(
        #     "cello voice",
        #     abjad.Clef("bass"),
        #     selector=evans.select_measures([7], leaf=0),
        # ),
        # evans.call(
        #     "cello voice",
        #     evans.PitchHandler(["ef''"]),
        #     selector=evans.select_measures([8]),
        # ),
        # evans.attach(
        #     "cello voice",
        #     abjad.Clef("treble"),
        #     selector=evans.select_measures([8], leaf=0),
        # ),
        evans.MusicCommand(
            ("cello voice", [0, 1, 2, 3, 4, 5, 6, 7, 8]),
            evans.talea(
                [1],
                16,
                extra_counts=evans.Sequence([0, 1, 2, 3]).zipped_bifurcation(),
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                evans.Sequence.range(-24, 12, 0.5).mirror(sequential_duplicates=False).rotate(30).random_walk(random_seed=1, length=700, step_list=[2, 2, 2, 1, 2, 2]).remove_repeats()
            ),
            abjad.Clef("bass"),
            # evans.Attachment(
            #     abjad.Clef("treble"),
            #     selector=lambda _: abjad.select.leaf(_, 89),
            # ),
            # lambda _: [abjad.attach(abjad.Markup(rf"\markup {i}"), leaf) for i, leaf in enumerate(abjad.select.leaves(_))],
            evans.slur([3, 3, 4, 6, 5, 7, 5, 9, 10, 6, 3, 8, 3, 6]),
            evans.hairpin("f > mp < ff > pp < f |> p < ff |> mf < f > p <", [3, 3, 4, 5, 4, 3, 11, 7, 14, 6, 4, 8, 5]),
            lambda _: baca.text_spanner(
                _,
                ["P", "->", "T", "->", "N", "->", "P", "->", "N", "->"],
                abjad.Tweak(r"\tweak staff-padding #6.5"),
                pieces=lambda x: abjad.select.partition_by_counts(abjad.select.logical_ties(x), [7, 11, 5], cyclic=True, overhang=True),
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
            cairn.lib.mark_117,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            cairn.lib.met_117,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_38,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="38",
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
