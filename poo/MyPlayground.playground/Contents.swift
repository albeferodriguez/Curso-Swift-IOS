import UIKit

class User {
    
    var edad:Int = 24
    let nombre:String = "Alberto"
    var colorCamiseta:String = ""
    
    var color = Colores()
    colorCamiseta = color.colorAzul
    func Greeting() -> String{
        return "Hola soy \(nombre) y mi edad es \(edad) y mi camiseta es \(colorCamiseta)"
    }
}



var userObject:User = User()

userObject.Greeting()

var nombre:String = userObject.nombre


class Colores {
    
    var colorAzul:String = "Azul"
    var colorRojo:String = "Rojo"
    
}



