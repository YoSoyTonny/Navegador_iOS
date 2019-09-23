//
//  Materia.swift
//  Navegacion
//
//  Created by Alumno on 9/23/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Materia
{
    var nombre : String?
    var calificacionPrimerParcial : Int?
    var calificacionSegundoParcial : Int?
    var calificacionTercerParcial : Int?
    var calificacionFinal : Int?
    
    init (nombre: String, calificacionPrimerParcial : Int,
          calificacionSegundoParcial : Int, calificacionTercerParcial : Int,
          calificacionFinal : Int)
    {
        self.calificacionPrimerParcial = calificacionPrimerParcial
        self.calificacionSegundoParcial = calificacionSegundoParcial
        self.calificacionTercerParcial = calificacionTercerParcial
        self.calificacionFinal = calificacionFinal
    }
}
