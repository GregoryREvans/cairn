import abjad
import evans
from abjadext import rmakers

building_block_1 = evans.PitchSegment([0, 1, 12])
building_block_2 = evans.PitchSegment([0, 2])
building_block_3 = evans.PitchSegment([0, 1, 2, 9, 10])
building_block_4 = evans.PitchSegment([0, 1])
building_block_5 = evans.PitchSegment([3, 6])
building_block_6 = evans.PitchSegment([1, 4])
building_block_7 = evans.PitchSegment([5, 6])
building_block_8 = evans.PitchSegment([2, 3, 4])
building_block_9 = evans.PitchSegment([7])
building_block_10 = evans.PitchSegment([8])
building_block_11 = evans.PitchSegment([4, 6])
building_block_12 = evans.PitchSegment([2, 3])
building_block_13 = evans.PitchSegment([11])

sieve_1a = abjad.index([int(_) for _ in building_block_1], 13)
sieve_1b = abjad.index([int(_) for _ in building_block_2], 9)
sieve_1 = sieve_1a & sieve_1b
sieve_2a = abjad.index([int(_) for _ in building_block_3], 13)
sieve_2b = abjad.index([int(_) for _ in building_block_4], 9)
sieve_2 = sieve_2a & sieve_2b
sieve_3 = abjad.index([int(_) for _ in building_block_5], 13)
sieve_4 = abjad.index([int(_) for _ in building_block_6], 13)
sieve_5a = abjad.index([int(_) for _ in building_block_7], 13)
sieve_5b = abjad.index([int(_) for _ in building_block_8], 9)
sieve_5 = sieve_5a & sieve_5b
sieve_6a = abjad.index([int(_) for _ in building_block_9], 13)
sieve_6b = abjad.index([int(_) for _ in building_block_10], 9)
sieve_6 = sieve_6a & sieve_6b
sieve_7a = abjad.index([int(_) for _ in building_block_11], 13)
sieve_7b = abjad.index([int(_) for _ in building_block_12], 9)
sieve_7 = sieve_7a & sieve_7b
sieve_8 = abjad.index([int(_) for _ in building_block_13], 13)


rhythm_sieve_1 = (
    sieve_1 ^ sieve_2 & sieve_3 | sieve_4 & sieve_5 | sieve_6 & sieve_7 ^ sieve_8
)

sieve_vector = rhythm_sieve_1.get_boolean_vector(total_length=9 * 13)

sieve_counts = evans.Sequence(sieve_vector).durations_from_vector()

building_block_1 = evans.PitchSegment([0, 1, 12]).invert(0)
building_block_2 = evans.PitchSegment([0, 2]).invert(0)
building_block_3 = evans.PitchSegment([0, 1, 2, 9, 10]).invert(0)
building_block_4 = evans.PitchSegment([0, 1]).invert(0)
building_block_5 = evans.PitchSegment([3, 6]).invert(0)
building_block_6 = evans.PitchSegment([1, 4]).invert(0)
building_block_7 = evans.PitchSegment([5, 6]).invert(0)
building_block_8 = evans.PitchSegment([2, 3, 4]).invert(0)
building_block_9 = evans.PitchSegment([7]).invert(0)
building_block_10 = evans.PitchSegment([8]).invert(0)
building_block_11 = evans.PitchSegment([4, 6]).invert(0)
building_block_12 = evans.PitchSegment([2, 3]).invert(0)
building_block_13 = evans.PitchSegment([11]).invert(0)

sieve_1a = abjad.index([int(_) for _ in building_block_1], 13)
sieve_1b = abjad.index([int(_) for _ in building_block_2], 9)
sieve_1 = sieve_1a & sieve_1b
sieve_2a = abjad.index([int(_) for _ in building_block_3], 13)
sieve_2b = abjad.index([int(_) for _ in building_block_4], 9)
sieve_2 = sieve_2a & sieve_2b
sieve_3 = abjad.index([int(_) for _ in building_block_5], 13)
sieve_4 = abjad.index([int(_) for _ in building_block_6], 13)
sieve_5a = abjad.index([int(_) for _ in building_block_7], 13)
sieve_5b = abjad.index([int(_) for _ in building_block_8], 9)
sieve_5 = sieve_5a & sieve_5b
sieve_6a = abjad.index([int(_) for _ in building_block_9], 13)
sieve_6b = abjad.index([int(_) for _ in building_block_10], 9)
sieve_6 = sieve_6a & sieve_6b
sieve_7a = abjad.index([int(_) for _ in building_block_11], 13)
sieve_7b = abjad.index([int(_) for _ in building_block_12], 9)
sieve_7 = sieve_7a & sieve_7b
sieve_8 = abjad.index([int(_) for _ in building_block_13], 13)


inverted_rhythm_sieve_1 = (
    sieve_1 ^ sieve_2 & sieve_3 | sieve_4 & sieve_5 | sieve_6 & sieve_7 ^ sieve_8
)

inverted_vector = inverted_rhythm_sieve_1.get_boolean_vector(total_length=9 * 13)

inverted_counts = evans.Sequence(inverted_vector).durations_from_vector()


def divide_measure(counts, rotation, tie_counts):
    out = []
    counts = evans.Sequence([_ for _ in counts]).rotate(rotation)
    counts = [(_ // 2) + 1 for _ in counts]
    for count in counts:
        out.append((1 for _ in range(count)))

    def make_music(divisions):
        music = evans.tuplet(out)(divisions)
        temp_staff = abjad.Staff(music)
        ties = abjad.select.logical_ties(temp_staff)
        tie_groups = abjad.select.partition_by_counts(
            ties, tie_counts, cyclic=True, overhang=True
        )
        for group in tie_groups:
            if 1 < len(group):
                abjad.tie(group)
        for tie in abjad.select.logical_ties(temp_staff, pitched=True):
            leaves = abjad.select.leaves(tie)
            parent_groups = abjad.select.group_by(
                leaves, lambda _: abjad.get.parentage(_).parent
            )
            for group in parent_groups:
                abjad.mutate.fuse(group)
        # abjad.mutate.split(temp_staff[:], divisions)
        meter_command = evans.RewriteMeterCommand(boundary_depth=-1)
        metered_staff = rmakers.wrap_in_time_signature_staff(temp_staff[:], divisions)
        meter_command(metered_staff)
        music = abjad.mutate.eject_contents(metered_staff)
        # music = abjad.mutate.eject_contents(temp_staff)
        return music

    return make_music


pitch_sieve_durations_1 = evans.Sequence(
    derived_sieve_1.get_boolean_vector(total_length=9 * 13)
).durations_from_vector()
pitch_sieve_durations_2 = evans.Sequence(
    derived_sieve_2.get_boolean_vector(total_length=9 * 13)
).durations_from_vector()
pitch_sieve_durations_3 = evans.Sequence(
    derived_sieve_3.get_boolean_vector(total_length=9 * 13)
).durations_from_vector()
pitch_sieve_durations_4 = evans.Sequence(
    derived_sieve_4.get_boolean_vector(total_length=9 * 13)
).durations_from_vector()
pitch_sieve_durations_5 = evans.Sequence(
    derived_sieve_5.get_boolean_vector(total_length=9 * 13)
).durations_from_vector()
pitch_sieve_durations_6 = evans.Sequence(
    derived_sieve_6.get_boolean_vector(total_length=9 * 13)
).durations_from_vector()
pitch_sieve_durations_7 = evans.Sequence(
    derived_sieve_7.get_boolean_vector(total_length=9 * 13)
).durations_from_vector()
pitch_sieve_durations_8 = evans.Sequence(
    derived_sieve_8.get_boolean_vector(total_length=9 * 13)
).durations_from_vector()
