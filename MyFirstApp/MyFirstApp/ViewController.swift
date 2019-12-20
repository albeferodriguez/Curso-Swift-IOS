//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Alberto on 20/12/2019.
//  Copyright © 2019 Alberto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "Hola"
        print("Soy el primer print");
        print("Soy el segundo print");
        print("Soy el tercer print");
    }


}

