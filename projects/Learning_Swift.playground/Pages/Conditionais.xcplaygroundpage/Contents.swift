//: [Previous](@previous)

import Foundation

var temperatura: Double = 25

if (temperatura > 30) {
    print("Temperatura está maior que 30 graus")
} else if (20...30).contains(temperatura)
/*(20 < temperatura && temperatura < 30)*/
{
    print("Temperatura está entre 20 e 30 graus")
} else {
    print("Temperatura está menor do que 20 graus")
}


typealias Coord = (x:Float, y: Float)
let coordenadas: Coord = (x:15, y:10)

switch coordenadas {
case (0, 0):
    print("Origem")
case(_,0):
    print("No eixo x")
case(0,_):
    print("No eixo y")
case let (x,y) where x >= 0 && y >= 0:
    print("No primeiro quadrante")
default:
    print("Nulo")
}

var a: Any = 2
a = "Quatro"
