import pathlib
from fractions import Fraction
from random import choice, seed

import abjad
import baca
import evans
from abjadext import rmakers

import cairn

numbers = [2, 3, -4, -2, -9, -6, 0, -1, 4, 1]
artificials = [[abjad.NamedPitch(_).name, abjad.NamedInterval(5).transpose(abjad.NamedPitch(_)).name] for _ in numbers]
harmonics = [abjad.NamedPitch(_).name for _ in [
    0, -2-7, 1, -1-7, -4, -3,
    2,
]] + artificials

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
    fermata_measures=cairn.fermata_measures_08,
    commands=[
        # evans.attach(
        #     "Global Context",
        #     abjad.RehearsalMark(number=8),
        #     selector=lambda _: abjad.select.leaf(_, 0),
        # ),
        ## Cello
        evans.attach(
            "cello voice",
            abjad.Clef("tenor"),
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
            ("cello voice", [0, 1, 2]),
            evans.talea(
                [12, 4, 3, 4, 3, 2, 5, 3, 4, 2],
                16,
                extra_counts=[],
                preamble=[1, 1, 1, 1, 1, 1],
                preprocessor=evans.make_preprocessor(quarters=True),
                rewrite=-1,
            ),
            evans.PitchHandler(
                harmonics,
            ),
            lambda _: evans.ArticulationHandler(["accent"])(abjad.select.get(abjad.select.leaves(_), [0, 1, 2, 3, 4, 5])),
            lambda _: abjad.glissando(abjad.select.get(abjad.select.logical_ties(_), [7, 8, 9, 10, 11, 12, 13, 14, 15, 16])),
            lambda _: [abjad.tweak(leaf.note_heads[1], r"\tweak NoteHead.style #'harmonic") for leaf in abjad.select.chords(_)],
            lambda _: evans.ArticulationHandler(["tremolo"], articulation_boolean_vector=[0, 1, 0, 0, 1])(abjad.select.get(abjad.select.logical_ties(_), [7, 8, 9, 10, 11, 12, 13, 14, 15, 16])),
            lambda _: evans.ArticulationHandler(["accent"], articulation_boolean_vector=[0, 1, 0, 0, 1])(abjad.select.get(abjad.select.logical_ties(_), [7, 8, 9, 10, 11, 12, 13, 14, 15, 16])),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOn", site="before"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\harmonicsOff", site="after"),
                selector=lambda _: abjad.select.leaf(_, 5),
            ),
            lambda _: baca.trill_spanner(abjad.select.logical_tie(_, 6), alteration="+P4", harmonic=True),
            evans.Attachment(
                abjad.Dynamic("f"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 6),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(_, 6),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 10),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 10),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 12),
            ),
            evans.Attachment(
                abjad.StartHairpin("|>"),
                selector=lambda _: abjad.select.leaf(_, 13),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 14),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 14),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 19),
            ),
            evans.Attachment(
                abjad.StartHairpin("|>"),
                selector=lambda _: abjad.select.leaf(_, 19),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 20),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 20),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 22),
            ),
            evans.Attachment(
                abjad.StartHairpin("|>"),
                selector=lambda _: abjad.select.leaf(_, 22),
            ),
            evans.Attachment(
                abjad.Dynamic("mp"),
                selector=lambda _: abjad.select.leaf(_, 23),
            ),
            evans.Attachment(
                abjad.StartHairpin("<|"),
                selector=lambda _: abjad.select.leaf(_, 23),
            ),
            evans.Attachment(
                abjad.Dynamic("ff"),
                selector=lambda _: abjad.select.leaf(_, 25),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            abjad.LilyPondLiteral(r'\all-color-music #"black"', site="before"),
        ),
        evans.MusicCommand(
            ("cello voice", [3, 4]),
            evans.talea(
                [1],
                32,
                extra_counts=[-2, 0, -1, 0, 1, 2],
                preprocessor=evans.make_preprocessor(quarters=True)
            ),
            evans.loop([0, 1, 2, 1, 1.5, 3.5], [1, 2, -1, 3, -1]),
            # evans.slur([3]),
            evans.slur([6, 4, 7, 5], phrase=True),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\default-notehead-markup"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 6",
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
                        left_text=abjad.Markup(r"\half-diamond-notehead-markup"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 6",
                ),
                selector=lambda _: abjad.select.leaf(_, len(abjad.select.leaves(_))//2),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.select.leaf(_, -5),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\diamond-notehead-markup"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 6",
                ),
                selector=lambda _: abjad.select.leaf(_, -5),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            # evans.Attachment(
            #     abjad.bundle(
            #         abjad.StartTextSpan(
            #             left_text=abjad.Markup(r'\markup \upright "non gridato"'),
            #             style=r"solid-line-with-arrow",
            #             command=r"\startTextSpanTwo",
            #         ),
            #         r"- \tweak staff-padding 8",
            #     ),
            #     selector=lambda _: abjad.select.leaf(_, 0),
            # ),
            # evans.Attachment(
            #     abjad.StopTextSpan(command=r"\stopTextSpanTwo",),
            #     selector=lambda _: abjad.select.leaf(_, -7),
            # ),
            # evans.Attachment(
            #     abjad.bundle(
            #         abjad.StartTextSpan(
            #             left_text=abjad.Markup(r'\markup \upright "molto gridato"'),
            #             style=r"dashed-line-with-hook",
            #             command=r"\startTextSpanTwo",
            #         ),
            #         r"- \tweak staff-padding 8",
            #     ),
            #     selector=lambda _: abjad.select.leaf(_, -7),
            # ),
            # evans.Attachment(
            #     abjad.StopTextSpan(command=r"\stopTextSpanTwo",),
            #     selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            # ),
            abjad.Clef("treble"),
            abjad.Dynamic("sfp"),
            abjad.StartHairpin("<"),
            evans.Attachment(
                abjad.Dynamic("mp"),
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
        ),
        evans.MusicCommand(
            ("cello voice", [5, 6]),
            evans.talea(
                [1],
                32,
                # extra_counts=[-2, 0, -1, 0, 1, 2],
                preprocessor=evans.make_preprocessor(quarters=True)
            ),
            evans.loop([_ + 7 for _ in [0, 1, 2, 3, 1, 3, 4, 5, 5.5]], [2]),
            # evans.slur([4, 5]),
            # evans.slur([9], phrase=True),
            # evans.Attachment(
            #     abjad.bundle(
            #         abjad.StartTextSpan(
            #             left_text=abjad.Markup(r"\diamond-notehead-markup"),
            #             style=r"solid-line-with-arrow",
            #             command=r"\startTextSpanOne",
            #         ),
            #         r"- \tweak staff-padding 7",
            #     ),
            #     selector=lambda _: abjad.select.leaf(_, 0),
            # ),
            # evans.Attachment(
            #     abjad.StopTextSpan(command=r"\stopTextSpanOne",),
            #     selector=lambda _: abjad.select.leaf(_, -5),
            # ),
            # evans.Attachment(
            #     abjad.bundle(
            #         abjad.StartTextSpan(
            #             left_text=abjad.Markup(r"\half-diamond-notehead-markup"),
            #             style=r"dashed-line-with-hook",
            #             command=r"\startTextSpanOne",
            #         ),
            #         r"- \tweak staff-padding 7",
            #     ),
            #     selector=lambda _: abjad.select.leaf(_, -5),
            # ),
            # evans.Attachment(
            #     abjad.StopTextSpan(command=r"\stopTextSpanOne",),
            #     selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            # ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r'\markup \upright "quasi gridato"'),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanTwo",
                    ),
                    r"- \tweak staff-padding 9",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanTwo",),
                selector=lambda _: abjad.get.leaf(abjad.select.leaf(_, -1), 1),
            ),
            abjad.Clef("treble"),
            abjad.Dynamic("ff"),
            abjad.StartHairpin(">"),
            evans.Attachment(
                abjad.Dynamic("mf"),
                selector=lambda _: abjad.select.leaf(_, -1),
            ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\half-harmonic", site="before"),
            #     selector=lambda _: abjad.select.leaf(_, 0),
            # ),
            # evans.Attachment(
            #     abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
            #     selector=lambda _: abjad.select.leaf(_, -1),
            # ),
        ),
        evans.MusicCommand(
            ("cello voice", [7, 8]),
            evans.talea([4, 3, 1], 4),
            evans.PitchHandler(["e''"]),
            evans.Attachment(
                abjad.Articulation("accent"),
                selector=lambda _: abjad.select.leaf(_, 0)
            ),
            evans.Attachment(
                abjad.AfterGraceContainer("c'''16"),
                lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\highest", site="before"),
                lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\revert-noteheads", site="after"),
                lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                abjad.LilyPondLiteral(r"\tweak Stem.direction #down", site="before"),
                lambda _: abjad.select.leaf(_, -1),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    4, 5, 5, 4, 5, 6, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, right_padding=2.5
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                evans.make_fancy_gliss(
                    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 4, 5, 6, 5, 6, 6, 5, 4, 5, right_padding=2.5
                ),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 1),
            ),
            evans.Attachment(
                abjad.Glissando(),
                selector=lambda _: abjad.select.leaf(_, 2),
            ),
            evans.Attachment(
                abjad.Dynamic("fff"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StartHairpin(">"),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.Dynamic("mf"),
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
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\half-diamond-notehead-markup"),
                        style=r"solid-line-with-arrow",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 6",
                ),
                selector=lambda _: abjad.select.leaf(_, 0),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
                selector=lambda _: abjad.select.leaf(_, -2),
            ),
            evans.Attachment(
                abjad.bundle(
                    abjad.StartTextSpan(
                        left_text=abjad.Markup(r"\diamond-notehead-markup"),
                        style=r"dashed-line-with-hook",
                        command=r"\startTextSpanOne",
                    ),
                    r"- \tweak staff-padding 6",
                ),
                selector=lambda _: abjad.select.leaf(_, -2),
            ),
            evans.Attachment(
                abjad.StopTextSpan(command=r"\stopTextSpanOne",),
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
            cairn.lib.mark_78,
            lambda _: abjad.select.leaf(_, 0),
        ),
        evans.attach(
            "Global Context",
            cairn.lib.met_78,
            lambda _: abjad.select.leaf(_, 0),
        ),
    ],
    score_template=cairn.score,
    transpose_from_sounding_pitch=False,
    time_signatures=cairn.signatures_08,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "abjad.ily",
        "../../build/segment_stylesheet.ily",
    ],
    segment_name="08",
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
