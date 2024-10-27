import pathlib

import evans

import cairn

breaks = evans.Breaks(
    evans.Page(  # 1
        evans.System(measures=3, lbsd=(60 - 5, "(8 15)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5 - 3, "(9 15)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5 - 4 - 7, "(9 15)"), x_offset=4),
    ),
    evans.Page(  # 2
        evans.System(measures=3, lbsd=(10 - 5 + 4, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5 + 6 + 4, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5 + 12 + 4, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5 + 8, "(8 22)"), x_offset=4),
    ),
    evans.Page(  # 3
        evans.System(measures=3, lbsd=(10 - 5 - 5 + 5, "(8 22)"), x_offset=4),
        # evans.System(measures=3, lbsd=(35 - 5 - 5 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5 + 5, "(8 22)"), x_offset=4),
        # evans.System(measures=3, lbsd=(110 - 5 - 5 - 5 - 5 - 8, "(8 22)"), x_offset=4),
        evans.System(
            measures=3, lbsd=(160 - 5 - 5 - 5 - 5 - 5 - 9 + 5, "(8 10)"), x_offset=4
        ),
    ),
    evans.Page(  # 4
        # evans.System(measures=3, lbsd=(10 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(10 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5 + 2, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5 + 3, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(85 - 5 + 4, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5 - 5 + 5, "(8 20)"), x_offset=4),
    ),
    evans.Page(  # 5
        evans.System(measures=3, lbsd=(10 - 5, "(10 20)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5 - 8, "(10 17)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5 - 8 - 9, "(10 17)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5 - 8 - 9 - 10, "(10 17)"), x_offset=4),
    ),
    evans.Page(  # 6
        evans.System(measures=3, lbsd=(10 - 5, "(10 17)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5 - 8, "(10 17)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5 - 8 - 9, "(10 17)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5 - 8 - 9 - 10, "(10 17)"), x_offset=4),
    ),
    evans.Page(  # 7
        evans.System(measures=3, lbsd=(10 - 5, "(10 17)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5 - 8, "(10 17)"), x_offset=4),
        evans.System(measures=3, lbsd=(110 - 5 - 8 - 9, "(10 17)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5 - 8 - 9 - 10, "(10 17)"), x_offset=4),
    ),
    evans.Page(  # 8
        evans.System(measures=3, lbsd=(10 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(135 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(160 - 5 - 2, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 9
        evans.System(measures=2, lbsd=(10 - 5, "(8 20)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(8 18)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=1, lbsd=(135 - 5 + 2, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 10
        evans.System(measures=1, lbsd=(10 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(60 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5 + 2, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(135 - 5 + 4, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 11
        evans.System(measures=2, lbsd=(10 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(60 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(85 - 5 + 2, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5 + 5 + 2, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(135 - 5 + 5 + 6 + 1, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 12
        evans.System(measures=2, lbsd=(10 - 5 + 3, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(35 - 5 + 3, "(10 17)"), x_offset=4),
        evans.System(measures=2, lbsd=(85 - 5 + 3, "(10 17)"), x_offset=4),
        evans.System(measures=2, lbsd=(135 - 5 + 3, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 13
        evans.System(measures=2, lbsd=(10 - 5 + 2, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(60 - 5 + 2, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(85 - 5 + 2, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5 + 7 + 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(135 - 5 + 7 + 6, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # 14
        evans.System(measures=2, lbsd=(10 - 5, "(10 17)"), x_offset=4),
        evans.System(measures=2, lbsd=(60 - 5, "(10 17)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5, "(10 17)"), x_offset=4),
    ),
    evans.Page(  # 15
        evans.System(measures=2, lbsd=(10 - 5, "(10 17)"), x_offset=4),
        # evans.System(measures=2, lbsd=(35 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(60 - 5, "(10 17)"), x_offset=4),
        # evans.System(measures=0, lbsd=(85 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(110 - 5, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(135 - 5 + 2, "(8 10)"), x_offset=4),
        # evans.System(measures=2, lbsd=(160 - 5, "(8 10)"), x_offset=4),
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
