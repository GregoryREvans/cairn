import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn

lorca_pitch = evans.PitchHandler(cairn.k_net_sequence, forget=False)

morse_pitch = evans.PitchHandler(evans.Sequence(cairn.morse_k_net).stutter([4, 4, 4]), forget=False)

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
    fermata_measures=cairn.fermata_measures_02,
    commands=[
        ## Cello
        evans.attach(
            "cello voice",
            abjad.Clef("bass"),
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
            ("cello voice", [0, 1, 2, 3, 4, 5, 6]), # trem
            evans.note(),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
            evans.PitchHandler(
                [_ - 12 for _ in [-10, -9, -7, -4, -6, -3]],
                forget=False,
            ),
            evans.ArticulationHandler(["accent"]),
            evans.zero_padding_glissando,
            evans.ArticulationHandler(["tremolo"]),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\half-diamond-notehead-markup"),
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
            abjad.StartHairpin("o<"),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright XT"),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 6",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright MP"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 6"
                ),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright T"),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 6",
                    r"- \tweak bound-details.right.padding 1.25",
                ),
                selector=lambda _: abjad.select.leaf(_, 3),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, 4),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright MP"),
                        style=r"solid-line-with-arrow",
                    ),
                    r"- \tweak staff-padding 6"
                ),
                selector=lambda _: abjad.select.leaf(_, 4),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\markup \upright MT"),
                        style=r"dashed-line-with-hook",
                    ),
                    r"- \tweak staff-padding 6",
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
            ("cello voice", [7]), # circle
            evans.talea(
                cairn.morse_durations[4].rotate(-4),
                8,
                extra_counts=[0, 1, -2, 3, -4, -3, 2, -1],
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[2]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            morse_pitch,
            lambda _: evans.contour(
                _,
                ([0, 1, 2], evans.Lapidary("up", "previous alteration", "centroid octave"),),
                starting_range=abjad.PitchRange("[c,, c)"),
            ),
            evans.ArticulationHandler(["scrape-circular-clockwise"]),
            evans.Attachment(
                abjad.LilyPondLiteral(r'\all-color-music #(universal-color "redpurple")', site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.Dynamic("f"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("p"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [9]), # circle
            evans.talea(
                cairn.morse_durations[5].rotate(-6),
                8,
                extra_counts=[0, 1, -2, 3, -4, -3, 2, -1],
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[2]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            morse_pitch,
            lambda _: evans.contour(
                _,
                ([0, 1, 2], evans.Lapidary("up", "previous alteration", "centroid octave"),),
                starting_range=abjad.PitchRange("[c, c')"),
            ),
            evans.ArticulationHandler(["scrape-circular-clockwise"]),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "redpurple")', site="before"),
            abjad.Dynamic("mf"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("pp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", [11, 12]), # circle
            evans.talea(
                cairn.morse_durations[6].rotate(-8),
                4,
                extra_counts=[0, 1, -2, 3, -4, -3, 2, -1],
                preprocessor=evans.make_preprocessor(quarters=True, fuse_counts=[2]),
                pre_commands=None,
                rewrite=-1,
                treat_tuplets=True,
            ),
            morse_pitch,
            evans.ArticulationHandler(["scrape-circular-clockwise"]),
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "redpurple")', site="before"),
            abjad.Dynamic("mp"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("ppp"),
                selector=lambda _: abjad.select.note(_, -1),
            ),
            abjad.Clef("tenor"),
        ),
        #### Cleanup
        evans.call(
            "score",
            lambda _: evans.SegmentMaker.beam_score_without_splitting(_, better_tuplets=True),
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
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.ushortfermata"',
            ),
            evans.select_measures([8], leaf=1),
            direction=abjad.UP,
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.ulongfermata"',
            ),
            evans.select_measures([10], leaf=1),
            direction=abjad.UP,
        ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_02,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="02",
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
