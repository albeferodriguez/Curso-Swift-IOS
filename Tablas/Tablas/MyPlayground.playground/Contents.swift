import UIKit

protocol operacionesBasicas {
    
    func Suma()
    
    func Resta()
}

class Computadora{
    
    let CPU:String = "8086"
    
}

class Calculador: Computadora, operacionesBasicas{
    
    func Suma(a:int, b:int){
        print("Estyo sumando )
    }
    
    func Resta(a:int, b:int){
        print ("Estoy restando")
    }
    
}
