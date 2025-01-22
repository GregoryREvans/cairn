import pathlib

import evans

import cairn

breaks = evans.Breaks(
    evans.Page(  # 1
        evans.System(measures=3, lbsd=(10, "(8 15)"), x_offset=4),
        evans.System(measures=1, lbsd=(10 + 50, "(8 15)"), x_offset=4),
        evans.System(measures=2, lbsd=(10 + 50 + 50, "(8 15)"), x_offset=4),
    ),
    time_signatures=cairn.reduced_signatures_29,
    default_spacing=(1, 35),  # 42
    spacing=[
        # (2, (1, 15)),
    ],
    bar_number=1,
)

output_path = pathlib.Path(__file__).parent

breaks.make_document_layout(path=output_path)
