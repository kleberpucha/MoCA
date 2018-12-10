(deftemplate Resultado
        (slot respuesta
                (type STRING)
                (default ?DERIVE)
        )
    (slot puntaje
                (type NUMBER)
                (default ?DERIVE)
        )
    )

(defrule VisualEspecial
    (pregunta1 ?nombre ?cal)
    =>
    (if(< ?cal 3)
    then
    (printout t ?nombre " Baja  " crlf)
    else
        (if (= ?cal 3)
        then
        (printout t ?nombre " Tiene una puntuacion Media en Visual Especial " crlf)
        (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Media_en_Visual_Especial")
                          (puntaje ?cal)))
        else
        (printout t ?nombre " Tiene una puntuacion Alta en Visual Especial " crlf)
         (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Alta_en_Visual_Especial")
                          (puntaje ?cal)))
    )
    )
)

(defrule identificacion
    (pregunta2 ?nombre ?cal)
    =>
    (if(< ?cal 1)
    then
    (printout t ?nombre " Tiene una puntuacion Baja en identificacion " crlf)
     (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Baja_en_identificacion")
                          (puntaje ?cal)))
    else
        (if (= ?cal 2)
        then
        (printout t ?nombre " Tiene una puntuacion Media en identificacion  " crlf)
        (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Media_en_identificacion")
                          (puntaje ?cal)))
        else
        (printout t ?nombre " Tiene una puntuacion Alta en identificacion  " crlf)
          (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Alta_en_identificacion")
                          (puntaje ?cal)))
    )
    )
)

(defrule atencion
    (pregunta4 ?nombre ?cal)
    =>
    (if(< ?cal 3)
    then
    (printout t ?nombre " Tiene una puntuacion Baja en atencion " crlf)
      (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Baja_en_atencion")
                          (puntaje ?cal)))
    else
        (if (= ?cal 3)
        then
        (printout t ?nombre " Tiene una puntuacion Media en atencion " crlf)
          (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Media_en_atencion")
                          (puntaje ?cal)))
        else
            (if (= ?cal 4)
            then
            (printout t ?nombre " Tiene una puntuacion Media en atencion " crlf)
              (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Media_en_atencion")
                          (puntaje ?cal)))
            else
            (printout t ?nombre " Tiene una puntuacion Alto en atencion " crlf)
              (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Alta_en_atencion")
                          (puntaje ?cal)))
            )
    )
    )
)

(defrule Lenguaje
    (pregunta5 ?nombre ?cal)
    =>
    (if(<= ?cal 1)
    then
    (printout t ?nombre " Tiene una puntuacion Baja en Lenguaje " crlf)
      (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Baja_en_Lenguaje")
                          (puntaje ?cal)))
    else
        (if (= ?cal 2)
        then
        (printout t ?nombre " Tiene una puntuacion Media en Lenguaje " crlf)
           (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Media_en_Lenguaje")
                          (puntaje ?cal)))
        else
        (printout t ?nombre " Tiene una puntuacion Alta  en Lenguaje " crlf)
           (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Alta_en_Lenguaje")
                          (puntaje ?cal)))
    )
    )
)

(defrule abstraccion
    (pregunta6 ?nombre ?cal)
    =>
    (if(<= ?cal 1)
    then
    (printout t ?nombre " Tiene una puntuacion Baja en abstraccion " crlf)
       (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Baja_en_abstraccion")
                          (puntaje ?cal)))
    else
        (if (= ?cal 2)
        then
        (printout t ?nombre " Tiene una puntuacion Alta en abstraccion " crlf)
         (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Alta_en_abstraccion")
                          (puntaje ?cal)))
    )
    )
)

(defrule Recuerdo
    (pregunta7 ?nombre ?cal)
    =>
    (if(<= ?cal 1)
    then
    (printout t ?nombre " Tiene una puntuacion Baja en Recuerdo " crlf)
     (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Baja_en_Recuerdo")
                          (puntaje ?cal)))
    else
        (if (= ?cal 3)
        then
        (printout t ?nombre " Tiene una puntuacion Media en Recuerdo " crlf)
          (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Media_en_Recuerdo")
                          (puntaje ?cal)))
        else
        (printout t ?nombre " Tiene una puntuacion Alta en Recuerdo " crlf)
          (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Alta_en_Recuerdo")
                          (puntaje ?cal)))
    )
    )
)

(defrule Orientacion
    (pregunta8 ?nombre ?cal)
    =>
    (if(< ?cal 3)
    then
    (printout t ?nombre " Tiene una puntuacion Baja en Orientacion " crlf)
      (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Baja_en_Orientacion")
                          (puntaje ?cal)))
    else
        (if (= ?cal 3)
        then
        (printout t ?nombre " Tiene una puntuacion Media en Orientacion " crlf)
            (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Media_en_Orientacion")
                          (puntaje ?cal)))
        else
            (if (= ?cal 4)
            then
            (printout t ?nombre " Tiene una puntuacion Media en Orientacion " crlf)
                (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Media_en_Orientacion")
                          (puntaje ?cal)))
            else
            (printout t ?nombre " Tiene una puntuacion Alto en Orientacion " crlf)
                (assert (Resultado 
        (respuesta "Tiene_una_puntuacion_Alta_en_Orientacion")
                          (puntaje ?cal)))
            )
    )
    )
)
(defrule FinalA
    (total ?nombre ?edad ?cal)
    (test (and(>= ?cal 26)(>= ?edad 12)))
    =>
    (bind ?respA (+ ?cal 1))
    (printout t ?nombre " Su estdo cognitivo es Normal  " ?respA crlf) 
        (assert (Resultado 
        (respuesta "Su_estado_cognitivo_es_Normal")
                          (puntaje ?respA)))
)
(defrule FinalB
    (total ?nombre ?edad ?cal)
    (test (and(<= ?cal 26)(<= ?edad 12)))
    =>
    (printout t ?nombre " Su estdo cognitivo es Bajo  " ?cal crlf) 
      (assert (Resultado 
        (respuesta "Su_estado_cognitivo_es_Bajo")
                          (puntaje ?cal)))
)
(defrule FinalC
    (total ?nombre ?edad ?cal)
    (test (and(= ?cal 30)(>= ?edad 12)))
    =>
    (bind ?respA (+ ?cal 1))
    (printout t ?nombre " Su estdo cognitivo es Normal ++  " ?respA crlf) 
      (assert (Resultado 
        (respuesta "Su_estado_cognitivo_es_Normal")
                          (puntaje ?respA)))
)




