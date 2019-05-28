instructor(hector_costa).
instructor(desarrolloWebcom).
instructor(devcode).
instructor(eduonix).
instructor(edumobile_academy).
instructor(jaureguialzo_sarasola).
instructor(juan_de_la_torre).
instructor(codigo_facilito).
instructor(ismael_garcia).
instructor(fernanda_ochoa).
instructor(enrique_hernandez).

categoria(programacion).
categoria(movil).
categoria(desarrollo_web).
categoria(hardware).

curso(introduccion_a_la_programacion_con_pseudocodigo_practico,hector_costa, udemy, programacion).
curso(fundamentos_de_la_programacion, desarrolloWebcom, youtube, programacion).
curso(curso_basico_de_android, devcode, devcode, movil).
curso(learn_html5_programming_from_scratch, eduonix, udemy, desarrollo_web).
curso(c_programming_for_beginners, edumobile_academy, udemy, programacion).
curso(fundamentos_de_programacion_con_java, jaureguialzo_sarasola, udemy, programacion).
curso(cookies_y_sesiones_en_php, juan_de_la_torre, udemy, desarrollo_web ).
curso(primeros_pasos_android, codigo_facilito, codigo_facilito, movil).
curso(curso_gratuito_de_flask, ismael_garcia, codigo_facilito, desarrollo_web).
curso(curso_gratuito_de_arduino, fernanda_ochoa, codigo_facilito, hardware).
curso(introduccion_al_uso_de_la_terminal, enrique_hernandez, codigo_facilito, programacion).

profesorActivo(Profesor) :- 
    curso(_,Profesor,_,_),
    instructor(Profesor).

categoriaDisponible(Categoria) :-
    categoria(Categoria),
    curso(_,_,_,Categoria).