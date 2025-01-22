import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn
###
### make long gridato thing go ahead and use a random walk
###

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
    fermata_measures=cairn.fermata_measures_24,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=24),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        ## Cello
        # evans.attach(
        #     "cello voice",
        #     abjad.Clef("tenor"),
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
        #     ("cello voice", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]),
        #     evans.talea(
        #         [12, 4, 3, 4, 3, 2, 5, 3, 4, 2],
        #         16,
        #         extra_counts=[],
        #         preamble=[1, 1, 1, 1, 1, 1],
        #         preprocessor=evans.make_preprocessor(quarters=True),
        #         rewrite=-1,
        #     ),
        #     evans.PitchHandler(
        #         [
        #             0, -2-7, 1, -1-7, -4, -3,
        #             2,
        #             [2, 2+5], [3, 3+5], [-4, -4+5], [-2, -2+5], [-9, -9+5], [-6, -6+5], [0, 0+5], [-1, -1+5], [4, 4+5], [1, 1+5],
        #             [2, 2+5], [3, 3+5], [-4, -4+5], [-2, -2+5], [-9, -9+5], [-6, -6+5], [0, 0+5], [-1, -1+5], [4, 4+5], [1, 1+5],
        #             [2, 2+5], [3, 3+5], [-4, -4+5], [-2, -2+5], [-9, -9+5], [-6, -6+5], [0, 0+5], [-1, -1+5], [4, 4+5], [1, 1+5],
        #             [2, 2+5], [3, 3+5], [-4, -4+5], [-2, -2+5], [-9, -9+5], [-6, -6+5], [0, 0+5], [-1, -1+5], [4, 4+5], [1, 1+5],
        #             [2, 2+5], [3, 3+5], [-4, -4+5], [-2, -2+5], [-9, -9+5], [-6, -6+5], [0, 0+5], [-1, -1+5], [4, 4+5], [1, 1+5],
        #             [2, 2+5], [3, 3+5], [-4, -4+5], [-2, -2+5], [-9, -9+5], [-6, -6+5], [0, 0+5], [-1, -1+5], [4, 4+5], [1, 1+5],
        #             [2, 2+5], [3, 3+5], [-4, -4+5], [-2, -2+5], [-9, -9+5], [-6, -6+5], [0, 0+5], [-1, -1+5], [4, 4+5], [1, 1+5],
        #             [2, 2+5], [3, 3+5], [-4, -4+5], [-2, -2+5], [-9, -9+5], [-6, -6+5], [0, 0+5], [-1, -1+5], [4, 4+5], [1, 1+5],
        #         ]
        #     ),
        #     lambda _: evans.ArticulationHandler(["accent"])(abjad.select.get(abjad.select.leaves(_), [0, 1, 2, 3, 4, 5])),
        #     lambda _: abjad.glissando(abjad.select.logical_ties(_)[7:]),
        #     lambda _: [abjad.tweak(leaf.note_heads[1], r"\tweak NoteHead.style #'harmonic") for leaf in abjad.select.chords(_)],
        #     lambda _: evans.ArticulationHandler(["tremolo"], articulation_boolean_vector=[0, 1, 0, 0, 1])(abjad.select.logical_ties(_)[7:]),
        #     lambda _: evans.ArticulationHandler(["accent"], articulation_boolean_vector=[0, 1, 0, 0, 1])(abjad.select.logical_ties(_)[7:]),
        #     evans.Attachment(
        #         abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
        #         selector=lambda _: abjad.select.leaf(_, 5),
        #     ),
        #     lambda _: baca.trill_spanner(abjad.select.logical_tie(_, 6), alteration="+P4", harmonic=True),
        #     evans.Attachment(
        #         abjad.Dynamic("f"),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StartHairpin("<|"),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     lambda _: baca.hairpin(
        #         _,
        #         "ff > mp <| ff |> mp <|",
        #         pieces=lambda x: abjad.select.partition_by_counts(abjad.select.logical_ties(x)[6:], [3, 5, 4, 6], cyclic=True, overhang=True)),
        #     abjad.Clef("tenor"),
        # ),
        evans.MusicCommand(
            ("cello voice", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]),
            evans.note(),
            evans.PitchHandler(
                evans.Sequence.range(-24, -7).mirror(sequential_duplicates=False).rotate(5).random_walk(random_seed=5, length=200, step_list=[1, 2, 1, 1, 2])
            ),
            abjad.glissando,
            abjad.Clef("bass"),
            abjad.Dynamic("ff"),
            lambda _: baca.text_spanner(
                _,
                ["gridato", "->", "molto gridato", "->", "flautando", "->", "molto gridato", "->", r"½ gridato", "->", "flautando", "->", "teso", "->"],
                abjad.Tweak(r"\tweak staff-padding #3"),
                pieces=lambda x: abjad.select.logical_ties(x),
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
            cairn.lib.mark_65,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            cairn.lib.met_65,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_24,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="24",
    current_directory=pathlib.Path(__file__).parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    barline="||",
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
