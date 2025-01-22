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
    fermata_measures=cairn.fermata_measures_15,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=15),
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
        # evans.MusicCommand(
        #     ("cello voice", [0, 1, 2, 3, 4, 5, 6]),
        #     evans.talea(
        #         [1],
        #         16,
        #         extra_counts=evans.Sequence([-4, -1, -1, -1, 0, 0, 1, 1, 2, 2, 3, 3, 4]).zipped_bifurcation(),
        #         preprocessor=evans.make_preprocessor(quarters=True),
        #     ),
        #     evans.PitchHandler(
        #         evans.Sequence.range(-24, 12, 0.5).mirror(sequential_duplicates=False).rotate(8).random_walk(random_seed=2, length=500, step_list=[1, 1, 1, 2, 1, 1]).remove_repeats()
        #     ),
        #     evans.slur([4, 4, 5, 7, 5, 9, 8, 3, 6]),
        #     evans.hairpin("p < f > mp < ff > pp <| f > p <| ff > mf < f >", [4, 14, 6, 11, 5]),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright P"),
        #                 style=r"solid-line-with-arrow",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 6.5"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//4),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright N"),
        #                 style=r"solid-line-with-arrow",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 6.5"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//4),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright {\fraction 1 2 P}"),
        #                 style=r"solid-line-with-arrow",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 6.5"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2 + 6),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright {\fraction 1 2 T}"),
        #                 style=r"solid-line-with-arrow",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 6.5"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2 + 6),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2 + 6 + 9),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright N"),
        #                 style=r"solid-line-with-arrow",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 6.5"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2 + 6 + 9),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2 + 6 + 9 + 4),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright P"),
        #                 style=r"solid-line-with-arrow",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 6.5"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2 + 6 + 9 + 4),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2 + 6 + 9 + 4 + 12),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright N"),
        #                 style=r"solid-line-with-arrow",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 6.5"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2 + 6 + 9 + 4 + 12),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2 + 6 + 9 + 4 + 12 + 13),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright P"),
        #                 style=r"solid-line-with-arrow",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 6.5"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2 + 6 + 9 + 4 + 12 + 13),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.select.leaf(_, -5),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright XP"),
        #                 style=r"dashed-line-with-hook",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 6.5"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, -5),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        # ),
        evans.MusicCommand(
            ("temporary voice", [0, 1, 2]),
            evans.make_tied_notes(),
            evans.PitchHandler(["g,"]),
            abjad.Clef("bass"),
        ),
        evans.MusicCommand(
            ("cello voice", [0, 1, 2, 3, 4, 5, 6]),
            evans.talea(
                [
                    12,
                    1, 1, 1, 1, 1, 1,
                    8,
                    1, 1, 1, 1, 1, 2, 1, 2,
                    6,
                ],
                8,
            ),
            evans.PitchHandler([_ - 12 for _ in [
                -9,
                -8, -8.5, -7, -7.5, -8, -7.5,
                -7,
                -6, -4, -5.5, -6, -6.5, -4, -4.5, -5.5,
                -5,
            ]]),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 6),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 11),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 12),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 13),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 14),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 16),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 18),
            ),
            evans.ArticulationHandler(["tremolo"], articulation_boolean_vector=[1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright T"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 4"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 6),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright N"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 4"
                ),
                selector=lambda _: abjad.select.leaf(_, 6),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 11),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {\fraction 1 2 T}"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 4"
                ),
                selector=lambda _: abjad.select.leaf(_, 11),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 13),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {\fraction 1 2 P}"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 4"
                ),
                selector=lambda _: abjad.select.leaf(_, 13),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 16),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 4"
                ),
                selector=lambda _: abjad.select.leaf(_, 16),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 18),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright XP"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 4"
                ),
                selector=lambda _: abjad.select.leaf(_, 18),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("mf"),
                selector=lambda _: abjad.select.leaf(_, (len(abjad.select.leaves(_)) // 2) // 2),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(_, (len(abjad.select.leaves(_)) // 2) // 2),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_)) // 2),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_)) // 2),
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, -1),
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
    time_signatures=cairn.signatures_15,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="15",
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
