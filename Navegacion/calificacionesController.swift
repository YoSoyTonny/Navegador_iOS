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
    
}
