//
//  ViewController.swift
//  Tablas
//
//  Created by Alberto on 24/12/2019.
//  Copyright © 2019 Alberto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Funciones del ciclo de VIDA del ViewController
       override func loadView() {
        super.loadView()
    print("Se activo la func loadView")
    }
        override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    print("Se activo la func viewWillAppear")
    }
        override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    print("Se activo la func viewDidAppear")
    }
        override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
      print("Se activo la func viewWillDisappear")
    }
        override func viewDidDisappear(_ animated: Bool) {
       super.viewDidDisappear(true)
    print("Se activo la func viewDidDisappear")
    }

}

