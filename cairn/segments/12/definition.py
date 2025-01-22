import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn

morse_pitch = evans.PitchHandler(evans.Sequence(cairn.morse_k_net).stutter([2, 6, 4, 3, 4, 2, 6, 4, 3]), forget=False)

def decresendo(selections, sizes):
    leaves = abjad.select.leaves(selections)
    groups = abjad.select.partition_by_counts(leaves, sizes, cyclic=True, overhang=True)
    for group in groups:
        abjad.attach(abjad.Dynamic("f"), group[0])
        abjad.attach(abjad.StartHairpin(">"), group[0])
        abjad.attach(abjad.Dynamic("p"), group[-1])

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
    fermata_measures=cairn.fermata_measures_12,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=12),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        ## Cello
        # evans.attach(
        #     "cello voice",
        #     abjad.Clef("bass"),
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
        evans.MusicCommand( # vib
            ("cello voice", [0, 1, 2]),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            evans.PitchHandler([["b'", "fs'"]]),
            abjad.Clef("tenor"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.ArticulationHandler(["espressivo"]),
            evans.ArticulationHandler(["accent"], articulation_boolean_vector=[1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0]),
            evans.ArticulationHandler(["tremolo"]),
            evans.Attachment(
                abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            lambda _: decresendo(_, [3, 4, 5]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {\fraction 1 2 clt.}"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright XP"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanTwo",
                    ),
                    r"- \tweak staff-padding 9.5"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanTwo"),
                selector=lambda _: abjad.get.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {\fraction 1 2 P}"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanTwo",
                    ),
                    r"- \tweak staff-padding 9.5"
                ),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanTwo"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
        ),
        # evans.MusicCommand( # echo
        #     ("cello voice", [3]),
        #     evans.talea(
        #         cairn.morse_durations[0].rotate(12),
        #         16,
        #         extra_counts=[0, -2, -4],
        #         preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[1, 2, 3], split_at_measure_boundaries=True),
        #         pre_commands=None,
        #         rewrite=-1,
        #         treat_tuplets=True,
        #     ),
        #     morse_pitch,
        #     abjad.Clef("bass"),
        #     lambda _: evans.contour(
        #         _,
        #         ([0], evans.Lapidary("neutral", "previous alteration", "centroid octave")),
        #         starting_range=abjad.PitchRange("[c,, c)"),
        #     ),
        #     evans.Attachment(
        #         abjad.LilyPondLiteral(r'\all-color-music #(universal-color "redpurple")', site="before"),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.ArticulationHandler(["scrape-circular-clockwise"]),
        #     evans.Attachment(
        #         abjad.Dynamic("mf"),
        #         selector=lambda _: abjad.select.note(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StartHairpin("--"),
        #         selector=lambda _: abjad.select.note(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopHairpin(),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        # ),
        evans.MusicCommand(
            ("cello voice", [3]),
            evans.talea(
                [6, 5, 1, 1, 4, 1, 7, 1, 1, 1, 8],
                32,
                extra_counts=[0, 1, 0, 2],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    ["bf,", "bf,"], ["a,", "bf,"],
                    ["bf,", "bf,"], ["a,", "bf,"],
                    ["bf,", "bf,"],
                    ["btqf,", "bf,"],
                    ["a,", "bf,"],
                    ["bf,", "bf,"], ["bqf,", "bf,"], ["bf,", "bf,"],
                    ["a,", "bf,"],
                ],
                allow_chord_duplicates=True,
            ),
            evans.force_accidentals,
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            evans.Attachment(
                abjad.StopHairpin(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright { \fraction 1 2 P }'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 6",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            abjad.Clef("bass"),
        ),
        evans.MusicCommand( # vib
            ("cello voice", [4, 5, 6]),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            evans.PitchHandler([["b'", "fs'"]]),
            abjad.Clef("tenor"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.ArticulationHandler(["espressivo"]),
            evans.ArticulationHandler(["accent"], articulation_boolean_vector=[1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0]),
            evans.ArticulationHandler(["tremolo"]),
            evans.Attachment(
                abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            lambda _: decresendo(_, [6, 5, 4]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {\fraction 1 2 clt.}"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright MP"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanTwo",
                    ),
                    r"- \tweak staff-padding 9.5"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanTwo"),
                selector=lambda _: abjad.get.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright N"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanTwo",
                    ),
                    r"- \tweak staff-padding 9.5"
                ),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanTwo"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
        ),
        # evans.MusicCommand( # echo
        #     ("cello voice", [7, 8, 9]),
        #     evans.talea(
        #         cairn.morse_durations[0].rotate(12),
        #         8,
        #         extra_counts=[0, -2, -4],
        #         preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[1, 2, 3], split_at_measure_boundaries=True),
        #         pre_commands=None,
        #         rewrite=-1,
        #         treat_tuplets=True,
        #     ),
        #     morse_pitch,
        #     abjad.Clef("bass"),
        #     lambda _: evans.contour(
        #         _,
        #         ([0], evans.Lapidary("neutral", "previous alteration", "centroid octave")),
        #         starting_range=abjad.PitchRange("[c,, c)"),
        #     ),
        #     evans.Attachment(
        #         abjad.LilyPondLiteral(r'\all-color-music #(universal-color "redpurple")', site="before"),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.ArticulationHandler(["scrape-circular-clockwise"]),
        #     evans.Attachment(
        #         abjad.Dynamic("f"),
        #         selector=lambda _: abjad.select.note(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StartHairpin("--"),
        #         selector=lambda _: abjad.select.note(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopHairpin(),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        # ),
        evans.MusicCommand(
            ("cello voice", [7, 8, 9]),
            evans.talea(
                [6, 5, 1, 1, 4, 1, 7, 1, 1, 1, 8],
                32,
                extra_counts=[0, 1, 0, 2],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    ["a,", "a,"], ["gs,", "a,"],
                    ["a,", "a,"], ["gs,", "a,"],
                    ["a,", "a,"],
                    ["aqf,", "a,"],
                    ["gs,", "a,"],
                    ["a,", "a,"], ["btqf,", "a,"], ["a,", "a,"],
                    ["gs,", "a,"],
                ],
                allow_chord_duplicates=True,
            ),
            evans.force_accidentals,
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            evans.Attachment(
                abjad.StopHairpin(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright { \fraction 1 2 P }'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 6",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            abjad.Clef("bass"),
        ),
        evans.MusicCommand( # vib
            ("cello voice", [10]),
            evans.note(preprocessor=evans.make_preprocessor(quarters=True)),
            evans.PitchHandler([["b'", "fs'"]]),
            abjad.Clef("tenor"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.ArticulationHandler(["espressivo"]),
            evans.ArticulationHandler(["accent"], articulation_boolean_vector=[1, 0, 0, 0, 0,]),
            evans.ArticulationHandler(["tremolo"]),
            evans.Attachment(
                abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            lambda _: decresendo(_, [5]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {\fraction 1 2 clt.}"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {\fraction 1 2 P}"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanTwo",
                    ),
                    r"- \tweak staff-padding 11"
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanTwo"),
                selector=lambda _: abjad.get.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {\fraction 1 2 T}"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanTwo",
                    ),
                    r"- \tweak staff-padding 11"
                ),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanTwo"),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
        ),
        # evans.MusicCommand( # echo
        #     ("cello voice", [11, 12, 13, 14]),
        #     evans.talea(
        #         cairn.morse_durations[0].rotate(12),
        #         4,
        #         extra_counts=[0, -2, -4],
        #         preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[1, 2, 3], split_at_measure_boundaries=True),
        #         pre_commands=None,
        #         rewrite=-1,
        #         treat_tuplets=True,
        #     ),
        #     morse_pitch,
        #     abjad.Clef("bass"),
        #     lambda _: evans.contour(
        #         _,
        #         ([0], evans.Lapidary("neutral", "previous alteration", "centroid octave")),
        #         starting_range=abjad.PitchRange("[c,, c)"),
        #     ),
        #     evans.Attachment(
        #         abjad.LilyPondLiteral(r'\all-color-music #(universal-color "redpurple")', site="before"),
        #         selector=lambda _: abjad.select.leaf(_, 0),
        #     ),
        #     evans.ArticulationHandler(["scrape-circular-clockwise"]),
        #     evans.Attachment(
        #         abjad.Dynamic("ff"),
        #         selector=lambda _: abjad.select.note(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StartHairpin("--"),
        #         selector=lambda _: abjad.select.note(_, 0),
        #     ),
        #     evans.Attachment(
        #         abjad.StopHairpin(),
        #         selector=lambda _: abjad.select.leaf(_, -1),
        #     ),
        # ),
        evans.MusicCommand(
            ("cello voice", [11, 12, 13, 14]),
            evans.talea(
                [6, 5, 1, 1, 4, 1, 7, 1, 1, 1, 8],
                32,
                extra_counts=[0, 1, 0, 2],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    ["g,", "g,"], ["fs,", "g,"],
                    ["g,", "g,"], ["fs,", "g,"],
                    ["g,", "g,"],
                    ["ftqs,", "g,"],
                    ["fs,", "g,"],
                    ["g,", "g,"], ["atqf,", "g,"], ["g,", "g,"],
                    ["fs,", "g,"],
                    ["g,", "g,"], ["f,", "g,"],
                    ["g,", "g,"], ["fs,", "g,"],
                    ["g,", "g,"],
                    ["e,", "g,"],
                    ["eqf,", "g,"],
                    ["g,", "g,"], ["atqf,", "g,"], ["g,", "g,"],
                    ["e,", "g,"], ["ef,", "g,"],
                ],
                allow_chord_duplicates=True,
            ),
            evans.force_accidentals,
            abjad.Dynamic("ff"),
            abjad.StartHairpin("--"),
            evans.Attachment(
                abjad.StopHairpin(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright { \fraction 1 2 P }'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 6",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
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
            cairn.lib.met_78,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_12,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="12",
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
