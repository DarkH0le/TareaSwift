import UIKit
/*:
# Playground - Actividad 3
* Tipos de datos
* Asociación de tipos
* Arreglos y Diccionarios
*/


/*: 
### Actividad de Tipos de datos
A) Declarar cuatro variables con tres diferentes tipos de datos, cada uno que corresponda a una numero entero, un numero decimal (flotante), una cadena de texto, realizando la asignación explicita y la asignación inferida
*/
var entero:Int = Int()
var flotante:Float = Float()
var double:Double = Double()
var cadena:String = String()

var entero2 = 1
var flotante2 = 1.1
var cadena2 = "cadena"
var double2 = 2.2





/*:
### Asociación de tipos
A) Declara el tipo de dato por asociación para un tipo de dato String
*/
var string3:String = String()
//: B) Declara el tipo de dato por asociación para un tipo de dato  Número entero.
var entero3:Int = Int()


/*: 
### Arreglos y Diccionarios
A) Crea la variable "numeros" de tipo Array con números consecutivos del 1 a 10.
*/
var numeros:Array<Int> = Array(1...10)
//: B) Crea la variable "diasSemana" de tipo Dictionary con la relación numero:día Ej. 1:"Lunes"

var directory:Dictionary<String, Int> = Dictionary<String, Int>()

directory = ["Lunes":1]
/*:
### Condicionales y Ciclos
A) Declarar la variable "datos" con los valores [3,6,9,2,4,1]
*/
var datos = [3,6,9,2,4,1]
//: B) realizar el recorrido de la variable "datos" con la instrucción "for"
for dato in datos {
    print("El dato que se muetra es: \(dato)")
}
//: C) Encontrar los valores menores a 5
for dato in datos {
    if dato > 5 {
        print("El dato mayor que 5: \(dato)")
    }

}




