import pathlib

import evans

import cairn

breaks = evans.Breaks(
    evans.Page(  # 1
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # 2
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # 3
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # 4
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # 5
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # 6
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # 7
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # 8
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # 9
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # 10
        evans.System(measures=4, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=4, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    time_signatures=cairn.reduced_signatures_25,
    default_spacing=(1, 35),  # 42
    spacing=[
        # (2, (1, 15)),
    ],
    bar_number=1,
)

output_path = pathlib.Path(__file__).parent

breaks.make_document_layout(path=output_path)
