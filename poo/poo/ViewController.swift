//
//  ViewController.swift
//  poo
//
//  Created by Alberto on 20/12/2019.
//  Copyright © 2019 Alberto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    
    var mazdaObject: Mazda?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelTitle.text = "Fábrica de Automóviles"
    }

    @IBAction func createMazdaObject(_ sender: UIButton) {
        mazdaObject = Mazda()
    }
    
    @IBAction func showMazdaProperties(_ sender: UIButton) {
        print(
            "The size of the mazda is \(mazdaObject!.size), it has \(mazdaObject!.numDoors) and it is \(mazdaObject!.color) and it coast \(mazdaObject!.prize)"
        )
    }
    
    @IBAction func turnOnMazda(_ sender: UIButton) {
        mazdaObject!.turnOn()
    }
    @IBAction func speedUpMazda(_ sender: UIButton) {
        mazdaObject!.speedUp()
    }
}

