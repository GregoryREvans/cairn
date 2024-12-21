import pathlib

import evans

import cairn

breaks = evans.Breaks(
    evans.Page(  # page 1
        evans.System(measures=5, lbsd=(40 + 5, "(8 15)"), x_offset=4),
        evans.System(measures=4, lbsd=(80 + 5, "(8 15)"), x_offset=4),
        evans.System(measures=3, lbsd=(80 + 40 + 5, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 2
        evans.System(measures=3, lbsd=(5, "(8 15)"), x_offset=4),
        evans.System(measures=4, lbsd=(5 + 40, "(8 15)"), x_offset=4),
        evans.System(measures=4, lbsd=(5 + 40 + 40, "(8 15)"), x_offset=4),
        evans.System(measures=4, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 3
        evans.System(measures=4, lbsd=(5, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=3, lbsd=(5 + 40, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=5, lbsd=(5 + 40 + 40, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=4, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 4
        evans.System(measures=4, lbsd=(5, "(8 15)"), x_offset=4), # was 8 9
        evans.System(measures=5, lbsd=(5 + 40, "(8 15)"), x_offset=4), # was 8 9
        evans.System(measures=4, lbsd=(5 + 40 + 40, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=4, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 5
        evans.System(measures=5, lbsd=(5, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=4, lbsd=(5 + 40, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=3, lbsd=(5 + 40 + 40, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=4, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 6
        evans.System(measures=4, lbsd=(5, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=3, lbsd=(5 + 40, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=3, lbsd=(5 + 40 + 40, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=3, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 7
        evans.System(measures=3, lbsd=(5, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=2, lbsd=(5 + 40, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=3, lbsd=(5 + 40 + 40, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=4, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 8
        evans.System(measures=3, lbsd=(5, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=4, lbsd=(5 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(5 + 40 + 40, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=2, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 9
        evans.System(measures=3, lbsd=(5, "(8 15)"), x_offset=4), # was 8 10
        evans.System(measures=3, lbsd=(5 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 40 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 10
        evans.System(measures=3, lbsd=(5, "(8 18 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 50, "(8 18 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 50 + 50, "(8 18 10)"), x_offset=4),
    ),
    evans.Page(  # page 11
        evans.System(measures=3, lbsd=(5, "(8 18 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 70, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 70 + 50, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # page 12
        evans.System(measures=3, lbsd=(5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 40 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 40 + 40 + 40, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # page 13
        evans.System(measures=4, lbsd=(5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 40 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 40 + 40 + 40, "(8 10)"), x_offset=4),
    ),
    evans.Page(  # page 14
        evans.System(measures=3, lbsd=(5, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=4, lbsd=(5 + 40 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=2, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 15
        evans.System(measures=2, lbsd=(5, "(8 10)"), x_offset=4),
        evans.System(measures=4, lbsd=(5 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=4, lbsd=(5 + 40 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 16
        evans.System(measures=3, lbsd=(5, "(8 10)"), x_offset=4),
        evans.System(measures=4, lbsd=(5 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=4, lbsd=(5 + 40 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 17
        evans.System(measures=3, lbsd=(5, "(8 10)"), x_offset=4),
        evans.System(measures=5, lbsd=(5 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=5, lbsd=(5 + 40 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=5, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 18
        evans.System(measures=5, lbsd=(5, "(8 10)"), x_offset=4),
        evans.System(measures=5, lbsd=(5 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=5, lbsd=(5 + 40 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=5, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 19
        evans.System(measures=3, lbsd=(5, "(8 10)"), x_offset=4),
        evans.System(measures=5, lbsd=(5 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=5, lbsd=(5 + 40 + 40, "(8 10)"), x_offset=4),
        evans.System(measures=5, lbsd=(5 + 40 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 20
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # page 21
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # page 22
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # page 23
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # page 24
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # page 25
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # page 26
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # page 27
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # page 28
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=5, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # page 29
        evans.System(measures=5, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=4, lbsd=(80, "(8 15 21)"), x_offset=4),
    ),
    evans.Page(  # page 30
        evans.System(measures=1, lbsd=(10, "(8 15 21)"), x_offset=4),
        evans.System(measures=4, lbsd=(70, "(8 9 9)"), x_offset=4),
        evans.System(measures=3, lbsd=(70 + 45, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 31
        evans.System(measures=2, lbsd=(5, "(8 9 9)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 45, "(8 15)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 45 + 35, "(8 15)"), x_offset=4),
        evans.System(measures=4, lbsd=(5 + 45 + 35 + 35, "(8 15)"), x_offset=4),
    ),
    evans.Page(  # page 32
        evans.System(measures=3, lbsd=(3, "(8 15)"), x_offset=4),
        evans.System(measures=2, lbsd=(3 + 40, "(8 9 9)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 42 + 42, "(8 15)"), x_offset=4),
        evans.System(measures=3, lbsd=(5 + 42 + 40 + 40, "(8 15)"), x_offset=4),
    ),
    time_signatures=cairn.all_signatures,
    default_spacing=(1, 35),
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
