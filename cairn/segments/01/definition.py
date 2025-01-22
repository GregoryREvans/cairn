import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn

lorca_pitch = evans.PitchHandler(cairn.k_net_sequence, forget=False)

morse_pitch = evans.PitchHandler(evans.Sequence(cairn.morse_k_net).stutter([2, 6, 4, 3, 4, 2, 6, 4, 3]), forget=False)

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
    fermata_measures=cairn.fermata_measures_01,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=1),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        ## Cello
        evans.attach(
            "cello voice",
            abjad.Clef("bass"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        #### MUSIC
        evans.MusicCommand(
            ("cello voice", [
                0
            ]),
            evans.make_rtm(
                cairn.rtms.rotate(0),
                preprocessor=evans.make_preprocessor(split_divisions_by_proportions=[(1, 1)]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            lorca_pitch,
            lambda _: evans.contour(
                _,
                ([0], evans.Lapidary("neutral", "previous alteration", "centroid octave")),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            abjad.Dynamic("pp"),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "blue")', site="before"),
            # lambda _: cairn.overlay_text(
            #     _,
            #     "la pi- e- dra es un- a fren- te",
            #     '#(universal-color "blue")',
            #     abjad.UP,
            # ),
            cairn.slur_intermittent_accents(group_counts=[4, 1, 3, 1], start_bowing=abjad.DOWN),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 7"
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
                        left_text=abjad.Markup(r"\markup \upright T"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 7"
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
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 7",
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
            ("cello voice", [
                1,
            ]),
            evans.tuplet(
                cairn.morse_tuplets[0],
                preprocessor=evans.make_preprocessor(quarters=True),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
            evans.PitchHandler(
                evans.Sequence.range(-24, 15).mirror(
                    sequential_duplicates=False).rotate(5).random_walk(random_seed=0, length=10, step_list=[2]),
                forget=False,
            ),
            evans.zero_padding_glissando,
            evans.ArticulationHandler(["accent"]),
            evans.ArticulationHandler(["tremolo"]),
            lambda _: cairn.reverse_swell(_, dyns=["mf", "pp", "mp"]),
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
            ("cello voice", [3]),
            evans.talea(
                cairn.morse_durations[0].rotate(12),
                32,
                extra_counts=[0, -2, -4],
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[1, 2, 3]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            morse_pitch,
            lambda _: evans.contour(
                _,
                ([0], evans.Lapidary("neutral", "previous alteration", "centroid octave")),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r'\all-color-music #(universal-color "redpurple")', site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.ArticulationHandler(["scrape-circular-clockwise"]),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin(">o"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StopHairpin(),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # abjad.Clef("treble"),
        ),
        # evans.MusicCommand(
        #     ("cello voice", [
        #         5
        #     ]),
        #     evans.make_rtm(
        #         cairn.rtms.rotate(2),
        #         preprocessor=evans.make_preprocessor(split_divisions_by_proportions=[(1, 1)]),
        #         pre_commands=None,
        #         rewrite=-1,
        #         treat_tuplets=True,
        #     ),
        #     lorca_pitch,
        #     # lambda _: evans.contour(
        #     #     _,
        #     #     ([0, 1, 2, 3], evans.Lapidary("up", "previous alteration", "centroid octave")),
        #     #     starting_range=abjad.PitchRange("[c,, c)"),
        #     # ),
        #     lambda _: evans.contour(
        #         _,
        #         ([0], evans.Lapidary("neutral", "previous alteration", "octave above")),
        #         starting_range=abjad.PitchRange("[c,, c)"),
        #     ),
        #     abjad.Dynamic("p"),
        #     abjad.LilyPondLiteral(r'\all-color-music #(universal-color "blue")', site="before"),
        #     # lambda _: cairn.overlay_text(
        #     #     _,
        #     #     "don- de los sue- ños gi- men sin ten- er a- gua",
        #     #     '#(universal-color "blue")',
        #     #     abjad.UP,
        #     # ),
        #     cairn.slur_intermittent_accents(group_counts=[4, 1, 5, 2], start_bowing=abjad.DOWN),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright P"),
        #                 style=r"solid-line-with-arrow",
        #             ),
        #             r"- \tweak staff-padding 9"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright T"),
        #                 style=r"solid-line-with-arrow",
        #             ),
        #             r"- \tweak staff-padding 9"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright P"),
        #                 style=r"dashed-line-with-hook",
        #             ),
        #             r"- \tweak staff-padding 9",
        #             r"- \tweak bound-details.right.padding 1.25",
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(),
        #         selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
        #     ),
        #     # abjad.Clef("bass"),
        # ),
        evans.MusicCommand(
            ("cello voice", [5]),
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
                ([5, 6], evans.Lapidary("up", "previous alteration", "centroid octave"),),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
            evans.Attachment(
                abjad.StartTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.ArticulationHandler(
                [
                    "accent", "accent", "accent", "accent",
                    "scrape-circular-clockwise",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                ],
                articulation_boolean_vector=[0, 1, 1, 1, 1, 1, 0, 0, 1],
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright gridato"),
                        style="dashed-line-with-hook",
                    ),
                    r"\tweak staff-padding #3",
                    r"\tweak bound-details.right.padding # 1",
                ),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, 8),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright spz."),
                        style="dashed-line-with-hook",
                    ),
                    r"\tweak staff-padding #3",
                    r"\tweak bound-details.right.padding # 1",
                ),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("f"),
            abjad.StartHairpin("|>"),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 8),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [
                6
            ]),
            evans.tuplet(
                cairn.morse_tuplets[1],
                preprocessor=evans.make_preprocessor(quarters=True),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
            evans.PitchHandler(
                evans.Sequence.range(-24, 15).mirror(
                    sequential_duplicates=False).rotate(13).random_walk(random_seed=1, length=6, step_list=[13]),
                forget=False,
            ),
            evans.zero_padding_glissando,
            evans.ArticulationHandler(["accent"]),
            evans.ArticulationHandler(["tremolo"]),
            lambda _: cairn.reverse_swell(_, ["mf", "pp", "mf"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {MT}"),
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
                        left_text=abjad.Markup(r"\half-diamond-notehead-markup"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 8",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\default-notehead-markup"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 8",
                ),
                selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.select.leaf(_, -1),
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
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
        ),
        # evans.MusicCommand(
        #     ("cello voice", [
        #         8, 9
        #     ]),
        #     evans.make_rtm(
        #         cairn.rtms.rotate(4),
        #         preprocessor=evans.make_preprocessor(split_divisions_by_proportions=[(1, 1)]),
        #         pre_commands=None,
        #         rewrite=-1,
        #         treat_tuplets=True,
        #     ),
        #     lorca_pitch,
        #     # lambda _: evans.contour(
        #     #     _,
        #     #     ([0, 1, 2], evans.Lapidary("up", "previous alteration", "centroid octave")),
        #     #     starting_range=abjad.PitchRange("[c,, c)"),
        #     # ),
        #     lambda _: evans.contour(
        #         _,
        #         ([0], evans.Lapidary("neutral", "previous alteration", "octave above")),
        #         starting_range=abjad.PitchRange("[c,, c)"),
        #     ),
        #     abjad.Dynamic("mp"),
        #     abjad.LilyPondLiteral(r'\all-color-music #(universal-color "blue")', site="before"),
        #     # lambda _: cairn.overlay_text(
        #     #     _,
        #     #     "cur- va ni ci- pre- ses he- la- dos la pi- e- dra~es u- na e- spal- da pa- ra lle- var al ti- em- po con ár- bo- les",
        #     #     '#(universal-color "blue")',
        #     #     abjad.UP,
        #     # ),
        #     cairn.slur_intermittent_accents(group_counts=[4, 1, 5, 2], start_bowing=abjad.DOWN),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright P"),
        #                 style=r"solid-line-with-arrow",
        #             ),
        #             r"- \tweak staff-padding 10.5"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright T"),
        #                 style=r"solid-line-with-arrow",
        #             ),
        #             r"- \tweak staff-padding 10.5"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright P"),
        #                 style=r"dashed-line-with-hook",
        #             ),
        #             r"- \tweak staff-padding 10.5",
        #             r"- \tweak bound-details.right.padding 1.25",
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(),
        #         selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
        #     ),
        # ),
        evans.MusicCommand(
            ("cello voice", [8, 9]),
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
                ([5, 6], evans.Lapidary("up", "previous alteration", "centroid octave"),),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
            evans.Attachment(
                abjad.StartTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.ArticulationHandler(
                [
                    "accent", "accent", "accent", "accent",
                    "scrape-circular-clockwise",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                    "tremolo",
                ],
                articulation_boolean_vector=[0, 1, 1, 1, 1, 1, 0, 0, 1],
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright gridato"),
                        style="dashed-line-with-hook",
                    ),
                    r"\tweak staff-padding #4",
                    r"\tweak bound-details.right.padding # 1",
                ),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, 8),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright spz."),
                        style="dashed-line-with-hook",
                    ),
                    r"\tweak staff-padding #3",
                    r"\tweak bound-details.right.padding # 1",
                ),
                selector=lambda _: abjad.select.leaf(_, 10),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, 11), 1),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 12),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\half-harmonic", site="before"),
                selector=lambda _: abjad.select.leaf(_, 12),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.StartTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, -5),
            ),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, -4),
            ),
            evans.Attachment(
                abjad.StartTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, -2),
            ),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            abjad.Dynamic("f"),
            abjad.StartHairpin("|>"),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 8),
            ),
            evans.Attachment(
                abjad.Articulation("scrape-circular-clockwise"),
                selector=lambda _: abjad.select.leaf(_, -4),
            ),
            evans.Attachment(
                abjad.Articulation("scrape-circular-clockwise"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [
                10
            ]),
            evans.tuplet(
                cairn.morse_tuplets[4],
                preprocessor=evans.make_preprocessor(quarters=True),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
            evans.PitchHandler(
                evans.Sequence.range(-24, 15).mirror(
                    sequential_duplicates=False).rotate(14).random_walk(random_seed=0, length=10, step_list=[2]),
                forget=False,
            ),
            evans.zero_padding_glissando,
            evans.ArticulationHandler(["accent"]),
            evans.ArticulationHandler(["tremolo"]),
            lambda _: cairn.reverse_swell(_, ["f", "p", "mf"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {T}"),
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
                    abjad.LilyPondLiteral(r"\slow-fast-harmonic", site="after"),
                    r"- \tweak details.squiggle-speed-factor -0.9",
                    r"- \tweak thickness 3",
                    r"- \tweak details.squiggle-initial-width 0.4",
                    r"- \tweak details.squiggle-Y-scale 0.8",
                    r"- \tweak padding 5",
                ),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartTrillSpan(),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
        ),
        # evans.MusicCommand(
        #     ("cello voice", [
        #         11,
        #     ]),
        #     evans.make_rtm(
        #         cairn.rtms.rotate(8),
        #         preprocessor=evans.make_preprocessor(split_divisions_by_proportions=[(1, 1)]),
        #         pre_commands=None,
        #         rewrite=-1,
        #         treat_tuplets=True,
        #     ),
        #     lorca_pitch,
        #     # lambda _: evans.contour(
        #     #     _,
        #     #     ([0, 1, 2, 3, 4], evans.Lapidary("neutral", "previous alteration", "octave above")),
        #     #     starting_range=abjad.PitchRange("[c,, c)"),
        #     # ),
        #     lambda _: evans.contour(
        #         _,
        #         ([0], evans.Lapidary("neutral", "previous alteration", "octave above")),
        #         starting_range=abjad.PitchRange("[c,, c)"),
        #     ),
        #     abjad.Dynamic("mf"),
        #     abjad.LilyPondLiteral(r'\all-color-music #(universal-color "blue")', site="before"),
        #     # lambda _: cairn.overlay_text(
        #     #     _,
        #     #     "de lá- gri- mas y cin- tas y pla- ne- tas la pi- e- dra",
        #     #     '#(universal-color "blue")',
        #     #     abjad.UP,
        #     # ),
        #     cairn.slur_intermittent_accents(group_counts=[4, 1, 5, 2], start_bowing=abjad.DOWN),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright P"),
        #                 style=r"solid-line-with-arrow",
        #             ),
        #             r"- \tweak staff-padding 8"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright T"),
        #                 style=r"solid-line-with-arrow",
        #             ),
        #             r"- \tweak staff-padding 8"
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright P"),
        #                 style=r"dashed-line-with-hook",
        #             ),
        #             r"- \tweak staff-padding 8",
        #             r"- \tweak bound-details.right.padding 1.25",
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(),
        #         selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
        #     ),
        # ),
        evans.MusicCommand(
            ("cello voice", [11]),
            evans.make_tied_notes(),
            lorca_pitch,
            lambda _: evans.contour(
                _,
                ([0], evans.Lapidary("neutral", "previous alteration", "centroid octave"),),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            abjad.Dynamic("ff"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "molto gridato"'),
                        style="dashed-line-with-hook",
                    ),
                    r"\tweak staff-padding #3",
                    r"\tweak bound-details.right.padding #1",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1)
            ),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
        ),
        evans.MusicCommand(
            ("cello voice", [
                12
            ]),
            evans.talea(
                cairn.morse_durations[1].rotate(12),
                32,
                extra_counts=[0, -2, -4],
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[1, 2, 3]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            morse_pitch,
            lambda _: evans.contour(
                _,
                ([0, 1], evans.Lapidary("up", "previous alteration", "centroid octave")),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r'\all-color-music #(universal-color "redpurple")', site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.ArticulationHandler(["scrape-circular-clockwise"]),
            evans.Attachment(
                abjad.Dynamic("mf"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin(">o"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StopHairpin(),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # abjad.Clef("treble"),
        ),
        evans.MusicCommand(
            ("cello voice", [
                13
            ]),
            evans.make_rtm(
                cairn.rtms.rotate(10),
                preprocessor=evans.make_preprocessor(split_divisions_by_proportions=[(1, 1)]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            lorca_pitch,
            # lambda _: evans.contour(
            #     _,
            #     ([0, 1, 2, 3, 4], evans.Lapidary("up", "previous alteration", "centroid octave")),
            #     ([40, 41, 42], evans.Lapidary("down", "previous alteration", "centroid octave")),
            #     starting_range=abjad.PitchRange("[c,, c)"),
            # ),
            lambda _: evans.contour(
                _,
                ([0], evans.Lapidary("neutral", "previous alteration", "octave above")),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            abjad.Dynamic("mp"),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "blue")', site="before"),
            # lambda _: cairn.overlay_text(
            #     _,
            #     "es un- a fren- te don- de los sue- ños gi- men sin ten- er a- gua cur- va ni ci- pre- ses he- la- dos la pi- e- dra~es u- na e- spal- da pa- ra lle- var al ti- em- po con ár- bo- les",
            #     '#(universal-color "blue")',
            #     abjad.UP,
            # ),
            cairn.slur_intermittent_accents(group_counts=[3, 1, 5, 2, 4, 1, 5, 2], start_bowing=abjad.DOWN),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 8.5"
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
                        left_text=abjad.Markup(r"\markup \upright T"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 8.5"
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
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 8.5",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            # abjad.Clef("bass"),
        ),
        evans.MusicCommand(
            ("cello voice", [14, 15]),
            evans.talea(
                [1, 1, 1, 1, 1, 1, 1, 1, 5, 1, 1, 1, 3, 2, 2, 1],
                16,
                extra_counts=[0, 0, 1, 2, 0, 2, 3, 0, 2, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            lambda _: evans.PitchHandler(
                [-22+1, -22+7+2, -22+7+7+3, -22+7+7+7+4, -22+7+7+7+4, -22+7+7+3, -22+7+2, -22+1,]
            )(abjad.select.leaves(_)[:8]),
            lambda _: lorca_pitch(abjad.select.leaves(_)[8:]),
            lambda _: evans.contour(
                abjad.select.leaves(_)[8:],
                ([0], evans.Lapidary("neutral", "previous alteration", "octave above")),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            lambda _: evans.slur([4])(abjad.select.leaves(_)[:8]),
            abjad.Dynamic("mf"),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\half-harmonic", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, 7),
            ),
            evans.Attachment(
                abjad.Dynamic("sfp"),
                selector=lambda _: abjad.select.leaf(_, 8),
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, 9),
            ),
            evans.Attachment(
                abjad.Dynamic("sfp"),
                selector=lambda _: abjad.select.leaf(_, 12),
            ),
            evans.Attachment(
                abjad.Dynamic("mf"),
                selector=lambda _: abjad.select.leaf(_, 13),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, 15),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 15),
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, 23),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, 24),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 26),
            ),
            evans.Attachment(
                abjad.Dynamic("pp"),
                selector=lambda _: abjad.select.leaf(_, 30),
            ),
            lambda _: baca.text_spanner(
                abjad.select.leaves(_)[8:],
                ["N", "->", "P", "->", "N", "->", "T", "->", "P", "->", "N", "->", "P", "->"],
                abjad.Tweak(r"\tweak staff-padding #6"),
                lilypond_id=1,
                pieces=lambda x: abjad.select.partition_by_counts(abjad.select.logical_ties(x), [1, 4, 2, 9, 4, 3], cyclic=True, overhang=True),
            ),
            lambda _: baca.text_spanner(
                abjad.select.leaves(_)[13:16],
                ["gridato", "->", "teso"],
                abjad.Tweak(r"\tweak staff-padding #8"),
                lilypond_id=2,
            ),
            evans.Attachment(
                abjad.StartTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, 8),
            ),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, 9),
            ),
            lambda _: abjad.slur(abjad.select.get(abjad.select.leaves(_), [15, 16, 17, 18, 19, 20, 21, 22, 23])),
        ),
        evans.MusicCommand(
            ("cello voice", [
                16,
            ]),
            evans.tuplet(
                cairn.morse_tuplets[7],
                preprocessor=evans.make_preprocessor(quarters=True),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
            evans.PitchHandler(
                evans.Sequence.range(-24, 15).mirror(
                    sequential_duplicates=False).rotate(3).random_walk(random_seed=0, length=10, step_list=[2]),
                forget=False,
            ),
            evans.zero_padding_glissando,
            evans.ArticulationHandler(["accent"]),
            evans.ArticulationHandler(["tremolo"]),
            lambda _: cairn.reverse_swell(_, ["f", "mp", "ff"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {\fraction 1 2 P}"),
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
                    abjad.LilyPondLiteral(r"\slow-fast-harmonic", site="after"),
                    r"- \tweak details.squiggle-speed-factor 0.6",
                    r"- \tweak thickness 3",
                    r"- \tweak details.squiggle-initial-width 8",
                    r"- \tweak details.squiggle-Y-scale 0.8",
                    r"- \tweak padding 7",
                ),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartTrillSpan(),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.note(_, -1), 1),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [
                18, 19,
            ]),
            evans.talea(
                cairn.morse_durations[2].rotate(12),
                32,
                extra_counts=[0, -2, -4],
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[1, 2, 3]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            morse_pitch,
            lambda _: evans.contour(
                _,
                ([0, 1, 2, 3], evans.Lapidary("up", "previous alteration", "centroid octave")),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r'\all-color-music #(universal-color "redpurple")', site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.ArticulationHandler(["scrape-circular-clockwise"]),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.note(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # evans.Attachment(
            #     abjad.Clef("tenor"),
            #     lambda _: abjad.select.note(_, 3)
            # ),
            # evans.Attachment(
            #     abjad.Clef("petrucci-c4"),
            #     lambda _: abjad.select.note(_, 3)
            # ),
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
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.uverylongfermata"',
            ),
            evans.select_measures([4], leaf=1),
            direction=abjad.UP,
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.ufermata"',
            ),
            evans.select_measures([7], leaf=1),
            direction=abjad.UP,
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.ulongfermata"',
            ),
            evans.select_measures([17], leaf=1),
            direction=abjad.UP,
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
    time_signatures=cairn.signatures_01,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="01",
    current_directory=pathlib.Path(__file__).parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=True,
    barline="|",
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
