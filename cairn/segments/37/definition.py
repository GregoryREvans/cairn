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
    fermata_measures=cairn.fermata_measures_37,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=37),
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
            ("cello voice", [0, 1, 2, 3, 4, 5, 6, 7, 8]),
            evans.talea(
                [1],
                16,
                extra_counts=evans.Sequence([-4, -1, -1, -1, 0, 0, 1, 1, 2, 2, 3, 3, 4]).zipped_bifurcation(),
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                evans.Sequence.range(-24, 12, 0.5).mirror(sequential_duplicates=False).rotate(20).random_walk(random_seed=0, length=700, step_list=[2, 2, 2, 1, 2, 2]).remove_repeats()
            ),
            evans.Attachment(
                abjad.Clef("treble"),
                selector=lambda _: abjad.select.leaf(_, 89),
            ),
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
        # evans.MusicCommand(
        #     ("cello voice", [8, 9, 10]),
        #     evans.talea(
        #         [1],
        #         16,
        #         preprocessor=evans.make_preprocessor(quarters=True),
        #     ),
        #     evans.PitchHandler(
        #         evans.Sequence.range(-24, 48, 0.5).mirror(sequential_duplicates=False).rotate(89).random_walk(random_seed=2, length=700, step_list=[2, 2,]).remove_repeats()
        #     ),
        #     abjad.Dynamic("fff"),
        # ),
        evans.MusicCommand(
            ("cello voice", [8]),
            evans.tuplet(
                [(3, 2, 1)],
            ),
            evans.PitchHandler([-3+11]),
            abjad.StopTextSpan(),
            abjad.bundle(
                abjad.StartTextSpan(
                    left_text=abjad.Markup(r"\markup \upright N"),
                    style=r"invisible-line",
                ),
                r"- \tweak staff-padding 6.5"
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            lambda _: [abjad.attach(abjad.Glissando(), leaf) for leaf in abjad.select.leaves(_)],
            evans.Attachment(
                abjad.AfterGraceContainer("c'''16"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\half-harmonic", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\highest", site="before"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\tweak Stem.direction #down", site="before"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    4, 5, 5, 4, 5, 6, 2, 1, 1, 1, 1, 1, right_padding=2.5
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Articulation("accent"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    1, 1, 1, 1, 1, 1, 1, 3, 4, 5, 6, 5, 6, 6, 5, 4, 5, right_padding=2.5
                ),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
        ),
        evans.detach(
            "cello voice",
            abjad.StartSlur(),
            selector=evans.select_measures([8], leaf=0)
        ),
        evans.MusicCommand(
            ("cello voice", [9]),
            evans.note(),
            evans.PitchHandler(["af,"]),
            abjad.Clef("bass"),
            abjad.Dynamic("mf"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright gridato"),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 3",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [10]),
            evans.tuplet(
                [(3, 2, 1)],
            ),
            evans.PitchHandler([-3+13]),
            lambda _: [abjad.attach(abjad.Glissando(), leaf) for leaf in abjad.select.leaves(_)],
            evans.Attachment(
                abjad.AfterGraceContainer("c'''16"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\half-harmonic", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\highest", site="before"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\tweak Stem.direction #down", site="before"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    4, 5, 5, 4, 5, 6, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, right_padding=2.5
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Articulation("accent"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    1, 1, 1, 1, 1, 1, 1, 3, 4, 5, 6, 5, 6, 6, 5, 4, 5, right_padding=2.5
                ),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            abjad.Clef("treble"),
        ),
        # evans.MusicCommand(
        #     ("cello voice", [11, 12, 13]),
        #     evans.talea([1], 8, extra_counts=[1], preprocessor=evans.make_preprocessor(quarters=True)),
        #     evans.PitchHandler([14, 17]),
        #     evans.BendHandler([1, -1]),
        #     evans.add_bowings(),
        # ),
        evans.MusicCommand(
            ("cello voice", [11, 12, 13]),
            evans.note(),
            evans.PitchHandler(["af,", "atqf,", "a,"]),
            abjad.glissando,
            abjad.Clef("bass"),
            abjad.Dynamic("f"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "molto gridato"'),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 3",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
        ),
        # evans.MusicCommand(
        #     ("cello voice", [14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33]),
        #     evans.tuplet(
        #         cairn.morse_tuplets[5],
        #         preprocessor=evans.make_preprocessor(quarters=True),
        #         pre_commands=None,
        #         rewrite=-1,
        #         treat_tuplets=True,
        #     ),
        #     abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
        #     evans.PitchHandler(
        #         evans.Sequence.range(-24, 15).mirror(
        #             sequential_duplicates=False).rotate(5).random_walk(random_seed=2, length=1000, step_list=[2]),
        #         forget=False,
        #     ),
        #     evans.zero_padding_glissando,
        #     evans.ArticulationHandler(["accent"]),
        #     evans.ArticulationHandler(["tremolo"]),
        #     lambda _: cairn.reverse_swell(_, dyns=["mf", "pp", "mp", "f", "p", "mf"]),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\markup \upright {XT}"),
        #                 style=r"dashed-line-with-hook",
        #             ),
        #             r"- \tweak staff-padding 6",
        #             r"- \tweak bound-details.right.padding 1.25",
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(),
        #         selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
        #     ),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r"\diamond-notehead-markup"),
        #                 style=r"dashed-line-with-hook",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 8",
        #             r"- \tweak bound-details.right.padding 1.25",
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne",),
        #         selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
        #     ),
        #     abjad.Clef("bass"),
        # ),
        evans.MusicCommand(
            ("cello voice", [14, 15, 16, 17, 18, 19, 20, 21, 22, 23]),
            evans.talea(
                [1],
                32,
            ),
            evans.loop(evans.Sequence([-23, -23+7+1, -23+7+7+2, -23+7+7+7+3]).mirror(sequential_duplicates=True),
            [0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 2, 0, 0, 1, 0, 2]),
            abjad.Clef("bass"),
            evans.slur([4]),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [24, 25, 26, 27]),
            evans.talea(
                [1],
                16,
                extra_counts=[2],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler([-3, -1, 1, 3, 1, -1], staff_positions=True),
            abjad.Clef("percussion"),
            abjad.LilyPondLiteral(r"\staff-line-count 4", site="absolute_before"),
            evans.Attachment(
                abjad.bundle(
                    abjad.Markup(r"\markup \upright {behind bridge on wrapping}"),
                    r"\tweak padding #6",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            abjad.Dynamic("mf"),
        ),
        evans.MusicCommand(
            ("cello voice", [28]),
            evans.tuplet(
                [(3, 2, 1)],
            ),
            evans.PitchHandler([-3+11]),
            lambda _: [abjad.attach(abjad.Glissando(), leaf) for leaf in abjad.select.leaves(_)],
            evans.Attachment(
                abjad.AfterGraceContainer("c'''16"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\half-harmonic", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\highest", site="before"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\tweak Stem.direction #down", site="before"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    4, 5, 5, 4, 5, 6, 2, 1, 1, 1, 1, 1, right_padding=2.5
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Articulation("accent"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    1, 1, 1, 1, 1, 1, 1, 3, 4, 5, 6, 5, 6, 6, 5, 4, 5, right_padding=2.5
                ),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            abjad.Clef("treble"),
        ),
        evans.MusicCommand(
            ("cello voice", [29, 30, 31]),
            evans.talea(
                [1],
                32,
                extra_counts=[-1],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler([-3, -1, 1, 3, 1, -1], staff_positions=True),
            abjad.Clef("percussion"),
            abjad.LilyPondLiteral(r"\staff-line-count 4", site="absolute_before"),
            evans.Attachment(
                abjad.bundle(
                    abjad.Markup(r"\markup \upright {behind bridge on wrapping}"),
                    r"\tweak padding #6",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            abjad.Dynamic("f"),
        ),
        evans.MusicCommand(
            ("cello voice", [32]),
            evans.tuplet(
                [(3, 2, 1)],
            ),
            evans.PitchHandler([-3+11]),
            lambda _: [abjad.attach(abjad.Glissando(), leaf) for leaf in abjad.select.leaves(_)],
            evans.Attachment(
                abjad.AfterGraceContainer("c'''16"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\half-harmonic", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\highest", site="before"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\tweak Stem.direction #down", site="before"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    4, 5, 5, 4, 5, 6, 2, 1, 1, 1, 1, 1, right_padding=2.5
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Articulation("accent"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    1, 1, 1, 1, 1, 1, 1, 3, 4, 5, 6, 5, 6, 6, 5, 4, 5, right_padding=2.5
                ),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            abjad.Clef("treble"),
        ),
        evans.MusicCommand(
            ("cello voice", [33]),
            evans.talea(
                [1],
                32,
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler([-3, -1, 1, 3, 1, -1], staff_positions=True),
            abjad.Clef("percussion"),
            abjad.LilyPondLiteral(r"\staff-line-count 4", site="absolute_before"),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="after"),
            evans.Attachment(
                abjad.bundle(
                    abjad.Markup(r"\markup \upright {behind bridge on wrapping}"),
                    r"\tweak padding #6",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            abjad.Dynamic("ff"),
        ),
        #### Cleanup
        evans.call(
            "score",
            lambda _: evans.SegmentMaker.beam_score_without_splitting(_, better_tuplets=True),
            lambda _: abjad.select.components(_, abjad.Score),
        ),
        evans.attach(
            "Global Context",
            cairn.lib.mark_91,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            cairn.lib.met_91,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_37,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="37",
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
