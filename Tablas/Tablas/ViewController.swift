//
//  ViewController.swift
//  Tablas
//
//  Created by Alberto on 24/12/2019.
//  Copyright © 2019 Alberto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var Table: UITableView!
    
    var contenidoCeldas = ["PF1", "PDF2", "PDF3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Table.dataSource = self
        Table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        celda.textLabel?.text = contenidoCeldas[indexPath.section]
               
        return celda
    }
        

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let idPdfSeleccionado = indexPath.row
        self.performSegue(withIdentifier: "pantalla2Segue", sender: idPdfSeleccionado)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "pantalla2Segue"){
        
            let idPdfSeleccionadoRecibido = sender as! Int
            
            let objPantalla2: ViewControllerPantalla2 = segue.destination as! ViewControllerPantalla2
            
            objPantalla2.nombrePdfRecibido = contenidoCeldas[idPdfSeleccionadoRecibido]
        }
        
    }
    /*
    //Primero convertir el sender a NSIndexPath
      let idPdfSeleccionadoRecibido = sender as! NSIndexPath
    //Después crear otra variable para obtener el numero del row:
        let idx = idPdfSeleccionadoRecibido.row
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if segue.identifier == "pantallaDosSegue" {
                    let idPdfSeleccionadoRecibido = sender as! NSIndexPath
                                let idx = idPdfSeleccionadoRecibido.row
                               let objPantalla2:ViewController2 = segue.destinationViewController as! ViewController2
                    objPantalla2.nombrePdfRecibido = contenidoCeldas[idx]
         }
 */

}

