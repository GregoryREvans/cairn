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
    fermata_measures=cairn.fermata_measures_39,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=39),
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
        #     ("cello voice", [0, 1, 2]),
        #     evans.talea([1], 8, extra_counts=[1], preprocessor=evans.make_preprocessor(quarters=True)),
        #     evans.PitchHandler([14, 17]),
        #     evans.BendHandler([1, -1]),
        #     evans.add_bowings(),
        #     abjad.Clef("treble"),
        #     abjad.Dynamic("mf"),
        # ),
        evans.MusicCommand(
            ("cello voice", [0, 1, 2]),
            evans.talea([1], 16),
            evans.PitchHandler([14, 13, 12, 14, 12, 13, 14, 13, 14, 15, 16, 15, 16, 14, 15, 16, 15]),
            abjad.Clef("treble"),
            lambda _: baca.hairpin(_, "mp < f"),
        ),
        evans.MusicCommand(
            ("cello voice", [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]),
            evans.note(),
            evans.PitchHandler([[_, -17] for _ in [-13, -13, -13, -14, -14.5, -14, -14, -14, -15, -16, -16, -16, -16, -16, -16, -16.5, -17, -17, -17, -17, -17, -17, -17.5, -17.5]]),
            abjad.Clef("bass"),
            lambda _: baca.text_spanner(
                _,
                ["molto gridato", "->", "gridato", "->", "½gridato", "->", "gridato", "->", "teso", "->", "gridato", "->"],
                abjad.Tweak(r"\tweak staff-padding #3"),
                pieces=lambda x: abjad.select.logical_ties(x),
            ),
            abjad.Dynamic("ff"),
        ),
        # evans.MusicCommand(
        #     ("cello voice", [26, 27, 28]),
        #     evans.talea([1], 8, extra_counts=[1], preprocessor=evans.make_preprocessor(quarters=True)),
        #     evans.PitchHandler([14, 17]),
        #     evans.BendHandler([1, -1]),
        #     evans.add_bowings(),
        #     abjad.Clef("treble"),
        #     abjad.Dynamic("f"),
        # ),
        # evans.MusicCommand(
        #     ("cello voice", [29, 30]),
        #     evans.talea([1], 16, preprocessor=evans.make_preprocessor(quarters=True)),
        #     evans.PitchHandler([14, 17]),
        #     evans.BendHandler([1, -1]),
        #     evans.add_bowings(),
        #     abjad.Dynamic("ff"),
        # ),
        evans.MusicCommand(
            ("cello voice", [26, 27, 28, 29, 30]),
            evans.talea([1], 16),
            evans.PitchHandler([14, 13, 12, 14, 12, 13, 14, 13, 14, 15, 16, 15, 16, 14, 15, 16, 15]),
            abjad.Clef("treble"),
            # lambda _: baca.hairpin(_, "mp < f"),
            abjad.Dynamic("f"),
        ),
        evans.MusicCommand(
            ("cello voice", [31, 32]),
            evans.talea([4, 4, 1, 2, 1], 8),
            evans.PitchHandler(abjad.sequence.reverse([-22, -20, -18, -17, -16, -12, -9, -6, 0, 1])),
            abjad.glissando,
            abjad.LilyPondLiteral(r'\all-color-music #(universal-color "bluegreen")', site="before"),
            evans.ArticulationHandler(["tremolo"]),
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
            abjad.Clef("bass"),
            cairn.center_swell,
        ),
        # evans.MusicCommand(
        #     ("cello voice", [33, 34, 35]),
        #     evans.talea([1], 16, preprocessor=evans.make_preprocessor(quarters=True)),
        #     evans.PitchHandler([14, 17]),
        #     evans.BendHandler([1, -1]),
        #     evans.add_bowings(),
        #     abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
        #     abjad.Clef("treble"),
        #     abjad.Dynamic("fff"),
        # ),
        evans.MusicCommand(
            ("cello voice", [33, 34, 35]),
            evans.make_tied_notes(),
            evans.PitchHandler(["ef,"]),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
            abjad.Dynamic("fff"),
            evans.Attachment(
                abjad.Markup(r"\markup \upright {molto gridato}"),
                selector=lambda _: abjad.select.leaf(_, 0),
                direction=abjad.UP,
            ),
            # evans.Attachment(
            #     abjad.Markup(r"\markup \upright {stop on string}}"),
            #     selector=lambda _: abjad.select.leaf(_, -1),
            #     direction=abjad.UP,
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
            cairn.lib.met_117,
            lambda _: abjad.select.leaf(_, 0),
        ),
        ####
        evans.attach(
            "cello voice",
            abjad.Markup(r"\colophon"),
            lambda _: abjad.select.leaf(_, -3),
            direction=abjad.DOWN,
        ),
        evans.attach(
            "Global Context",
            abjad.BarLine("|."),
            evans.select_measures([36], leaf=1),
        ),
        evans.attach(
            "Global Context",
            abjad.Markup(
                r'\markup \lower #9 \with-dimensions-from \null \musicglyph #"scripts.uverylongfermata"',
            ),
            evans.select_measures([36], leaf=1),
            direction=abjad.UP,
        ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_39,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="39",
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
