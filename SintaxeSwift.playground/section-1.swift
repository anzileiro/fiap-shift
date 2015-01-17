// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var i:Int = 1

i + 1

var str2:String = "string com tipo explicito."

var str3 = "string com tipo inferido."

var str4:String = String()

/* str = nil */

let constante = 2 //constante 3

var strOpcional:String?

var intOpcional:Int?

intOpcional = 2

var outroInt = 2 + intOpcional!

if (intOpcional != nil){
    println("com valor")
}else{
    println("sem valor")
}

if let valorRecuperado = intOpcional{
    println("o valor eh: \(valorRecuperado)")
}

//Opcional com abertura implicita
var optAberturaImplicita:Int! = 1

outroInt = 1 + optAberturaImplicita

var qualquer : AnyObject
qualquer = 1000
qualquer = "daskdjsak"

var caracter : Character = "A"
var float : Float = 1.20000
var double : Double = 2.94
var bool : Bool = true
//var boolean : Boolean = false

let nome = "Steve"
let sobreNome = "Jobs"
var nomeCompleto = nome + sobreNome

if nomeCompleto.isEmpty{
    println("Nome completo esta vazio.")
}

let pontoExclamacao: Character = "!"
nomeCompleto.append(pontoExclamacao)

let numeroA = 3
let mensagem = "\(numeroA) multiplicado por 2 eh = \(numeroA * 2)"

let totalCaracteres = countElements(mensagem)

println("total de caracteres \(totalCaracteres)")

let frase = "uam frase"
let mesmaFrase = "uma frase"

if frase == mesmaFrase{
    println("as strins sao iguais")
}

var frase1 = "prefixo sufixo"

if  frase1.hasPrefix("xo"){
    println("inicia com xm")
}
if frase1.hasSuffix("xo"){
    println("termina com xo")
}

//exercicio

let nomePessoa = "Anderson Anzileiro"
var idade:Int = 20

println("\(nomePessoa) tem \(idade) anos")


let elementos = countElements(nomePessoa)


let tres = 3
let pi = Double(tres) + 0.14159

let meio = "0.5"
let paraFloat = (meio as NSString).floatValue

var numeroStr = "25"
let numeroInt2 = numeroStr.toInt()

if let x = numeroInt2{
    var numeroFloat:Float = Float(numeroInt2!) * 24
    
    println("o resultado é \(numeroFloat)")
}else {
    println("null")
}


var letra = "t"

switch (letra){
    case "a", "e", "i", "o", "u":
        println("vogal")
    default:
        println("nao e vogal")
}


//arrays

var listaCompras = ["Ovos", "Leite", "Massa de pao"]
listaCompras += ["mais 1"]
listaCompras.insert("mais 1 denovo", atIndex: 1)
listaCompras.removeAtIndex(1)
listaCompras

for e in listaCompras{
    println(e)
}

var testeArray = []

listaCompras[0]


if listaCompras.isEmpty{
    println("vazio")
}else{
    println(listaCompras)
}



//Dicionarios

var dicionario:[String:String] = ["Nome":"Anderson", "Idade":"20"]

if let pessoa = dicionario["Nome"]{
    println("\(pessoa)")
}

dicionario.updateValue("Anderson Anzileiro", forKey: "Nome")
println(dicionario)

dicionario.removeValueForKey("Nome")
println(dicionario)

for(k, v) in dicionario{
    println("\(k) = \(v)")
}

var nomesArray: [String] =
[
    "Fulano", "Beltrano", "Ciclandro", "Deltrando"
]

var idadeArray:[Int] =
[
    10, 11, 12, 13
]

var tupla: [String: Int] = [:]

//for var i = 0; i < nomesArray.count; ++i {
  //  tupla[ nomesArray[i] ] = idadeArray[i]
//}

//func somar(a: Int b: Int) -> Int{
  //  return a + b
//}


class Veiculo{
    var velocidadeAtual: Int
    
    init(){
        velocidadeAtual = 0
    }
    
    class func alerta() -> String{
        return "se beber nao case"
    }
    
    func descricao() -> String{
        return "Veiculo"
    }
}

var minhaMoto = Veiculo()
minhaMoto.velocidadeAtual = 200
minhaMoto.descricao()
println(Veiculo.alerta())

class Carro : Veiculo{
    
    var marcha = 0
    var modelo = ""
   
    override func descricao() -> String {
        return super.descricao() + " com \(marcha) marchas"
    }
}

var carro = Carro()

carro.modelo = "Teste"
carro.marcha = 5

println(carro.descricao())


var veiculos = [carro, minhaMoto]

for myItem in veiculos{
    if myItem is Carro{
        println("e carro")
    }else{
        println("e moto")
    }
    
    if let x = myItem as? Carro {
        println("e um \(x.modelo)")
    }
}


//exercicio
class Moto : Veiculo{
    override func descricao() -> String {
        return super.descricao() + " do tipo motocicleta"
    }
}

var motoTeste = Moto()
motoTeste.descricao()



