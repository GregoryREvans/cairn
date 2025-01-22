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
    fermata_measures=cairn.fermata_measures_14,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=14),
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
            ("cello voice", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
            evans.talea(
                [12, 4, 3, 4, 3, 2, 5, 3, 4, 2],
                16,
                extra_counts=[],
                preamble=[1, 1, 1, 1, 1, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                evans.PitchSegment([0, -9, 1, -8, -4, -3, 2, [2, 7], [3, 8], [-4, 1], [-2, 3], [-9, -4], [-6, -1], [0, 5], [-1, 4], [4, 9], [1, 6], [-1, -1+5], [0, 5], [-3, -3+5], [-4, -4+5], [-7, -7+5], [-5, -5+5], [-4, -4+5], [-3, -3+5], [-2, -2+5], [3, 3+5], [8, 8+5], [7, 7+5], [9, 9+5], [0, 5], [6, 6+5], [-4, -4+5], [2, 2+5], [-5, -5+5], [1, 1+5], [-3, -3+5], [-4, -4+5], [-5, -5+5], [-6, -6+5], [-7, -7+5], [-8, -8+5]]).invert(0.5).multiply(1.5).transpose(-12).hexpole().transpose(-34).to_sequence().grouper([1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2])
            ),
            lambda _: evans.ArticulationHandler(["accent"])(abjad.select.get(abjad.select.leaves(_), [0, 1, 2, 3, 4, 5])),
            lambda _: abjad.glissando(abjad.select.logical_ties(_)[7:]),
            lambda _: [abjad.tweak(leaf.note_heads[1], r"\tweak NoteHead.style #'harmonic") for leaf in abjad.select.chords(_)],
            lambda _: evans.ArticulationHandler(["tremolo"], articulation_boolean_vector=[0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1])(abjad.select.logical_ties(_)[7:]),
            lambda _: evans.ArticulationHandler(["accent"], articulation_boolean_vector=[0, 1, 0, 0, 1])(abjad.select.logical_ties(_)[7:21]),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
                selector=lambda _: abjad.select.leaf(_, 5),
            ),
            lambda _: baca.trill_spanner(abjad.select.logical_tie(_, 6), alteration="+P4", harmonic=True),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 6),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(_, 6),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 9),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 9),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 11),
            ),
            evans.Attachment(
                abjad.StartHairpin("|>"),
                selector=lambda _: abjad.select.leaf(_, 11),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 13),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 13),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 16),
            ),
            evans.Attachment(
                abjad.StartHairpin("|>"),
                selector=lambda _: abjad.select.leaf(_, 16),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 17),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 17),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 20),
            ),
            evans.Attachment(
                abjad.StartHairpin("|>"),
                selector=lambda _: abjad.select.leaf(_, 20),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 22),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 22),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 24),
            ),
            evans.Attachment(
                abjad.StartHairpin("|>"),
                selector=lambda _: abjad.select.leaf(_, 24),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 26),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 26),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 27),
            ),
            evans.Attachment(
                abjad.StartHairpin("|>"),
                selector=lambda _: abjad.select.leaf(_, 27),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 29),
            ),
            evans.Attachment(
                abjad.StartHairpin(">o"),
                selector=lambda _: abjad.select.leaf(_, 29),
            ),
            evans.Attachment(
                abjad.StartHairpin("o<"),
                selector=lambda _: abjad.select.leaf(_, 33),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "non gridato"'),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 7"
                ),
                selector=lambda _: abjad.select.leaf(_, 33),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, (len(abjad.select.leaves(_)[33:])//2)+33),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "molto gridato"'),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 7"
                ),
                selector=lambda _: abjad.select.leaf(_, (len(abjad.select.leaves(_)[33:])//2)+33),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, -6),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "quasi gridato"'),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 7"
                ),
                selector=lambda _: abjad.select.leaf(_, -6),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright N'),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 9"
                ),
                selector=lambda _: abjad.select.leaf(_, 33),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command="\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 39),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright P'),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 9"
                ),
                selector=lambda _: abjad.select.leaf(_, 39),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command="\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 42),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright T'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 9",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 42),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command="\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 44),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright spz.'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 9",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 44),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command="\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 49),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright T'),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 9"
                ),
                selector=lambda _: abjad.select.leaf(_, 49),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command="\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 52),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright P'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 9",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 52),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command="\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 54),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright spz.'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 9",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 54),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command="\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 59),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright P'),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 9",
                ),
                selector=lambda _: abjad.select.leaf(_, 59),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command="\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 63),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright XP'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 9",
                    # r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 63),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command="\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            #     abjad.StopTextSpan(command=r"\stopTextSpanOne",),
            #     selector=lambda _: abjad.select.leaf(_, 0),
            # ),
            # evans.Attachment(
            #     abjad.StopTextSpan(),
            #     selector=lambda _: abjad.select.leaf(_, 0),
            # ),
        ),
        evans.MusicCommand(
            ("temporary voice", [6, 7, 8, 9]),
            evans.make_tied_notes(),
            evans.PitchHandler(["g,"]),
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
            cairn.lib.mark_32,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            cairn.lib.met_32,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_14,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="14",
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
