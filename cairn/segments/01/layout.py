import pathlib

import evans

import cairn

breaks = evans.Breaks(
    evans.Page(  # 1
        evans.System(measures=3, lbsd=(10, "(8 15)"), x_offset=4),
        evans.System(measures=3, lbsd=(60, "(8 15)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 + 50, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # 2
        evans.System(measures=3, lbsd=(10, "(8 15)"), x_offset=4),
        evans.System(measures=3, lbsd=(60, "(8 15)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 + 50, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # 3
        evans.System(measures=2, lbsd=(10, "(8 15)"), x_offset=4),
    ),
    time_signatures=cairn.reduced_signatures_01,
    default_spacing=(1, 40),  # 42
    spacing=[
        # (2, (1, 15)),
    ],
    bar_number=1,
)

output_path = pathlib.Path(__file__).parent

breaks.make_document_layout(path=output_path)
