import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn

lorca_pitch = evans.PitchHandler(evans.Sequence(cairn.k_net_sequence).rotate(20), forget=False)

def long_trills(selections):
    ties = abjad.select.logical_ties(selections)
    for tie in ties:
        if 1 < len(tie):
            abjad.attach(abjad.StartTrillSpan(), tie[0])
            abjad.attach(abjad.StopTrillSpan(), abjad.get.leaf(abjad.select.leaf(tie, -1), 1))

def get_short_ties(selections):
    ties = abjad.select.logical_ties(selections)
    out = [_ for _ in ties if len(_) < 2]
    return out

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
    fermata_measures=cairn.fermata_measures_03,
    commands=[
        ## Cello
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=3),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
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
        # evans.MusicCommand(
        #     ("cello voice", [0, 1, 2, 3, 4, 5, 6]), # wood
        #     evans.note(
        #         preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[2], split_at_measure_boundaries=True),
        #     ),
        #     evans.Attachment(
        #         abjad.Markup(r"\markup {on bridge}"),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #         direction=abjad.UP,
        #     ),
        #     abjad.LilyPondLiteral(r"\staff-line-count 1", site="absolute_before"),
        #     abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
        #     abjad.Dynamic("ppp"),
        #     evans.ArticulationHandler(
        #         ["tongue #3"],
        #         articulation_boolean_vector=[0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1],
        #     ),
        # ),
        evans.MusicCommand(
            ("cello voice", [0, 1, 2, 3, 4, 5, 6]),
            evans.talea(
                [5, 1, 1, 1, 3, 2, 2, 1],
                16,
                extra_counts=[0, 1, 0, 2],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            lorca_pitch,
            lambda _: evans.contour(
                _,
                ([0, 1, 2], evans.Lapidary("up", "previous alteration", "centroid octave"),),
                ([3, 4], evans.Lapidary("down", "previous alteration", "centroid octave"),),
                ([5, 6, 7], evans.Lapidary("down", "previous alteration", "centroid octave"),),
                ([8, 9], evans.Lapidary("up", "previous alteration", "centroid octave"),),
                ([30, 31, 32], evans.Lapidary("down", "previous alteration", "centroid octave"),),
                ([50, 51], evans.Lapidary("down", "previous alteration", "octave above"),),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
            long_trills,
            lambda _: evans.ArticulationHandler(
                [
                    "scrape-circular-clockwise",
                    "scrape-circular-clockwise",
                    "scrape-circular-clockwise",
                    "accent",
                    "accent",
                    "scrape-circular-clockwise",
                    "scrape-circular-clockwise",
                    "scrape-circular-clockwise",
                    "scrape-circular-clockwise",
                    "scrape-circular-clockwise",
                    "accent",
                    "accent",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                ],
                articulation_boolean_vector=[1],
            )(get_short_ties(_)),
            lambda _: baca.hairpin(
                _,
                "f > p < ff > pp < mp < mf > p <",
                pieces=lambda x: abjad.select.partition_by_counts(abjad.select.logical_ties(x), [5, 7, 11, 9, 3], cyclic=True, overhang=True),
            ),
            lambda _: baca.text_spanner(
                _,
                ["P", "->", "T", "->", "P", "->", "N", "->", "P", "->", "XP", "->"],
                abjad.Tweak(r"\tweak staff-padding #7.5"),
                pieces=lambda x: abjad.select.partition_by_counts(abjad.select.logical_ties(x), [3, 9, 7, 5], cyclic=True, overhang=True),
            ),
        ),
        #### Cleanup
        evans.call(
            "score",
            evans.SegmentMaker.beam_score_without_splitting,
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
    time_signatures=cairn.signatures_03,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="03",
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
