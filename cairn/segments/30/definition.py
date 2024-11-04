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
        '"Mano Destra"',
        '"Mano Sinestra"',
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
        '"mn dst"',
        '"man sin"',
        '"davanti"',
        '" "',
        '" "',
        '"dietro"',
        '"archi"',
    ],
    name_staves=True,
    fermata_measures=cairn.fermata_measures_30,
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
            ("battuto voice", (0, 5)),
            evans.talea(
                [1,],
                32,
                extra_counts=[0, 0, 1, 0, 2, -1],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    -7, -5, -3, -1, 0, -2, -4, -6,
                    -7 + 1, -5 + 1, -3 + 1, -1 + 1, 0 + 1, -2 + 1, -4 + 1, -6 + 1,
                    -7 + 3, -5 + 3, -3 + 3, -1 + 3, 0 + 3, -2 + 3, -4 + 3, -6 + 3,
                    -7 + 5, -5 + 5, -3 + 5, -1 + 5, 0 + 5, -2 + 5, -4 + 5, -6 + 5,
                ],
                staff_positions=True
            ),
            evans.cutaway_commands,
            evans.Attachment(
                abjad.Markup(r"\markup {quasi gettato}"),
                selector=lambda _: abjad.select.leaf(_, 0, pitched=True),
                direction=abjad.UP
            ),
            evans.Attachment(
                abjad.Dynamic("sfp"),
                selector=lambda _: abjad.select.leaf(_, 0, pitched=True),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 0, pitched=True),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, -1, pitched=True),
            ),
            evans.Attachment(
                abjad.Markup(r"\markup IV"),
                selector=lambda _: abjad.select.leaf(_, 0, pitched=True),
                direction=abjad.UP
            ),
            evans.Attachment(
                abjad.Markup(r"\markup III"),
                selector=lambda _: abjad.select.leaf(_, 1, pitched=True),
                direction=abjad.UP
            ),
            evans.Attachment(
                abjad.Markup(r"\markup II"),
                selector=lambda _: abjad.select.leaf(_, 2, pitched=True),
                direction=abjad.UP
            ),
            evans.Attachment(
                abjad.Markup(r"\markup I"),
                selector=lambda _: abjad.select.leaf(_, 3, pitched=True),
                direction=abjad.UP
            ),
            evans.Attachment(
                abjad.Markup(r"\markup II"),
                selector=lambda _: abjad.select.leaf(_, 4, pitched=True),
                direction=abjad.UP
            ),
            evans.Attachment(
                abjad.Markup(r"\markup III"),
                selector=lambda _: abjad.select.leaf(_, 5, pitched=True),
                direction=abjad.UP
            ),
            evans.Attachment(
                abjad.Markup(r"\markup IV"),
                selector=lambda _: abjad.select.leaf(_, 6, pitched=True),
                direction=abjad.UP
            ),
            evans.Attachment(
                abjad.Markup(r"\markup (simile)"),
                selector=lambda _: abjad.select.leaf(_, 7, pitched=True),
                direction=abjad.UP
            ),
        ),
        evans.MusicCommand(
            ("battuto voice", [5, 6]),
            evans.talea(
                [1,],
                16,
                extra_counts=[2, 1, 1, 1, 1, 0, 0, 0, 0],
                preprocessor=evans.make_preprocessor(quarters=True),
            ),
            evans.PitchHandler(
                [
                    -6
                ],
                staff_positions=True
            ),
            evans.cutaway_commands,
            evans.Attachment(
                abjad.Markup(r"\markup mechanico"),
                selector=lambda _: abjad.select.leaf(_, 0, pitched=True),
                direction=abjad.UP
            ),
            evans.Attachment(
                abjad.Markup(r"\markup IV"),
                selector=lambda _: abjad.select.leaf(_, 0, pitched=True),
                direction=abjad.UP
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 0, pitched=True),
            ),
            evans.Attachment(
                abjad.StartHairpin("<"),
                selector=lambda _: abjad.select.leaf(_, 0, pitched=True),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, -1, pitched=True),
            ),
        ),
        evans.MusicCommand(
            ("cello voice", (0, 7)),
            evans.note(),
            evans.PitchHandler([[-24 + 5.5, -17 + 5.5, -10 + 5.5, -3 + 5.5], -9.5 + 5, -9 + 5, -11 + 5, -6 + 5, -3 + 5, -7 + 5, -8 + 5]),
            abjad.tie,
            lambda _: [abjad.attach(abjad.Glissando(), leaf) for leaf in abjad.select.leaves(_)[2:]],
            evans.Attachment(
                abjad.Markup(r"\markup {(dita simile)}"),
                selector=lambda _: abjad.select.leaf(_, 1),
                direction=abjad.UP
            ),
            abjad.bundle(
                abjad.StartTextSpan(
                    left_text=abjad.Markup(r"\evans-damp-markup"),
                    style=r"dashed-line-with-hook",
                ),
                r"\tweak staff-padding #3",
                r"\tweak bound-details.right.padding #3",
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
        ),
        #### Cleanup
        evans.call(
            "score",
            evans.SegmentMaker.beam_score_without_splitting,
            lambda _: abjad.select.components(_, abjad.Score),
        ),
        # evans.attach(
        #     "Global Context",
        #     cairn.lib.mark_78,
        #     lambda _: abjad.select.leaf(_, 0),
        # ),
        evans.attach(
            "Global Context",
            cairn.lib.met_78,
            lambda _: abjad.select.leaf(_, 0),
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
    time_signatures=cairn.signatures_30,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="30",
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
