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
//: [Next](@next)
