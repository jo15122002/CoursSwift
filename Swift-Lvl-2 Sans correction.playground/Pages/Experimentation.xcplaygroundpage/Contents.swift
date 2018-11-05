//: [Previous](@previous)

import Foundation


protocol AuthenticationProtocol {
    func key(p:String)
    func password(p:String)
    func cipher() -> String
}

struct AES128:AuthenticationProtocol {
    func key(p: String) {}
    func password(p: String) {}
    func cipher() -> String {
        // Truc super compliqué
        return "Chiffré en 128"
    }
}

struct AES256:AuthenticationProtocol {
    func key(p: String) {}
    func password(p: String) {}
    func cipher() -> String {
        // Truc super compliqué
        return "Chiffré en 256"
    }
}

class Wifi<TypeDeChiffrement> {
    var systemeDeChiffrement:TypeDeChiffrement? = nil
    init(chiffrement:TypeDeChiffrement) {
        systemeDeChiffrement = chiffrement
    }
}

let wifi = Wifi<AES128>(chiffrement: AES128())
wifi.systemeDeChiffrement?.cipher()

class Volet<TypeDeComSansFil> {
    var systemDeComSansFil:TypeDeComSansFil
    init(sys:TypeDeComSansFil) {
        systemDeComSansFil = sys
    }
}

let volet = Volet<Wifi>(sys: Wifi<AES256>(chiffrement:AES256()))
volet.systemDeComSansFil.systemeDeChiffrement?.cipher()

//: [Next](@next)
