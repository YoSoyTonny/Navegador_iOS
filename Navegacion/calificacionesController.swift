//
//  calificacionesController.swift
//  Navegacion
//
//  Created by Alumno on 9/23/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class CalificacionesController : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var materias : [Materia] = []
    override func viewDidLoad() {
        materias.append(Materia(nombre: "Matemáticas", calificacionPrimerParcial: 7, calificacionSegundoParcial: 8, calificacionTercerParcial: 4, calificacionFinal: 7))
        materias.append(Materia(nombre: "Español", calificacionPrimerParcial: 9, calificacionSegundoParcial: 9, calificacionTercerParcial: 9, calificacionFinal: 9))
        materias.append(Materia(nombre: "Historia", calificacionPrimerParcial: 6, calificacionSegundoParcial: 5, calificacionTercerParcial: 7, calificacionFinal: 6))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMaterias")
        celda?.textLabel?.text = materias[indexPath.row].nombre
        return celda!
    }
    
    @IBOutlet weak var tvCalificaciones: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetallesMateria" {
            let destino = segue.destination as? DetalleMateriaController
            destino?.materia = materias[tvCalificaciones.indexPathForSelectedRow!.row]
        }
    }
    
}
