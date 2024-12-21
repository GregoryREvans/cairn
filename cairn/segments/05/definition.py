import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn

lorca_pitch = evans.PitchHandler(evans.Sequence(cairn.k_net_sequence).rotate(13), forget=False)
morse_pitch = evans.PitchHandler(cairn.morse_k_net, forget=False)

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
    fermata_measures=cairn.fermata_measures_05,
    commands=[
        ## Cello
        evans.attach(
            "cello voice",
            abjad.Clef("treble"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "string voice",
            abjad.LilyPondLiteral(r"\stopStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "string voice",
            abjad.LilyPondLiteral(
                r"\override Staff.StaffSymbol.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "string voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "string voice",
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "change voice",
            abjad.LilyPondLiteral(r"\stopStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "change voice",
            abjad.LilyPondLiteral(
                r"\override Staff.StaffSymbol.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "change voice",
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "change voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Rest.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "change voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "left voice",
            abjad.LilyPondLiteral(r"\stopStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "left voice",
            abjad.LilyPondLiteral(
                r"\override Staff.StaffSymbol.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "left voice",
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "left voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Rest.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "left voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "right voice",
            abjad.LilyPondLiteral(r"\stopStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "right voice",
            abjad.LilyPondLiteral(
                r"\override Staff.StaffSymbol.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "right voice",
            abjad.LilyPondLiteral(r"\startStaff", site="before"),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "right voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Rest.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "right voice",
            abjad.LilyPondLiteral(
                r"\override Staff.Dots.transparent = ##t", site="before"
            ),
            selector=lambda _: abjad.select.leaf(_, 0),
        ),
        #### MUSIC
        evans.MusicCommand(
            ("cello voice", [0, 1, 2, 3, 4]), # words
            evans.make_rtm(
                cairn.rtms.rotate(0),
                # preprocessor=evans.make_preprocessor(split_divisions_by_proportions=[(1, 1)]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            lorca_pitch,
            lambda _: evans.contour(
                _,
                ([0, 1, 2], evans.Lapidary("up", "previous alteration", "centroid octave")),
                ([9, 10], evans.Lapidary("down", "previous alteration", "octave below")),
                ([20, 21], evans.Lapidary("up", "previous alteration", "octave above")),
                starting_range=abjad.PitchRange("[c', c'')"),
            ),
            abjad.Dynamic("pp"),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "blue")', site="before"),
            cairn.slur_intermittent_accents(group_counts=[4, 1, 3, 1], start_bowing=abjad.DOWN),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 8"
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
                    r"- \tweak staff-padding 8"
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
                    r"- \tweak staff-padding 8",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
        ),
        evans.MusicCommand(
            ("cello voice", [5]), # gliss
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
                    sequential_duplicates=False).rotate(30).random_walk(random_seed=1, length=10, step_list=[11, 7, 5, 7]),
                forget=False,
            ),
            evans.zero_padding_glissando,
            evans.ArticulationHandler(["accent"]),
            evans.ArticulationHandler(["tremolo"]),
            lambda _: cairn.reverse_swell(_, dyns=["ff", "mp", "f"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {XP}"),
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
            ("cello voice", [6]), # trem
            evans.talea([1], 32),
            evans.PitchHandler(evans.Sequence([x + 7 for x in [abjad.NumberedPitch(_).number for _ in ["c", "gs", "e'", "c''"]]]).mirror(True)),
            abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.slur([4]),
            evans.Attachment(
                abjad.Markup(r'\markup \upright "quasi gettato"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright crine"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 8.5",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, -8),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright legno"),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 8.5",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -8),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("pp"),
                selector=lambda _: abjad.select.leaf(_, -8),
            ),
            abjad.LilyPondLiteral(r'\all-color-music #black)', site="before"),
        ),
        evans.MusicCommand(
            ("cello voice", [7]), # circle
            evans.make_tied_notes(),
            morse_pitch,
            evans.ArticulationHandler(["scrape-circular-clockwise"]),
            abjad.Dynamic("mp"),
        ),
        evans.MusicCommand(
            ("cello voice", [8]), # behind bridge
            evans.talea([1], 16, extra_counts=[0, 1, 2, 3, 1, 2], preprocessor=evans.make_preprocessor(quarters=True)),
            evans.PitchHandler([-3, -1, 1, 3, 1, -1], staff_positions=True),
            abjad.LilyPondLiteral(r"\staff-line-count 4", site="absolute_before"),
            abjad.LilyPondLiteral(r'\all-color-music #black)', site="before"),
            abjad.Clef("percussion"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "behind bridge on wrapping"'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 5.5",
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
        evans.MusicCommand(
            ("cello voice", [9]), # circle
            evans.make_tied_notes(),
            morse_pitch,
            evans.ArticulationHandler(["scrape-circular-clockwise"]),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            abjad.Clef("treble"),
            abjad.Dynamic("mp"),
        ),
        evans.MusicCommand(
            ("cello voice", [10]), # behind bridge
            evans.talea([1], 16, extra_counts=[1, 2, 3, 1, 2, 0], preprocessor=evans.make_preprocessor(quarters=True)),
            evans.PitchHandler([-3, -1, 1, 3, 1, -1], staff_positions=True),
            abjad.LilyPondLiteral(r"\staff-line-count 4", site="absolute_before"),
            abjad.LilyPondLiteral(r'\all-color-music #black)', site="before"),
            abjad.Clef("percussion"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "behind bridge on wrapping"'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7.5",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("fff"),
        ),
        evans.MusicCommand(
            ("cello voice", [11]), # circle
            evans.make_tied_notes(),
            morse_pitch,
            evans.ArticulationHandler(["scrape-circular-clockwise"]),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            abjad.Clef("treble"),
            abjad.Dynamic("mp"),
        ),
        evans.MusicCommand(
            ("cello voice", [12]), # trem
            evans.talea([1], 32),
            evans.loop(evans.Sequence([x + 7 for x in [abjad.NumberedPitch(_).number for _ in ["c", "gs", "e'", "c''"]]]).mirror(True), [1, 2]),
            abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.slur([4]),
            evans.Attachment(
                abjad.Markup(r'\markup \upright "quasi gettato"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright legno"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 8.5",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, -8),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright crine"),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 8.5",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -8),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("pp"),
                selector=lambda _: abjad.select.leaf(_, -8),
            ),
            abjad.LilyPondLiteral(r'\all-color-music #black)', site="before"),
        ),
        evans.MusicCommand(
            ("cello voice", [13, 14]), # gliss
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
                    sequential_duplicates=False).rotate(30).random_walk(random_seed=1, length=10, step_list=[11, 7, 5, 7]),
                forget=False,
            ),
            evans.zero_padding_glissando,
            evans.ArticulationHandler(["accent"]),
            evans.ArticulationHandler(["tremolo"]),
            lambda _: cairn.reverse_swell(_, dyns=["ff", "mp", "f"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {XP}"),
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
            ("cello voice", [15]), # circle
            evans.make_tied_notes(),
            morse_pitch,
            evans.ArticulationHandler(["scrape-circular-clockwise"]),
            abjad.Dynamic("mp"),
            abjad.LilyPondLiteral(r'\all-color-music #black', site="before"),
        ),
        evans.MusicCommand(
            ("cello voice", [16]), # gliss
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
                    sequential_duplicates=False).rotate(30).random_walk(random_seed=1, length=10, step_list=[11, 7, 5, 7]),
                forget=False,
            ),
            evans.zero_padding_glissando,
            evans.ArticulationHandler(["accent"]),
            evans.ArticulationHandler(["tremolo"]),
            lambda _: cairn.reverse_swell(_, dyns=["ff", "mp", "f"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {XP}"),
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
            ("cello voice", [17]), # words
            evans.make_rtm(
                cairn.rtms.rotate(6),
                preprocessor=evans.make_preprocessor(split_divisions_by_proportions=[(1, 1)]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            lorca_pitch,
            lambda _: evans.contour(
                _,
                ([0], evans.Lapidary("neutral", "previous alteration", "centroid octave")),
                starting_range=abjad.PitchRange("[c', c'')"),
            ),
            evans.ArticulationHandler(["tremolo"]),
            abjad.Dynamic("pp"),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "blue")', site="before"),
            # cairn.slur_intermittent_accents(group_counts=[4, 1, 3, 1], start_bowing=abjad.DOWN),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 8"
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
                    r"- \tweak staff-padding 8"
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
                    r"- \tweak staff-padding 8",
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
                cairn.morse_tuplets[0],
                preprocessor=evans.make_preprocessor(quarters=True),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
            evans.PitchHandler(
                evans.Sequence.range(-24, 15).mirror(
                    sequential_duplicates=False).rotate(30).random_walk(random_seed=1, length=10, step_list=[11, 7, 5, 7]),
                forget=False,
            ),
            evans.zero_padding_glissando,
            evans.ArticulationHandler(["accent"]),
            evans.ArticulationHandler(["tremolo"]),
            lambda _: cairn.reverse_swell(_, dyns=["ff", "mp", "f"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright {XP}"),
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
            ("cello voice", [19]), # trem
            evans.talea([1], 32),
            evans.loop(evans.Sequence([x + 7 for x in [abjad.NumberedPitch(_).number for _ in ["c", "gs", "e'", "c''"]]]).mirror(True), [2, 3, 4]),
            abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.slur([4]),
            evans.Attachment(
                abjad.Markup(r'\markup \upright "quasi gettato"'),
                selector=lambda _: abjad.select.note(_, 0),
                direction=abjad.UP,
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright crine"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 8.5",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, -8),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright legno"),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 8.5",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -8),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("pp"),
                selector=lambda _: abjad.select.leaf(_, -8),
            ),
            abjad.LilyPondLiteral(r'\all-color-music #black)', site="before"),
        ),
        evans.MusicCommand(
            ("cello voice", [20]), # circle
            evans.make_tied_notes(),
            morse_pitch,
            evans.ArticulationHandler(["scrape-circular-clockwise"]),
            abjad.Dynamic("mp"),
        ),
        evans.MusicCommand(
            ("cello voice", [21]), # behind bridge
            evans.talea([1], 16, extra_counts=[2, 3, 1, 2, 0, 1], preprocessor=evans.make_preprocessor(quarters=True)),
            evans.PitchHandler([-3, -1, 1, 3, 1, -1], staff_positions=True),
            abjad.LilyPondLiteral(r"\staff-line-count 4", site="absolute_before"),
            abjad.LilyPondLiteral(r'\all-color-music #black)', site="before"),
            abjad.Clef("percussion"),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "behind bridge on wrapping"'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 7.5",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Dynamic("fff"),
        ),
        evans.MusicCommand(
            ("cello voice", [22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]), # words
            evans.make_rtm(
                cairn.rtms.rotate(8),
                # preprocessor=evans.make_preprocessor(split_divisions_by_proportions=[(1, 1)]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            lorca_pitch,
            lambda _: evans.contour(
                _,
                ([0], evans.Lapidary("neutral", "previous alteration", "centroid octave")),
                starting_range=abjad.PitchRange("[c', c'')"),
            ),
            evans.ArticulationHandler(["tremolo"]),
            abjad.Dynamic("pp"),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "blue")', site="before"),
            # cairn.slur_intermittent_accents(group_counts=[4, 1, 3, 1], start_bowing=abjad.DOWN),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright P"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 8"
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
                    r"- \tweak staff-padding 8"
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
                    r"- \tweak staff-padding 8",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.LilyPondLiteral(r"\staff-line-count 5", site="absolute_before"),
            abjad.Clef("treble"),
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
    time_signatures=cairn.signatures_05,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="05",
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
