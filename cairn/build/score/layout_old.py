import pathlib

import evans

import cairn

breaks = evans.Breaks(
    evans.Page(
        evans.System(measures=3, lbsd=(60 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(85 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(135 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5, "(6 10)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=3, lbsd=(10 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(85 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(135 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5, "(6 10)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=3, lbsd=(10 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(85 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(135 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5, "(6 10)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=3, lbsd=(10 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(85 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(135 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5, "(6 10)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=3, lbsd=(10 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(85 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(135 - 5, "(6 10)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=3, lbsd=(10 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(85 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(135 - 5, "(6 10)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=3, lbsd=(10 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(85 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(135 - 5, "(6 10)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=3, lbsd=(10 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(85 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(135 - 5, "(6 10)"), x_offset=4),
    ),
    evans.Page(
        evans.System(measures=3, lbsd=(10 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(85 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5, "(6 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(135 - 5, "(6 10)"), x_offset=4),
    ),
    time_signatures=cairn.all_signatures,
    default_spacing=(1, 30),
    # spacing=[
    #     (193, (1, 30)),
    #     (194, (7, 144)),  #
    #     (195, (1, 30)),
    #     (196, (1, 30)),
    #     (197, (1, 30)),
    #     (198, (7, 144)),  #
    #     (199, (1, 30)),
    #     (200, (1, 30)),
    #     (201, (1, 30)),
    #     (202, (1, 30)),
    # ],
    bar_number=1,
)

output_path = pathlib.Path(__file__).parent

breaks.make_document_layout(path=output_path)
