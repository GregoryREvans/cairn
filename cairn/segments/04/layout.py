import pathlib

import evans

import cairn

breaks = evans.Breaks(
    evans.Page(  # 1
        evans.System(measures=3, lbsd=(10 - 5, "(8 15)"), x_offset=4),
        # evans.System(measures=3, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(8 15)"), x_offset=4),
        # evans.System(measures=3, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5, "(8 15)"), x_offset=4),
        # evans.System(measures=3, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5 - 7, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 2
        evans.System(measures=3, lbsd=(10 - 5 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5 - 5 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5 - 5 - 5 - 7, "(8 22)"), x_offset=4),
        # evans.System(measures=3, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5 - 5 - 5 - 5 - 8, "(8 22)"), x_offset=4),
        # evans.System(measures=3, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        evans.System(
            measures=3, lbsd=(160 - 5 - 5 - 5 - 5 - 5 - 9, "(8 22)"), x_offset=4
        ),
    ),
    evans.Page(  # 3
        evans.System(measures=3, lbsd=(10 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(135 - 5 - 5, "(8 20)"), x_offset=4),
        # evans.System(measures=3, lbsd=(160 - 5, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 4
        evans.System(measures=3, lbsd=(10 - 5, "(10 20)"), x_offset=4),
        # evans.System(measures=3, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5 - 8, "(10 17)"), x_offset=4),
        # evans.System(measures=3, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5 - 8 - 9, "(10 17)"), x_offset=4),
        # evans.System(measures=3, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5 - 8 - 9 - 10, "(10 17)"), x_offset=4),
    ),
    evans.Page(  # 5
        evans.System(measures=3, lbsd=(10 - 5, "(10 17)"), x_offset=4),
        # evans.System(measures=3, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5 - 8, "(10 17)"), x_offset=4),
        # evans.System(measures=3, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5 - 8 - 9, "(10 17)"), x_offset=4),
        # evans.System(measures=3, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5 - 8 - 9 - 10, "(10 17)"), x_offset=4),
    ),
    evans.Page(  # 6
        evans.System(measures=3, lbsd=(10 - 5, "(10 17)"), x_offset=4),
        # evans.System(measures=3, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5 - 8, "(10 17)"), x_offset=4),
        # evans.System(measures=3, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5 - 8 - 9, "(10 17)"), x_offset=4),
        # evans.System(measures=3, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5 - 8 - 9 - 10, "(10 17)"), x_offset=4),
    ),
    evans.Page(  # 7
        evans.System(measures=3, lbsd=(10 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5 - 2, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 8
        evans.System(measures=2, lbsd=(10 - 5, "(8 20)"), x_offset=4),
        # evans.System(measures=3, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(8 18)"), x_offset=4),
        # evans.System(measures=3, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=1, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        # evans.System(measures=1, lbsd=(160 - 5, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 9
        evans.System(measures=1, lbsd=(10 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(60 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        # evans.System(measures=2, lbsd=(160 - 5, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 10
        evans.System(measures=2, lbsd=(10 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(60 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5 + 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(135 - 5 + 5 + 6, "(8 10)"), x_offset=4),
        # evans.System(measures=2, lbsd=(160 - 5, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 11
        evans.System(measures=2, lbsd=(10 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(35 - 5, "(10 17)"), x_offset=4),
        # evans.System(measures=2, lbsd=(60 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(85 - 5, "(10 17)"), x_offset=4),
        # evans.System(measures=2, lbsd=(110 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        # evans.System(measures=2, lbsd=(160 - 5, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 12
        evans.System(measures=2, lbsd=(10 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(60 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5 + 7, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(135 - 5 + 7 + 6, "(8 10)"), x_offset=4),
        # evans.System(measures=2, lbsd=(160 - 5, "(8 10)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10 - 5, "(10 17)"), x_offset=4),
        # evans.System(measures=2, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(60 - 5, "(10 17)"), x_offset=4),
        # evans.System(measures=2, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5, "(10 17)"), x_offset=4),
        # evans.System(measures=3, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        # evans.System(measures=2, lbsd=(160 - 5, "(8 10)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=2, lbsd=(10 - 5, "(10 17)"), x_offset=4),
        # evans.System(measures=2, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(10 17)"), x_offset=4),
        # evans.System(measures=0, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        # evans.System(measures=2, lbsd=(160 - 5, "(8 10)"), x_offset=4),
    ),
    time_signatures=cairn.reduced_signatures_04,
    default_spacing=(1, 35),  # 42
    spacing=[
        # (2, (1, 15)),
    ],
    bar_number=1,
)

output_path = pathlib.Path(__file__).parent

breaks.make_document_layout(path=output_path)
