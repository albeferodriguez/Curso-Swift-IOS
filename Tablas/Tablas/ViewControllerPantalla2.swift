//
//  ViewControllerPantalla2.swift
//  Tablas
//
//  Created by Alberto on 24/12/2019.
//  Copyright © 2019 Alberto. All rights reserved.
//

import UIKit
import WebKit

class ViewControllerPantalla2: UIViewController {


    
    
    @IBOutlet var vistaWeb: WKWebView!
    
    var nombrePdfRecibido: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        mostrarPdf()
        
    }
    
    func mostrarPdf(){
        //1. Conseguir direccion archivo PDF
        
        let direccionPdf = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePdfRecibido!, ofType: "pdf", inDirectory: "PDF")!)
        let request = URLRequest(url: direccionPdf)
        
        //2. Transformar archivo pdf a Data
        
        
        //3. Mostrar datos en el Vista Web
        
        vistaWeb.load(request)
        
        
    }

   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
