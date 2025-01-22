import abjad
import evans
from abjadext import rmakers


# Lorca's "Cuerpo presente" as rhythm trees. Don't always segment at obvious places
# Try to preserve accent structure but not precisely. (They will undergo manipulation anyway)
# Try to give proportional weight to words I like
# Strophe by strophe gradually decay the recognizeability of the "text"
# Gradually bunch rhythms together by overemphasizing certain words (especially "piedra")


# STROFA 1
# La piedra / es una frente / donde los sueños gimen
line_1 = "La piedra es una frente donde los sueños gimen"

la_piedra = evans.RTMTree(
    [
        4, # was 1
        [2, [1, 2, 1]],
    ]
)

es_una_frente = evans.RTMTree(
    [
        4, # was 1
        [2, [1, 1]],
        [1, [2, 1]],
    ]
)

donde_los_suenos_gimen = evans.RTMTree(
    [
        [2, [2, 1]],
        5, # was 1
        [3, [1, 1]],
        [1, [2, 1]],
    ]
)

# Sin tener agua / curva ni cipreses helados
line_2 = "sin tener agua curva ni cipreses helados"

sin_tener_agua = evans.RTMTree(
    [
        1,
        [5, [2, 1]], # was [2, [2, 1]]
        [3, [1, 1]],
    ]
)

curva_ni_cipreses_helados = evans.RTMTree(
    [
        [1, [2, 1]], # was [4, [2, 1]]
        1,
        [1, [1, 2, 1]], # was [2, [1, 2, 2]]
        [4, [1, 2, 1]],
    ]
)

# La piedra es una espalda / para llevar al tiempo
line_3 = "La piedra es una espalda para llevar al tiempo"

la_piedra_es_una_espalda = evans.RTMTree(
    [
        1, # was 5
        [2, [1, 2, 1]], # was [3, [1, 2, 1]]
        [1, [2, 1]],
        [2, [1, 2, 1]], # was [4, [1, 2, 1]]
    ]
)

para_llevar_al_tiempo = evans.RTMTree(
    [
        [2, [1, 1]],
        [3, [2, 1]],
        1,
        [1, [1, 2, 1]],
    ]
)

# con árboles / de lágrimas y cintas y planetas
line_4 = "con árboles de lágrimas y cintas y planetas"

con_arboles = evans.RTMTree(
    [
        5, # was 1
        [3, [2, 1, 1]],
    ]
)

de_lagrimas_y_cintas_y_planetas = evans.RTMTree(
    [
        1,
        [2, [2, 1, 1]],
        4, # was 1
        [1, [2, 1]],
        6, # was 1
        [1, [1, 2, 1]],
    ]
)

trees = [la_piedra, es_una_frente, donde_los_suenos_gimen, sin_tener_agua, curva_ni_cipreses_helados, la_piedra_es_una_espalda, para_llevar_al_tiempo, con_arboles, de_lagrimas_y_cintas_y_planetas]

rotations = []
for i, rtm in enumerate(trees):
    rotations.append(rtm.rotate_sizes_through_level(
        i, allowable_levels=[1, 2]
    ))
trees.extend(rotations)

rtms = evans.Sequence([
    str(_) for _ in trees
])

# STROFA 2
# Yo he visto lluvias grises hacia las olas
line_5 = "Yo he visto lluvias grises hacia las olas"

# levantando sus tiernos brazos acribillados,
line_6 = "levantando sus tiernos brazos acribillados"

# para no ser cazadas por la piedra tendida
line_7 = "para no ser cazadas por la piedra tendida"

# que desata sus miembros sin empapar la sangre.
line_8 = "que desata sus miembros sin empapar la sangre"

# STROFA 3
# Porque la piedra coge simientes y nublados,
line_9 = "Porque la piedra coge simientes y nublados"

# esqueletos de alondras y lobos de penumbra;
line_10 = "esqueletos de alondras y lobos de penumbra"

# pero no da sonidos, ni cristales, ni fuego,
line_11 = "pero no da sonidos ni cristales ni fuego"

# sino plazas y plazas y otras plazas sin muros.
line_12 = "sino plazas y plazas y otras plazas sin muros"

# X STROFA 4 X - Do not use, I don't care about the context of Ignacio Sánchez Mejías
# Ya está sobre la piedra Ignacio el bien nacido.
# Ya se acabó; ¿que pasa? Contemplad su figura:
# la muerte le ha cubierto de pálidos azufres
# y le ha puesto cabeza de oscuro minotauro.

# STROFA 5
# Ya se acabó. La lluvia penetra por su boca.
line_13 = "Ya se acabó La lluvia penetra por su boca"

# El aire como loco deja su pecho hundido,
line_14 = "El aire como loco deja su pecho hundido"

# y el Amor, empapado con lágrimas de nieve,
line_15 = "y el Amor empapado con lágrimas de nieve"

# se calienta en la cumbre de las ganaderías.
line_16 = "se calienta en la cumbre de las ganaderías"

# STROFA 6
# ¿Qué dicen? Un silencio con hedores reposa.
line_17 = "Qué dicen Un silencio con hedores reposa"

# Estamos con un cuerpo presente que se esfuma,
line_18 = "Estamos con un cuerpo presente que se esfuma"

# con una forma clara que tuvo ruiseñores
line_19 = "con una forma clara que tuvo ruiseñores"

# y la vemos llenarse de agujeros sin fondo.
line_20 = "y la vemos llenarse de agujeros sin fondo"

# STROFA 7
# ¿Quién arruga el sudario? ¡No es verdad lo que dice!
line_21 = "Quién arruga el sudario No es verdad lo que dice"

# Aquí no canta nadie, ni llora en el rincón,
line_22 = "Aquí no canta nadie ni llora en el rincón"

# ni pica las espuelas, ni espanta la serpiente:
line_23 = "ni pica las espuelas ni espanta la serpiente"

# aquí no quiero más que los ojos redondos
line_24 = "aquí no quiero más que los ojos redondos"

# para ver ese cuerpo sin posible descanso.
line_25 = "para ver ese cuerpo sin posible descanso"

# STROFA 8
# Yo quiero ver aquí los hombres de voz dura.
line_26 = "Yo quiero ver aquí los hombres de voz dura"

# Los que doman caballos y dominan los ríos:
line_27 = "Los que doman caballos y dominan los ríos"

# los hombres que les suena el esqueleto y cantan
line_28 = "los hombres que les suena el esqueleto y cantan"

# con una boca llena de sol y pedernales. # wow, this line!
line_29 = "con una boca llena de sol y pedernales"


# STROFA 9
# Aquí quiero yo verlos. Delante de la piedra.
line_30 = "Aquí quiero yo verlos Delante de la piedra"

# Delante de este cuerpo con las riendas quebradas.
line_31 = "Delante de este cuerpo con las riendas quebradas"

# Yo quiero que me enseñen donde está la salida
line_32 = "Yo quiero que me enseñen donde está la salida"

# para este capitán atado por la muerte.
line_33 = "para este capitán atado por la muerte"


# STROFA 10
# Yo quiero que me enseñen un llanto como un río # yum
line_34 = "Yo quiero que me enseñen un llanto como un río"

# que tenga dulces nieblas y profundas orillas,
line_35 = "que tenga dulces nieblas y profundas orillas"

# para llevar el cuerpo de Ignacio y que se pierda # again, I'm not interested in Ignacio
# sin escuchar el doble resuello de los toros.
line_36 = "sin escuchar el doble resuello de los toros"


# STROFA 11
# Que se pierda en la plaza redonda de la luna
line_37 = "Que se pierda en la plaza redonda de la luna"

# que finge cuando niña doliente res inmóvil;
line_38 = "que finge cuando niña doliente res inmóvil"

# que se pierda en la noche sin canto de los peces # hm?
line_39 = "que se pierda en la noche sin canto de los peces"

# y en la maleza blanca del humo congelado.
line_40 = "y en la maleza blanca del humo congelado"


# STROFA 12
# No quiero que le tapen la cara con pañuelos
line_41 = "No quiero que le tapen la cara con pañuelos"

# para que se acostumbre con la muerte que lleva.
line_42 = "para que se acostumbre con la muerte que lleva"

# Vete Ignacio: No sientas el caliente bramido. # no ignacio lines
# Duerme, vuela, reposa: ¡También se muere el mar!
line_43 = "Duerme vuela reposa También se muere el mar"

lines = [
    line_1,
    line_2,
    line_3,
    line_4,
    line_5,
    line_6,
    line_7,
    line_8,
    line_9,
    line_10,
    line_11,
    line_12,
    line_13,
    line_14,
    line_15,
    line_16,
    line_17,
    line_18,
    line_19,
    line_20,
    line_21,
    line_22,
    line_23,
    line_24,
    line_25,
    line_26,
    line_27,
    line_28,
    line_29,
    line_30,
    line_31,
    line_32,
    line_33,
    line_34,
    line_35,
    line_36,
    line_37,
    line_38,
    line_39,
    line_40,
    line_41,
    line_42,
    line_43,
]

morse_tuplets = [evans.Sequence(line).string_to_morse_tuplets() for line in lines]

morse_durations = [evans.Sequence(line).string_to_morse_durations() for line in lines]

# def material_sequence(
#     materials=[0, 1, 2],
#     rotations=[0, 0],
#     extra_counts=[0, 1, 2, 3],
#     preprocessor=None,
# ):
#     def returned_function(divisions, state=state, previous_state=previous_state):
#         time_signatures = [_ for _ in divisions]
#         if preprocessor is not None:
#             durations = [abjad.Duration(_.pair) for _ in divisions]
#             divisions = preprocessor(durations)
#         cyc_materials = evans.CyclicList(materials, forget=False)
#         cyc_rotations = evans.CyclicList(rotations, forget=False)
#         container = abjad.Container()
#         for division in divisions:
#             current_mat = cyc_materials(r=1)[0]
#             if current_mat == 0:
#                 nested_music = evans.make_rtm(
#                     cairn.rtms.rotate(cyc_rotations(r=1)[0]),
#                     rewrite=-1,
#                     treat_tuplets=True,
#                 )([division])
#             elif current_mat == 1:
#                 nested_music = evans.tuplet(
#                     cairn.morse_tuplets[cyc_rotations(r=1)[0]],
#                     rewrite=-1,
#                     treat_tuplets=True,
#                 )([division])
#             elif current_mat == 2:
#                 nested_music = evans.talea(
#                     cairn.morse_durations[cyc_rotations(r=1)[0]].rotate(cyc_rotations(r=1)[0]),
#                     32,
#                     extra_counts=extra_counts,
#                     rewrite=-1,
#                     treat_tuplets=True,
#                 )([division])
#             elif current_mat == 3:
#                 nested_music = evans.make_tied_notes()([division])
#             for component in nested_music:
#                 if isinstance(component, list):
#                     container.extend(component)
#                 else:
#                     container.append(component)
#         music = abjad.mutate.eject_contents(container)
#
#         return music
#
#     return returned_function
