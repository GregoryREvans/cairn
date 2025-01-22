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
    fermata_measures=cairn.fermata_measures_23,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=23),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        ## Cello
        evans.attach(
            "cello voice",
            abjad.Clef("bass"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "temporary voice",
            abjad.LilyPondLiteral(r"\stopStaff", site="before"),
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
        evans.MusicCommand( # BB
            ("cello voice", [0]),
            evans.talea([1], 32),
            evans.PitchHandler([-3, -1, 1, 3, 1, -1], staff_positions=True),
            abjad.LilyPondLiteral(r"\staff-line-count 4", site="absolute_before"),
            abjad.Clef("percussion"),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanTwo",),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "behind bridge on wrapping"'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 6.5",
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
        evans.MusicCommand( # harm
            ("cello voice", [1]),
            evans.talea(
                [40],
                32,
                preamble=[1, 2, 1, 2],
            ),
            evans.PitchHandler(
                [
                    -12, [-12, -12 + 5],
                    -11, [-11, -11 + 7],
                    -13,
                ]
            ),
            lambda _: [abjad.tweak(leaf.note_heads[1], r"\tweak NoteHead.style #'harmonic") for leaf in abjad.select.chords(_)],
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            lambda _: baca.trill_spanner(abjad.select.logical_tie(_, -1), alteration="+P4", harmonic=True),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            abjad.Clef("bass"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
        ),
        evans.MusicCommand( # harm
            ("cello voice", [2]),
            evans.talea(
                [40],
                32,
                preamble=[1, 2, 1, 2, 1, 2],
            ),
            evans.PitchHandler(
                [
                    -14, [-14, -14 + 3],
                    -15, [-15, -15 + 5],
                    -14, [-14, -14 + 7],
                    -17,
                ]
            ),
            lambda _: [abjad.tweak(leaf.note_heads[1], r"\tweak NoteHead.style #'harmonic") for leaf in abjad.select.chords(_)],
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            evans.Attachment(
                abjad.StartSlur(),
                selector=lambda _: abjad.select.leaf(_, 4),
            ),
            evans.Attachment(
                abjad.StopSlur(),
                selector=lambda _: abjad.select.leaf(_, 5),
            ),
            lambda _: baca.trill_spanner(abjad.select.logical_tie(_, -1), alteration="+M3", harmonic=True),
            evans.Attachment(
                abjad.StopTrillSpan(),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "non percussion"'),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanTwo",
                    ),
                    r"- \tweak staff-padding 8.5",
                    # r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -2, pitched=True),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanTwo",),
                selector=lambda _: abjad.select.leaf(_, -1, pitched=True),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "finger percussion"'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanTwo",
                    ),
                    r"- \tweak staff-padding 8.5",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -1, pitched=True),
            ),
        ),
        evans.MusicCommand( # BB
            ("cello voice", [3]),
            evans.talea([1], 32),
            evans.PitchHandler([-3, -1, 1, 3, 1, -1], staff_positions=True),
            abjad.Clef("percussion"),
            abjad.LilyPondLiteral(r"\staff-line-count 4", site="absolute_before"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "behind bridge on wrapping"'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 6.5",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanTwo",),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("ff"),
        ),
        evans.MusicCommand(
            ("cello voice", [4]),
            evans.tuplet([(1, 1, 1)]),
            evans.PitchHandler(["fs",  "ftqs", "fs"]),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            abjad.Clef("bass"),
            abjad.Dynamic("f"),
        ),
        evans.MusicCommand(
            ("temporary voice", [4]),
            evans.tuplet([(1, 1, 1, 1, 1)]),
            evans.PitchHandler([["c,", "a,"], "ef'"]),
            abjad.Clef("bass"),
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\stopStaff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 4, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 5, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 9, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 10, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 11, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 13, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 16, pitched=True)
            # ),
        ),
        # evans.MusicCommand( # OB
        #     ("cello voice", [5, 6, 7]),
        #     evans.note(
        #         preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[2], split_at_measure_boundaries=True)
        #     ),
        #     abjad.LilyPondLiteral(r"\staff-line-count 1", site="absolute_before"),
        #     abjad.Clef("percussion"),
        #     evans.Attachment(
        #         abjad.bundle(
        #             abjad.StartTextSpan(
        #                 left_text=abjad.Markup(r'\markup \upright "OB"'),
        #                 style=r"dashed-line-with-hook",
        #                 command=r"\startTextSpanOne",
        #             ),
        #             r"- \tweak staff-padding 5",
        #             r"- \tweak bound-details.right.padding 1.25",
        #         ),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopTextSpan(command=r"\stopTextSpanOne",),
        #         selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
        #     ),
        #     abjad.Dynamic("pp"),
        # ),
        evans.MusicCommand( # gliss
            ("cello voice", [5, 6, 7]),
            evans.note(),
            evans.PitchHandler([-23, -21, -22]),
            abjad.glissando,
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "gridato"'),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 3",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "flautando"'),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 3",
                ),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "molto gridato"'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 3",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("f"),
        ),
        evans.MusicCommand(
            ("cello voice", [8, 9]),
            evans.make_rtm(
                [
                    "(1 (1 1 1))",
                    "(1 (1 1 1 1))",
                ],
            ),
            evans.PitchHandler(["fs", "ftqs", "g", "ftqs"]),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 7, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 9, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 11, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 13, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 14, pitched=True)
            # ),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            abjad.Clef("bass"),
            abjad.Dynamic("ff"),
        ),
        evans.MusicCommand(
            ("temporary voice", [8, 9]),
            evans.make_rtm(
                [
                    "(1 (1 1 3 -1 1 1 2 1 3))",
                    "(1 (1 2 1 1 1))",
                ],
            ),
            evans.PitchHandler([["c,", "a,"], "ef'"]),
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\stopStaff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 4, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 5, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 9, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 10, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 11, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 13, pitched=True)
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\interrupt", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 16, pitched=True)
            # ),
        ),
        evans.MusicCommand(
            ("cello voice", [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]),
            evans.talea(
                [4, 5, 3, 6, 7, 2, 9, 8, 5, 6],
                16,
            ),
            evans.PitchHandler(
                evans.Sequence([["c,", "a,", "fs", "ef'"]]) + evans.Sequence.range(
                        abjad.NamedPitch("c,").number, abjad.NamedPitch("c'"), 1
                    ).mirror(sequential_duplicates=False).random_walk(
                        length=300,
                        random_seed=6,
                        step_list=evans.Sequence([6, 1, 4, 5, 7, 2])
                    )
            ),
            abjad.glissando,
            abjad.Dynamic("mp"),
            abjad.StartHairpin("<"),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_)) // 2),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_)) // 2),
            ),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\half-harmonic", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.text_span(
                ["P", "T", "N", "P", "T", "N"], "->", [8], padding=5, id=2
            ),
            # lambda _: [swells(run) for run in abjad.select.runs(_)],
        ),
        evans.MusicCommand(
            ("change voice", [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29]),
            evans.talea(
                [1],
                16,
                extra_counts=[0, -2, -4, 1, 0, -3, -4, 2, 0, -4, 2, 0, -4, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                cairn.materials.pitch.string_crossing_modules(first_state=1, random_seed=30, length=200),
                staff_positions=True,
            ),
            evans.slur(
                cairn.materials.pitch.string_crossing_modules(
                    first_state=1, random_seed=30, length=200, return_lengths_only=True
                )
            ),
            abjad.LilyPondLiteral(r'\all-color-music #(x11-color "firebrick")', site="before"),
        ),
        evans.MusicCommand(
            ("cello voice", [30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]),
            evans.tuplet(
                [
                (1, 1, 1),
                (2, 2, 2, 1),
                (1, 1),
                (1,),
                (1, 1, 1, 1, 1, 1, 1, 1),
                (1, 1),
                (1, 1, 1, 1, 1),
                (1, 1, 1, 1, 1, 1),
                (1, 1, 1),
                (1, 1, 1, 1, 1, 1, 1),
                (1, 1, 1),
                (1, 1),
                (1, 1, 1, 1, 1, 1, 1),
                ],
                rewrite=-1,
            ),
            evans.PitchHandler(
                [
                    "e", "eqs", "e",
                    "a,", "aqs,", "as,", "aqs,",
                    ["b,", "ef"], ["bf,", "e"],
                    "d",
                    ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"], ["b,", "ef"], ["bf,", "e"],
                    "a,", "aqs,",
                    "e", "eqf", "e", "eqs", "e",
                    "a,", "aqs,", "a,", "aqs,", "as,", "aqs,",
                    ["b,", "ef"], ["bf,", "e"], ["b,", "ef"],
                    "d", "dqs", "d", "ds", "d", "dqs", "d",
                    ["b,", "ef"], ["bf,", "e"], ["b,", "ef"],
                    "a,", "aqf,",
                    "e", "eqf", "e", "eqs", "e", "e", "eqf",
                ]
            ),
            abjad.Dynamic("fff"),
        ),
        evans.MusicCommand(
            ("temporary voice", [30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42]),
            evans.tuplet(
                [
                (1, 1, 1, 1, 1),
                (3, 2, 1, 1, 2, 3, 1, 2, 2, 1),
                (1, 1, 1, 1, 1, 1),
                (1, 2, 1, 2, 2, 1, 1, 2, 3, 2, 1),
                (1, 1, 1),
                (1, 1, 1),
                (3, 1, 1, 1),
                (1, 1, 1, 3, 1, 2, 2, 1, 3),
                (1, 2, 2, 1),
                (1, 1, 1, 1),
                (3, 2, 2, 2, 2, 2, 2, 2, 2, 2),
                (1, 1, 1),
                (1, 3, 3, 3, 3, 1),
                ],
                rewrite=-1,
            ),
            evans.PitchHandler(
                [
                    ["c,", "gs,"], "d'", ["c,", "gs,"], "d'", ["c,", "gs,"],
                    "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"],
                    "f,", "a", "f,", "a", "f,", "a",
                    ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"], "b", ["e,", "g,"],
                    "f,", "a", "f,",
                    "c,", ["fs", "ef'"], "c,",
                    ["c,", "gs,"], "d'", ["c,", "gs,"], "d'",
                    "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,", ["fs", "ef'"], "c,",
                    "f,", "a", "f,", "a",
                    ["e,", "g,"], "b", ["e,", "g,"], "b",
                    "f,", "a", "f,", "a", "f,", "a", "f,", "a", "f,", "a",
                    "c,", ["fs", "ef'"], "c,",
                    ["c,", "gs,"], "d'", ["c,", "gs,"], "d'", ["c,", "gs,"], "d'",
                ]
            ),
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\stopStaff", site="after"),
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
    time_signatures=cairn.signatures_23,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="23",
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
