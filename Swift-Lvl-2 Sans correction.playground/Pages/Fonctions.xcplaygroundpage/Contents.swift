//: [Previous](@previous)
//:
//: Les fonctions
//:
//: ---
//: #### Chose à connaitre
//:
//: ---
//: * Les fonctions sont des types de closures
//:
//: ---
//:

//: ![Fonctions?](Swift-04.png)
// A compléter très largement en cours
//: Structure: nomDeLaFonction(nomDuParamètre:Type) -> valeurDeRetour
func sayHello(personName: String) -> String
{
    return "Hello, \(personName)"
}

//: Appel:
sayHello(personName: "Toto titi")

//: sans paramètre
func sayHelloWorld() -> String
{
    return "Hello, world"
}

//: sans valeur de retour
func sayGoodbyeToMyLittleFriend(name: String)
{
    "Goodbye, \(name)"
}

//: Retourne un `Tuple`
func getApplicationInfo() -> (name: String, version: String)
{
    return ("Super App", "v1.0")
}
var appInfo = getApplicationInfo()
appInfo.name
appInfo.version

//: Plusieurs param avec un paramètre par défaut
func addMul(firstAdder: Int, secondAdder: Int, multiplier: Int = 1) -> Int
{
    return (firstAdder + secondAdder) * multiplier
}

//: Appel plusieurs param
addMul(firstAdder: 1, secondAdder: 2)



//créer une fonction prenant en paramètre un tableau de Int et renvoie la tableau converti en doubles
//fonction convertToDouble

func convertToDouble(arrayToConvert: [Int]) -> [Double]
{
    var tmpArray = [Double]()
    for value in arrayToConvert{
        tmpArray.append(Double(value))
    }
    return tmpArray
}

var tabInt = [1,2,3]

print(convertToDouble(arrayToConvert: tabInt))

//créer une fonction prennat 3 params
// un tableau de tableaux de Int
// un string
// un float
// elle ne renvoie rien
// elle print le contenu du tableau de tableaux
// le nom du tableau ne doit pas apparaitre lors de l'appel de la fonction

func uselessFunc(_ arrayOfArrayOfInt : [[Int]], unString:String, unFloat:Float){
    for array in arrayOfArrayOfInt{
        for value in array{
            print(value)
        }
    }
}

let arrayOfArrayOfInt = [
    [1,2,3,4,5],
    [2,4,4,4,6,6,6,6,6],
    [5,0,7,3,1,7]
]

uselessFunc(arrayOfArrayOfInt, unString: "uselessString", unFloat: 1.0);
//: [Next](@next)
