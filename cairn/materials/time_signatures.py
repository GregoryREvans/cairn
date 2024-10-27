import abjad
import evans

series_1 = evans.Sequence(
    [
        [abjad.TimeSignature(_) for _ in [(3, 4), (4, 4), (5, 4), (6, 4)]],
        [abjad.TimeSignature(_) for _ in [(7, 4), (4, 4), (3, 4), (2, 4)]],
    ]
).helianthate(-1, 1)
# +1 rotations

series_2 = evans.Sequence(
    [
        [abjad.TimeSignature(_) for _ in [(5, 8), (7, 8), (4, 4), (9, 8), (11, 8)]],
        [abjad.TimeSignature(_) for _ in [(2, 4), (3, 4), (4, 4), (9, 8)]],
        [abjad.TimeSignature(_) for _ in [(6, 4), (5, 4), (7, 8)]],
    ]
).helianthate(1, -1)
# + 2 rotations

# Phase 1
## + 0
## 01 ##
##

cyc_signatures_01 = evans.CyclicList(series_1.rotate(0).flatten(depth=-1), forget=False)
signatures_01 = cyc_signatures_01(r=20)

signatures_01.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_01 = [2, 4, 7, 17]

reduced_signatures_01 = evans.reduce_fermata_measures(
    signatures_01, fermata_measures_01
)

##
## 02 ##
##

cyc_signatures_02 = evans.CyclicList(series_2.rotate(0).flatten(depth=-1), forget=False)
signatures_02 = cyc_signatures_02(r=13)

signatures_02.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_02 = [8, 10]

reduced_signatures_02 = evans.reduce_fermata_measures(
    signatures_02, fermata_measures_02
)

## + 1
## 03 ##
##

cyc_signatures_03 = evans.CyclicList(series_1.rotate(1).flatten(depth=-1), forget=False)
signatures_03 = cyc_signatures_03(r=7)

signatures_03.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_03 = []

reduced_signatures_03 = evans.reduce_fermata_measures(
    signatures_03, fermata_measures_03
)

## + 2
## 04 ##
##

cyc_signatures_04 = evans.CyclicList(series_2.rotate(2).flatten(depth=-1), forget=False)
signatures_04 = cyc_signatures_04(r=26)

signatures_04.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_04 = [2, 8, 10, 19, 24]

reduced_signatures_04 = evans.reduce_fermata_measures(
    signatures_04, fermata_measures_04
)

## + 2
## 05 ##
##

cyc_signatures_05 = evans.CyclicList(series_1.rotate(2).flatten(depth=-1), forget=False)
signatures_05 = cyc_signatures_05(r=33)

signatures_05.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_05 = []

reduced_signatures_05 = evans.reduce_fermata_measures(
    signatures_05, fermata_measures_05
)

## + 4
## 06 ##
##

cyc_signatures_06 = evans.CyclicList(series_2.rotate(4).flatten(depth=-1), forget=False)
signatures_06 = cyc_signatures_06(r=6)

signatures_06.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_06 = []

reduced_signatures_06 = evans.reduce_fermata_measures(
    signatures_06, fermata_measures_06
)

## + 3
## 07 ##
##

cyc_signatures_07 = evans.CyclicList(series_1.rotate(3).flatten(depth=-1), forget=False)
signatures_07 = cyc_signatures_07(r=1)

signatures_07.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_07 = []

reduced_signatures_07 = evans.reduce_fermata_measures(
    signatures_07, fermata_measures_07
)

# Phase 2
## + 6
## 08 ##
##

cyc_signatures_08 = evans.CyclicList(series_2.rotate(6).flatten(depth=-1), forget=False)
signatures_08 = cyc_signatures_08(r=9)

signatures_08.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_08 = []

reduced_signatures_08 = evans.reduce_fermata_measures(
    signatures_08, fermata_measures_08
)

## + 4
## 09 ##
##

cyc_signatures_09 = evans.CyclicList(series_1.rotate(4).flatten(depth=-1), forget=False)
signatures_09 = cyc_signatures_09(r=5)

signatures_09.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_09 = []

reduced_signatures_09 = evans.reduce_fermata_measures(
    signatures_09, fermata_measures_09
)

## + 8
## 10 ##
##

cyc_signatures_10 = evans.CyclicList(series_2.rotate(8).flatten(depth=-1), forget=False)
signatures_10 = cyc_signatures_10(r=3)

signatures_10.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_10 = []

reduced_signatures_10 = evans.reduce_fermata_measures(
    signatures_10, fermata_measures_10
)

## + 5
## 11 ##
##

cyc_signatures_11 = evans.CyclicList(series_1.rotate(5).flatten(depth=-1), forget=False)
signatures_11 = cyc_signatures_11(r=12)

signatures_11.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_11 = []

reduced_signatures_11 = evans.reduce_fermata_measures(
    signatures_11, fermata_measures_11
)

## + 10
## 12 ##
##

cyc_signatures_12 = evans.CyclicList(
    series_2.rotate(10).flatten(depth=-1), forget=False
)
signatures_12 = cyc_signatures_12(r=15)

signatures_12.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_12 = []

reduced_signatures_12 = evans.reduce_fermata_measures(
    signatures_12, fermata_measures_12
)

## + 6
## 13 ##
##

cyc_signatures_13 = evans.CyclicList(series_1.rotate(6).flatten(depth=-1), forget=False)
signatures_13 = cyc_signatures_13(r=2)

signatures_13.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_13 = []

reduced_signatures_13 = evans.reduce_fermata_measures(
    signatures_13, fermata_measures_13
)

## + 12
## 14 ##
##

cyc_signatures_14 = evans.CyclicList(
    series_2.rotate(12).flatten(depth=-1), forget=False
)
signatures_14 = cyc_signatures_14(r=10)

signatures_14.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_14 = []

reduced_signatures_14 = evans.reduce_fermata_measures(
    signatures_14, fermata_measures_14
)

# Phase 3
## + 7
## 15 ##
##

cyc_signatures_15 = evans.CyclicList(series_1.rotate(7).flatten(depth=-1), forget=False)
signatures_15 = cyc_signatures_15(r=7)

signatures_15.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_15 = []

reduced_signatures_15 = evans.reduce_fermata_measures(
    signatures_15, fermata_measures_15
)

## + 14
## 16 ##
##

cyc_signatures_16 = evans.CyclicList(
    series_2.rotate(14).flatten(depth=-1), forget=False
)
signatures_16 = cyc_signatures_16(r=3)

signatures_16.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_16 = []

reduced_signatures_16 = evans.reduce_fermata_measures(
    signatures_16, fermata_measures_16
)

## + 8
## 17 ##
##

cyc_signatures_17 = evans.CyclicList(series_1.rotate(8).flatten(depth=-1), forget=False)
signatures_17 = cyc_signatures_17(r=2)

signatures_17.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_17 = []

reduced_signatures_17 = evans.reduce_fermata_measures(
    signatures_17, fermata_measures_17
)

## + 16
## 18 ##
##

cyc_signatures_18 = evans.CyclicList(
    series_2.rotate(16).flatten(depth=-1), forget=False
)
signatures_18 = cyc_signatures_18(r=5)

signatures_18.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_18 = []

reduced_signatures_18 = evans.reduce_fermata_measures(
    signatures_18, fermata_measures_18
)

## + 9
## 19 ##
##

cyc_signatures_19 = evans.CyclicList(series_1.rotate(9).flatten(depth=-1), forget=False)
signatures_19 = cyc_signatures_19(r=9)

signatures_19.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_19 = []

reduced_signatures_19 = evans.reduce_fermata_measures(
    signatures_19, fermata_measures_19
)

## + 18
## 20 ##
##

cyc_signatures_20 = evans.CyclicList(
    series_2.rotate(18).flatten(depth=-1), forget=False
)
signatures_20 = cyc_signatures_20(r=2)

signatures_20.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_20 = []

reduced_signatures_20 = evans.reduce_fermata_measures(
    signatures_20, fermata_measures_20
)

## + 10
## 21 ##
##

cyc_signatures_21 = evans.CyclicList(
    series_1.rotate(10).flatten(depth=-1), forget=False
)
signatures_21 = cyc_signatures_21(r=5)

signatures_21.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_21 = []

reduced_signatures_21 = evans.reduce_fermata_measures(
    signatures_21, fermata_measures_21
)

# Phase 4
## + 20
## 22 ##
##

cyc_signatures_22 = evans.CyclicList(
    series_2.rotate(20).flatten(depth=-1), forget=False
)
signatures_22 = cyc_signatures_22(r=5)

signatures_22.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_22 = []

reduced_signatures_22 = evans.reduce_fermata_measures(
    signatures_22, fermata_measures_22
)

## + 11
## 23 ##
##

cyc_signatures_23 = evans.CyclicList(
    series_1.rotate(11).flatten(depth=-1), forget=False
)
signatures_23 = cyc_signatures_23(r=43)

signatures_23.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_23 = []

reduced_signatures_23 = evans.reduce_fermata_measures(
    signatures_23, fermata_measures_23
)

## + 22
## 24 ##
##

cyc_signatures_24 = evans.CyclicList(
    series_2.rotate(22).flatten(depth=-1), forget=False
)
signatures_24 = cyc_signatures_24(r=20)

signatures_24.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_24 = []

reduced_signatures_24 = evans.reduce_fermata_measures(
    signatures_24, fermata_measures_24
)

# Phase 5
## + 12
## 25 ##
##

cyc_signatures_25 = evans.CyclicList(
    series_1.rotate(12).flatten(depth=-1), forget=False
)
signatures_25 = cyc_signatures_25(r=98)

signatures_25.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_25 = []

reduced_signatures_25 = evans.reduce_fermata_measures(
    signatures_25, fermata_measures_25
)

# Phase 6
## + 24
## 26 ##
##

cyc_signatures_26 = evans.CyclicList(
    series_2.rotate(24).flatten(depth=-1), forget=False
)
signatures_26 = cyc_signatures_26(r=4)

signatures_26.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_26 = []

reduced_signatures_26 = evans.reduce_fermata_measures(
    signatures_26, fermata_measures_26
)

## + 13
## 27 ##
##

cyc_signatures_27 = evans.CyclicList(
    series_1.rotate(13).flatten(depth=-1), forget=False
)
signatures_27 = cyc_signatures_27(r=3)

signatures_27.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_27 = []

reduced_signatures_27 = evans.reduce_fermata_measures(
    signatures_27, fermata_measures_27
)

## + 26
## 28 ##
##

cyc_signatures_28 = evans.CyclicList(
    series_2.rotate(26).flatten(depth=-1), forget=False
)
signatures_28 = cyc_signatures_28(r=2)

signatures_28.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_28 = []

reduced_signatures_28 = evans.reduce_fermata_measures(
    signatures_28, fermata_measures_28
)

## + 14
## 29 ##
##

cyc_signatures_29 = evans.CyclicList(
    series_1.rotate(14).flatten(depth=-1), forget=False
)
signatures_29 = cyc_signatures_29(r=6)

signatures_29.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_29 = []

reduced_signatures_29 = evans.reduce_fermata_measures(
    signatures_29, fermata_measures_29
)

## + 28
## 30 ##
##

cyc_signatures_30 = evans.CyclicList(
    series_2.rotate(28).flatten(depth=-1), forget=False
)
signatures_30 = cyc_signatures_30(r=7)

signatures_30.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_30 = []

reduced_signatures_30 = evans.reduce_fermata_measures(
    signatures_30, fermata_measures_30
)

## + 15
## 31 ##
##

cyc_signatures_31 = evans.CyclicList(
    series_1.rotate(15).flatten(depth=-1), forget=False
)
signatures_31 = cyc_signatures_31(r=2)

signatures_31.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_31 = []

reduced_signatures_31 = evans.reduce_fermata_measures(
    signatures_31, fermata_measures_31
)

## + 30
## 32 ##
##

cyc_signatures_32 = evans.CyclicList(
    series_2.rotate(30).flatten(depth=-1), forget=False
)
signatures_32 = cyc_signatures_32(r=6)

signatures_32.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_32 = []

reduced_signatures_32 = evans.reduce_fermata_measures(
    signatures_32, fermata_measures_32
)

# Phase 7
## + 16
## 33 ##
##

cyc_signatures_33 = evans.CyclicList(
    series_1.rotate(16).flatten(depth=-1), forget=False
)
signatures_33 = cyc_signatures_33(r=26)

signatures_33.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_33 = []

reduced_signatures_33 = evans.reduce_fermata_measures(
    signatures_33, fermata_measures_33
)

## + 32
## 34 ##
##

cyc_signatures_34 = evans.CyclicList(
    series_2.rotate(32).flatten(depth=-1), forget=False
)
signatures_34 = cyc_signatures_34(r=18)

signatures_34.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_34 = []

reduced_signatures_34 = evans.reduce_fermata_measures(
    signatures_34, fermata_measures_34
)

## + 17
## 35 ##
##

cyc_signatures_35 = evans.CyclicList(
    series_1.rotate(17).flatten(depth=-1), forget=False
)
signatures_35 = cyc_signatures_35(r=9)

signatures_35.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_35 = []

reduced_signatures_35 = evans.reduce_fermata_measures(
    signatures_35, fermata_measures_35
)

## + 34
## 36 ##
##

cyc_signatures_36 = evans.CyclicList(
    series_2.rotate(34).flatten(depth=-1), forget=False
)
signatures_36 = cyc_signatures_36(r=35)

signatures_36.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_36 = []

reduced_signatures_36 = evans.reduce_fermata_measures(
    signatures_36, fermata_measures_36
)

## + 18
## 37 ##
##

cyc_signatures_37 = evans.CyclicList(
    series_1.rotate(18).flatten(depth=-1), forget=False
)
signatures_37 = cyc_signatures_37(r=34)

signatures_37.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_37 = []

reduced_signatures_37 = evans.reduce_fermata_measures(
    signatures_37, fermata_measures_37
)

## + 36
## 38 ##
##

cyc_signatures_38 = evans.CyclicList(
    series_2.rotate(36).flatten(depth=-1), forget=False
)
signatures_38 = cyc_signatures_38(r=9)

signatures_38.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_38 = []

reduced_signatures_38 = evans.reduce_fermata_measures(
    signatures_38, fermata_measures_38
)

## + 19
## 39 ##
##

cyc_signatures_39 = evans.CyclicList(
    series_1.rotate(19).flatten(depth=-1), forget=False
)
signatures_39 = cyc_signatures_39(r=36)

signatures_39.append(abjad.TimeSignature((1, 4)))  # for ending skip

fermata_measures_39 = []

reduced_signatures_39 = evans.reduce_fermata_measures(
    signatures_39, fermata_measures_39
)

##
## total ##
##

all_signatures = evans.join_time_signature_lists(
    [
        reduced_signatures_01,
        reduced_signatures_02,
        reduced_signatures_03,
        reduced_signatures_04,
        reduced_signatures_05,
        reduced_signatures_06,
        reduced_signatures_07,
        reduced_signatures_08,
        reduced_signatures_09,
        reduced_signatures_10,
        reduced_signatures_11,
        reduced_signatures_12,
        reduced_signatures_13,
        reduced_signatures_14,
        reduced_signatures_15,
        reduced_signatures_16,
        reduced_signatures_17,
        reduced_signatures_18,
        reduced_signatures_19,
        reduced_signatures_20,
        reduced_signatures_21,
        reduced_signatures_22,
        reduced_signatures_23,
        reduced_signatures_24,
        reduced_signatures_25,
        reduced_signatures_26,
        reduced_signatures_27,
        reduced_signatures_28,
        reduced_signatures_29,
        reduced_signatures_30,
        reduced_signatures_31,
        reduced_signatures_32,
        reduced_signatures_33,
        reduced_signatures_34,
        reduced_signatures_35,
        reduced_signatures_36,
        reduced_signatures_37,
        reduced_signatures_38,
        reduced_signatures_39,
    ]
)
