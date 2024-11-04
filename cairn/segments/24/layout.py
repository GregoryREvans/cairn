import pathlib

import evans

import cairn

breaks = evans.Breaks(
    evans.Page(  # 1
        evans.System(measures=5, lbsd=(10, "(8 10)"), x_offset=4),
        evans.System(measures=5, lbsd=(60, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 2
        evans.System(measures=5, lbsd=(10, "(8 10)"), x_offset=4),
        evans.System(measures=5, lbsd=(60, "(8 10)"), x_offset=4),
    ),
    time_signatures=cairn.reduced_signatures_24,
    de24ault_spacing=(1, 35),  # 42
    spacing=[
        # (2, (1, 15)),
    ],
    bar_number=1,
)

output_path = pathlib.Path(__24ile__).parent

breaks.make_document_layout(path=output_path)
