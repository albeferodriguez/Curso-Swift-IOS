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
    
    var mazdaObjectMini: MazdaMini?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelTitle.text = "Fábrica de Automóviles"
    }

    @IBAction func createMazdaObject(_ sender: UIButton) {
        mazdaObjectMini = MazdaMini()
    }
    
    @IBAction func showMazdaProperties(_ sender: UIButton) {
        print(
            "The size of the mazda is \(mazdaObjectMini!.size), it has \(mazdaObjectMini!.numDoors) and it is \(mazdaObjectMini!.color) and it coast \(mazdaObjectMini!.prize) and his charge porcentage is \(mazdaObjectMini!.chargePorcentage)"
        )
    }
    
    @IBAction func chargeMazda(_ sender: UIButton) {
    }
    @IBAction func turnOnMazda(_ sender: UIButton) {
        mazdaObjectMini!.turnOn()
    }
    @IBAction func speedUpMazda(_ sender: UIButton) {
        mazdaObjectMini!.speedUp()
    }
}

