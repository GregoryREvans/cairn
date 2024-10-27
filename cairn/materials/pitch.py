import abjad
import evans

probabilities_0 = evans.Sequence(
    [4, 0, 4, 0, 3, 0, 0, 3, 2, 2, 1, 1, 1, 1]
).normalize_to_sum(1)
probabilities_1 = evans.Sequence(
    [0, 4, 0, 4, 0, 3, 2, 2, 2, 2, 1, 1, 1, 1]
).normalize_to_sum(1)
probabilities_2 = evans.Sequence(
    [2, 0, 5, 4, 3, 3, 3, 3, 2, 3, 1, 1, 1, 1]
).normalize_to_sum(1)
probabilities_3 = evans.Sequence(
    [0, 0, 2, 3, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0]
).normalize_to_sum(1)
probabilities_4 = evans.Sequence(
    [1, 1, 1, 1, 4, 3, 3, 3, 3, 3, 2, 2, 2, 2]
).normalize_to_sum(1)
probabilities_5 = evans.Sequence(
    [1, 1, 1, 1, 3, 4, 3, 3, 3, 3, 2, 2, 2, 2]
).normalize_to_sum(1)
probabilities_6 = evans.Sequence(
    [1, 1, 1, 1, 3, 3, 4, 3, 3, 3, 2, 2, 2, 2]
).normalize_to_sum(1)
probabilities_7 = evans.Sequence(
    [1, 1, 1, 1, 3, 3, 3, 4, 3, 3, 2, 2, 2, 2]
).normalize_to_sum(1)
probabilities_8 = evans.Sequence(
    [1, 1, 1, 1, 3, 3, 3, 3, 4, 3, 2, 2, 2, 2]
).normalize_to_sum(1)
probabilities_9 = evans.Sequence(
    [1, 1, 1, 1, 3, 3, 3, 3, 3, 4, 2, 2, 2, 2]
).normalize_to_sum(1)
probabilities_10 = evans.Sequence(
    [1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 3, 2, 2, 2]
).normalize_to_sum(1)
probabilities_11 = evans.Sequence(
    [1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 2, 3, 2, 2]
).normalize_to_sum(1)
probabilities_12 = evans.Sequence(
    [1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 2, 2, 3, 2]
).normalize_to_sum(1)
probabilities_13 = evans.Sequence(
    [1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 2, 2, 2, 3]
).normalize_to_sum(1)
string_change_probs = {
    0: {
        0: probabilities_0[0],
        1: probabilities_0[1],
        2: probabilities_0[2],
        3: probabilities_0[3],
        4: probabilities_0[4],
        5: probabilities_0[5],
        6: probabilities_0[6],
        7: probabilities_0[7],
        8: probabilities_0[8],
        9: probabilities_0[9],
        10: probabilities_0[10],
        11: probabilities_0[11],
        12: probabilities_0[12],
        13: probabilities_0[13],
    },
    1: {
        0: probabilities_1[0],
        1: probabilities_1[1],
        2: probabilities_1[2],
        3: probabilities_1[3],
        4: probabilities_1[4],
        5: probabilities_1[5],
        6: probabilities_1[6],
        7: probabilities_1[7],
        8: probabilities_1[8],
        9: probabilities_1[9],
        10: probabilities_1[10],
        11: probabilities_1[11],
        12: probabilities_1[12],
        13: probabilities_1[13],
    },
    2: {
        0: probabilities_2[0],
        1: probabilities_2[1],
        2: probabilities_2[2],
        3: probabilities_2[3],
        4: probabilities_2[4],
        5: probabilities_2[5],
        6: probabilities_2[6],
        7: probabilities_2[7],
        8: probabilities_2[8],
        9: probabilities_2[9],
        10: probabilities_2[10],
        11: probabilities_2[11],
        12: probabilities_2[12],
        13: probabilities_2[13],
    },
    3: {
        0: probabilities_3[0],
        1: probabilities_3[1],
        2: probabilities_3[2],
        3: probabilities_3[3],
        4: probabilities_3[4],
        5: probabilities_3[5],
        6: probabilities_3[6],
        7: probabilities_3[7],
        8: probabilities_3[8],
        9: probabilities_3[9],
        10: probabilities_3[10],
        11: probabilities_3[11],
        12: probabilities_3[12],
        13: probabilities_3[13],
    },
    4: {
        0: probabilities_4[0],
        1: probabilities_4[1],
        2: probabilities_4[2],
        3: probabilities_4[3],
        4: probabilities_4[4],
        5: probabilities_4[5],
        6: probabilities_4[6],
        7: probabilities_4[7],
        8: probabilities_4[8],
        9: probabilities_4[9],
        10: probabilities_4[10],
        11: probabilities_4[11],
        12: probabilities_4[12],
        13: probabilities_4[13],
    },
    5: {
        0: probabilities_5[0],
        1: probabilities_5[1],
        2: probabilities_5[2],
        3: probabilities_5[3],
        4: probabilities_5[4],
        5: probabilities_5[5],
        6: probabilities_5[6],
        7: probabilities_5[7],
        8: probabilities_5[8],
        9: probabilities_5[9],
        10: probabilities_5[10],
        11: probabilities_5[11],
        12: probabilities_5[12],
        13: probabilities_5[13],
    },
    6: {
        0: probabilities_6[0],
        1: probabilities_6[1],
        2: probabilities_6[2],
        3: probabilities_6[3],
        4: probabilities_6[4],
        5: probabilities_6[5],
        6: probabilities_6[6],
        7: probabilities_6[7],
        8: probabilities_6[8],
        9: probabilities_6[9],
        10: probabilities_6[10],
        11: probabilities_6[11],
        12: probabilities_6[12],
        13: probabilities_6[13],
    },
    7: {
        0: probabilities_7[0],
        1: probabilities_7[1],
        2: probabilities_7[2],
        3: probabilities_7[3],
        4: probabilities_7[4],
        5: probabilities_7[5],
        6: probabilities_7[6],
        7: probabilities_7[7],
        8: probabilities_7[8],
        9: probabilities_7[9],
        10: probabilities_7[10],
        11: probabilities_7[11],
        12: probabilities_7[12],
        13: probabilities_7[13],
    },
    8: {
        0: probabilities_8[0],
        1: probabilities_8[1],
        2: probabilities_8[2],
        3: probabilities_8[3],
        4: probabilities_8[4],
        5: probabilities_8[5],
        6: probabilities_8[6],
        7: probabilities_8[7],
        8: probabilities_8[8],
        9: probabilities_8[9],
        10: probabilities_8[10],
        11: probabilities_8[11],
        12: probabilities_8[12],
        13: probabilities_8[13],
    },
    9: {
        0: probabilities_9[0],
        1: probabilities_9[1],
        2: probabilities_9[2],
        3: probabilities_9[3],
        4: probabilities_9[4],
        5: probabilities_9[5],
        6: probabilities_9[6],
        7: probabilities_9[7],
        8: probabilities_9[8],
        9: probabilities_9[9],
        10: probabilities_9[10],
        11: probabilities_9[11],
        12: probabilities_9[12],
        13: probabilities_9[13],
    },
    10: {
        0: probabilities_10[0],
        1: probabilities_10[1],
        2: probabilities_10[2],
        3: probabilities_10[3],
        4: probabilities_10[4],
        5: probabilities_10[5],
        6: probabilities_10[6],
        7: probabilities_10[7],
        8: probabilities_10[8],
        9: probabilities_10[9],
        10: probabilities_10[10],
        11: probabilities_10[11],
        12: probabilities_10[12],
        13: probabilities_10[13],
    },
    11: {
        0: probabilities_11[0],
        1: probabilities_11[1],
        2: probabilities_11[2],
        3: probabilities_11[3],
        4: probabilities_11[4],
        5: probabilities_11[5],
        6: probabilities_11[6],
        7: probabilities_11[7],
        8: probabilities_11[8],
        9: probabilities_11[9],
        10: probabilities_11[10],
        11: probabilities_11[11],
        12: probabilities_11[12],
        13: probabilities_11[13],
    },
    12: {
        0: probabilities_12[0],
        1: probabilities_12[1],
        2: probabilities_12[2],
        3: probabilities_12[3],
        4: probabilities_12[4],
        5: probabilities_12[5],
        6: probabilities_12[6],
        7: probabilities_12[7],
        8: probabilities_12[8],
        9: probabilities_12[9],
        10: probabilities_12[10],
        11: probabilities_12[11],
        12: probabilities_12[12],
        13: probabilities_12[13],
    },
    13: {
        0: probabilities_13[0],
        1: probabilities_13[1],
        2: probabilities_13[2],
        3: probabilities_13[3],
        4: probabilities_13[4],
        5: probabilities_13[5],
        6: probabilities_13[6],
        7: probabilities_13[7],
        8: probabilities_13[8],
        9: probabilities_13[9],
        10: probabilities_13[10],
        11: probabilities_13[11],
        12: probabilities_13[12],
        13: probabilities_13[13],
    },
}


def string_crossing_modules(
    first_state=0, random_seed=1, length=30, return_lengths_only=False
):
    indices = evans.Sequence.markov(
        transition_prob=string_change_probs,
        first_state=first_state,
        length=length,
        seed=random_seed,
    )
    modules = [
        [-3, -1, 1, 3],
        [3, 1, -1, -3],
        [-3, -1, 1, 3, 3, 1, -1, -3],
        [3, 1, -1, -3, -3, -1, 1, 3],
        [-3, -1],
        [-1, 1],
        [1, 3],
        [3, 1],
        [1, -1],
        [-1, -3],
        [-3, -1, 1],
        [-1, 1, 3],
        [3, 1, -1],
        [1, -1, -3],
    ]
    out = [modules[first_state]]
    for i in indices:
        out.append(modules[i % len(modules)])
    if return_lengths_only is False:
        seq = evans.Sequence(out).flatten(depth=-1)
        return seq
    else:
        module_lengths = [len(_) for _ in out]
        for i, module_length in enumerate(module_lengths):
            if module_length == 8:
                module_lengths[i] = [4, 4]
        module_lengths = evans.Sequence(module_lengths).flatten(depth=-1)
        return module_lengths
