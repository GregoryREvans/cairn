import abjad
import evans


# do pitch mutations, tonnetz stuff, generalized mutations, etc...


root = 9

source_chord = [
    root,
    evans.PitchClassSet([root]).transpose(1)[0],
    evans.PitchClassSet([root]).invert(0).transpose(-4)[0],
    evans.PitchClassSet([root]).transpose(3)[0],
    evans.PitchClassSet([root]).invert(0).transpose(1)[0],
    evans.PitchClassSet([root]).transpose(-5)[0],
    evans.PitchClassSet([root]).transpose(-5).invert(0).transpose(-5)[0],
    evans.PitchClassSet([root]).transpose(-5).invert(0).transpose(-5).invert(0).transpose(-4)[0],
    evans.PitchClassSet([root]).transpose(-5).invert(0).transpose(-5).invert(0).transpose(-4).invert(0).transpose(-5)[0],
    evans.PitchClassSet([root]).transpose(-5).invert(0).transpose(-5).invert(0).transpose(-4).invert(0).transpose(-5).invert(0).transpose(-0.5)[0],
]

out = []

for tone in source_chord:
    out.append(
        evans.PitchClassSet(
            [
                tone,
                evans.PitchClassSet([tone]).transpose(1)[0],
                evans.PitchClassSet([tone]).invert(0).transpose(-4)[0],
                evans.PitchClassSet([tone]).transpose(3)[0],
                evans.PitchClassSet([tone]).invert(0).transpose(1)[0],
                evans.PitchClassSet([tone]).transpose(-5)[0],
                evans.PitchClassSet([tone]).transpose(-5).invert(0).transpose(-5)[0],
                evans.PitchClassSet([tone]).transpose(-5).invert(0).transpose(-5).invert(0).transpose(-4)[0],
                evans.PitchClassSet([tone]).transpose(-5).invert(0).transpose(-5).invert(0).transpose(-4).invert(0).transpose(-5)[0],
                evans.PitchClassSet([tone]).transpose(-5).invert(0).transpose(-5).invert(0).transpose(-4).invert(0).transpose(-5).invert(0).transpose(-0.5)[0],
            ]
        )
    )

out = evans.KlumpenhouwerNetwork(out)

meta_network = []
for network in out:
    sub_network = evans.KlumpenhouwerNetwork(
        [
            network,
            network.transpose(1),
            network.invert(0).transpose(-4),
            network.transpose(3),
            network.invert(0).transpose(1),
            network.transpose(-5),
            network.transpose(-5).invert(0).transpose(-5),
            network.transpose(-5).invert(0).transpose(-5).invert(0).transpose(-4),
            network.transpose(-5).invert(0).transpose(-5).invert(0).transpose(-4).invert(0).transpose(-5),
            network.transpose(-5).invert(0).transpose(-5).invert(0).transpose(-4).invert(0).transpose(-5).invert(0).transpose(-0.5),
        ]
    )
    meta_network.append(sub_network)

meta_network = evans.KlumpenhouwerNetwork(meta_network)

permuted_meta_network = []

for i, network in enumerate(meta_network):
    permuted_network = []
    if i == 0:
        rotations = [0, -1, -2, -3, -4, -5, -6, -7]
        for segment, rotation in zip(network, rotations):
            permuted_network.append(segment.rotate(rotation))
        permuted_meta_network.append(permuted_network)
        permuted_network = []
    elif i == 1:
        permutations = [[0, 1, 2, 3, 4, 5, 6, 7], [1, 0, 6, 3, 7, 2, 5, 4], [0, 6, 1, 7, 2, 3, 4, 5], [1, 6, 0, 7, 3, 2, 5, 4], [0, 6, 1, 7, 2, 3, 4, 5], [1, 6, 0, 7, 3, 2, 5, 4]]
        for segment, permutation in zip(network, permutations):
            permuted_network.append(segment.permute(permutation))
        permuted_network = abjad.sequence.rotate(permuted_network, 0-i)
        permuted_meta_network.append(permuted_network)
        permuted_network = []
    elif i == 2:
        permutations = [[0, 1, 2, 3, 4, 5, 6, 7], [1, 6, 3, 7, 0, 4, 5, 2], [3, 6, 4, 7, 1, 5, 2, 0], [4, 6, 5, 7, 3, 2, 0, 1], [5, 2, 6, 4, 7, 0, 1, 3], [2, 0, 6, 5, 7, 1, 3, 4]]
        for segment, permutation in zip(network, permutations):
            permuted_network.append(segment.permute(permutation))
        permuted_network = abjad.sequence.rotate(permuted_network, 0-i)
        permuted_meta_network.append(permuted_network)
        permuted_network = []
    elif i == 3:
        for segment in network:
            permuted_network.append(segment)
        permuted_network = abjad.sequence.rotate(permuted_network, 0-i)
        permuted_meta_network.append(permuted_network)
        permuted_network = []
    elif i == 4:
        permutations = [[0, 1, 2, 3, 4, 5, 6, 7], [5, 6, 3, 7, 4, 1, 0, 2], [2, 1, 6, 0, 7, 3, 5, 4], [4, 6, 3, 7, 5, 1, 2, 0], [0, 1, 6, 2, 7, 3, 4, 5], [5, 6, 3, 7, 4, 1, 0, 2]]
        for segment, permutation in zip(network, permutations):
            permuted_network.append(segment.permute(permutation))
        permuted_network = abjad.sequence.rotate(permuted_network, 0-i)
        permuted_meta_network.append(permuted_network)
        permuted_network = []
    elif i == 5:
        rotations = [0, 1, 2, 3, 4, 5, 6, 7]
        for segment, rotation in zip(network, rotations):
            permuted_network.append(segment.rotate(rotation))
        permuted_network = abjad.sequence.rotate(permuted_network, 0-i)
        permuted_meta_network.append(permuted_network)
        permuted_network = []


# print("BEFORE PRIME FORMS")
# s1 = abjad.Staff()
# for _ in out:
#     stack = evans.Sequence(_.pitch_classes).stack_pitches()
#     s1.append(abjad.Chord([int(x) for x in stack], (1, 1)))
# print("")
# print("AFTER PRIME FORMS")
# s2 = abjad.Staff()
# for _ in out:
#     prime = _.prime_form()
#     s2.append(abjad.Chord([int(x) for x in prime], (1, 1)))
#
# group = abjad.StaffGroup([s2, s1])
# abjad.show(group)

# s3 = abjad.Staff()
# s3.consists_commands.append("Horizontal_bracket_engraver")
# lengths = []
# for chord in abjad.select.chords(s1):
#     chord_group = []
#     seq = [pitch for pitch in chord.written_pitches]
#     for pitch in seq:
#         chord_group.append(abjad.Note(pitch, (1, 4)))
#     lengths.append(len(chord_group))
#     s3.extend(chord_group)
# groups = abjad.select.partition_by_counts(s3, lengths, overhang=False)
# for group in groups:
#     abjad.horizontal_bracket(group)
#     abjad.label.with_set_classes([group])
# abjad.show(s3)
#



### PERSIST Chart
# score = abjad.Score()
# for sub_network in permuted_meta_network:
#     staff = abjad.Staff()
#     staff.consists_commands.append("Horizontal_bracket_engraver")
#     lengths = []
#     for chord in sub_network:
#         chord_group = []
#         for pitch in chord:
#             chord_group.append(abjad.Note(float(pitch), (1, 4)))
#         lengths.append(len(chord_group))
#         staff.extend(chord_group)
#     groups = abjad.select.partition_by_counts(staff, lengths, overhang=False)
#     for group in groups:
#         abjad.horizontal_bracket(group)
#         # abjad.label.with_set_classes([group])
#     score.append(staff)
#
# moment = "#(ly:make-moment 1 10)"
# abjad.setting(score).proportional_notation_duration = moment
#
# block = abjad.Block(name="score")
# block.items.append(score)
#
# style = '"dodecaphonic"'
# layout = abjad.Block(name="layout")
# layout.items.append(rf"\accidentalStyle {style}")
#
# file = abjad.LilyPondFile(
#     items=[
#         r'\include "/Users/gregoryevans/scores/polillas/polillas/build/score_stylesheet.ily"',
#         layout,
#         block,
#     ]
# )
#
# abjad.show(file)


flattened_set_sequence = abjad.sequence.flatten(permuted_meta_network, depth=-1)
flattened_pitch_sequence = []
for _ in flattened_set_sequence:
    flattened_pitch_sequence.extend([float(x) for x in _])

print(flattened_pitch_sequence)
