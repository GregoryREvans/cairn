import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn

lorca_pitch = evans.PitchHandler(evans.Sequence(cairn.k_net_sequence).rotate(9), forget=False)
talea_maker = evans.RhythmHandler(evans.talea([4, 4, 1, 2, 1], 8), forget=False)

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
    fermata_measures=cairn.fermata_measures_04,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=4),
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
            ("cello voice", [0, 1]), # behind bridge
            # evans.note(
            #     preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[2], split_at_measure_boundaries=True),
            # ),
            talea_maker,
            evans.PitchHandler([-22, -20, -18, -17, -16, -12, -9, -6, 0]),
            abjad.glissando,
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
            evans.ArticulationHandler(["tremolo"]),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright OB"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright spz."),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 4),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 4),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            cairn.center_swell,
        ),
        # evans.MusicCommand(
        #     ("cello voice", [3]), # behind bridge
        #     talea_maker,
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright OB"),
        #                 style=r"dashed-line-with-hook",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 3",
        #             r"- \tweak bound-details.right.padding 1.25",
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
        #     ),
        #     abjad.LilyPondLiteral(r"\staff-line-count 1", site="absolute_before"),
        #     abjad.Clef("percussion"),
        #     abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
        #     abjad.Dynamic("pp"),
        # ),
        evans.MusicCommand(
            ("cello voice", [3]), # behind bridge
            evans.make_tied_notes(),
            evans.PitchHandler(["bqf,"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright gridato"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 3",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
            abjad.Dynamic("ff"),
        ),
        evans.MusicCommand(
            ("cello voice", [4, 5, 6]), # spz
            talea_maker,
            evans.PitchHandler([-22, -20, -18, -17, -16, -12, -9, -6, 0, 1]),
            abjad.glissando,
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
            evans.ArticulationHandler(["tremolo"]),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright OB"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 4),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright spz."),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 4),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            abjad.Clef("bass"),
            cairn.center_swell,
        ),
        # evans.MusicCommand(
        #     ("cello voice", [7]), # behind bridge
        #     talea_maker,
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright OB"),
        #                 style=r"dashed-line-with-hook",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 3",
        #             r"- \tweak bound-details.right.padding 1.25",
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
        #     ),
        #     abjad.LilyPondLiteral(r"\staff-line-count 1", site="absolute_before"),
        #     abjad.Clef("percussion"),
        #     abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
        #     abjad.Dynamic("mp"),
        # ),
        evans.MusicCommand(
            ("cello voice", [7]), # behind bridge
            evans.make_tied_notes(),
            evans.PitchHandler(["bf,"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright gridato"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 3",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
            abjad.Dynamic("ff"),
        ),
        # evans.MusicCommand(
        #     ("cello voice", [9]), # behind bridge
        #     talea_maker,
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright OB"),
        #                 style=r"dashed-line-with-hook",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 3",
        #             r"- \tweak bound-details.right.padding 1.25",
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
        #     ),
        #     abjad.LilyPondLiteral(r"\staff-line-count 1", site="absolute_before"),
        #     abjad.Clef("percussion"),
        #     abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
        #     abjad.Dynamic("mf"),
        # ),
        evans.MusicCommand(
            ("cello voice", [9]), # behind bridge
            evans.make_tied_notes(),
            evans.PitchHandler(["a,"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright gridato"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 3",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
            abjad.Dynamic("ff"),
        ),
        evans.MusicCommand(
            ("cello voice", [11, 12, 13]), # spz
            talea_maker,
            evans.PitchHandler(abjad.sequence.reverse([-22, -20, -18, -17, -16, -12, -9, -6, 0, 1])),
            abjad.glissando,
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
            evans.ArticulationHandler(["tremolo"]),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright OB"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 4),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright spz."),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 4),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            abjad.Clef("bass"),
            cairn.center_swell,
        ),
        evans.MusicCommand(
            ("cello voice", [14, 15, 16, 17]), # words
            evans.make_rtm(
                cairn.rtms.rotate(0),
                # preprocessor=evans.make_preprocessor(split_divisions_by_proportions=[(1, 1)]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            lorca_pitch,
            evans.ArticulationHandler(["tremolo"]),
            lambda _: evans.contour(
                _,
                ([0], evans.Lapidary("neutral", "previous alteration", "octave above")),
                ([14, 15], evans.Lapidary("up", "previous alteration", "centroid octave")),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            abjad.Dynamic("pp"),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "blue")', site="before"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright N"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 9"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 9"
                ),
                selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright XP"),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 9",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [18]), # gliss
            evans.tuplet(
                cairn.morse_tuplets[12],
                preprocessor=evans.make_preprocessor(quarters=True),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
            evans.PitchHandler(
                evans.Sequence.range(-24, 15).mirror(
                    sequential_duplicates=False).rotate(13).random_walk(random_seed=0, length=10, step_list=[9, 10, 11, 12, 11, 10]),
                forget=False,
            ),
            evans.zero_padding_glissando,
            evans.ArticulationHandler(["accent"]),
            evans.ArticulationHandler(["tremolo"]),
            lambda _: cairn.reverse_swell(_, dyns=["f", "p", "ff", "mf", "pp", "f"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {XT}"),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 6",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\diamond-notehead-markup"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 8",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [20, 21, 22]), # wood
            evans.talea([20, 1, 1, 8, 1, 1, 1, 1, 1, 16, 1, 1, 1, 1, 12, 1, 1, 1], 32),
            evans.PitchHandler([-3, 1, -1, -3, -1, -3, -1, -3, -1, 1, 3, 1, -1, -3, -1, 1, 3, -3, -1], staff_positions=True),
            abjad.LilyPondLiteral(r"\staff-line-count 4", site="absolute_before"),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
            abjad.Clef("percussion"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "behind bridge on wrapping"'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 5",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("ff"),
        ),
        # evans.MusicCommand(
        #     ("cello voice", [23]), # behind bridge
        #     talea_maker,
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright OB"),
        #                 style=r"dashed-line-with-hook",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 3",
        #             r"- \tweak bound-details.right.padding 1.25",
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
        #     ),
        #     abjad.LilyPondLiteral(r"\staff-line-count 1", site="absolute_before"),
        #     abjad.Clef("percussion"),
        #     abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
        #     abjad.Dynamic("pp"),
        # ),
        evans.MusicCommand(
            ("cello voice", [23]), # behind bridge
            evans.make_tied_notes(),
            evans.PitchHandler(["atqf,"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright gridato"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 3",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
            abjad.Dynamic("ff"),
            abjad.Clef("bass"),
        ),
        # evans.MusicCommand(
        #     ("cello voice", [25]), # behind bridge
        #     talea_maker,
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright OB"),
        #                 style=r"dashed-line-with-hook",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 3",
        #             r"- \tweak bound-details.right.padding 1.25",
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne"),
        #         selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
        #     ),
        #     abjad.LilyPondLiteral(r"\staff-line-count 1", site="absolute_before"),
        #     abjad.Clef("percussion"),
        #     abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
        # ),
        evans.MusicCommand(
            ("cello voice", [25]), # behind bridge
            evans.make_tied_notes(),
            evans.PitchHandler(["fs,"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright gridato"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 3",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            # abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            # abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
            abjad.Dynamic("fff"),
            # abjad.Clef("bass"),
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
        #### Fermati
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.ulongfermata"',
            ),
            evans.select_measures([2], leaf=1),
            direction=abjad.UP,
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.ufermata"',
            ),
            evans.select_measures([8], leaf=1),
            direction=abjad.UP,
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.ushortfermata"',
            ),
            evans.select_measures([10], leaf=1),
            direction=abjad.UP,
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.uverylongfermata"',
            ),
            evans.select_measures([19], leaf=1),
            direction=abjad.UP,
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.uveryshortfermata"',
            ),
            evans.select_measures([24], leaf=1),
            direction=abjad.UP,
        ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_04,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="04",
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
