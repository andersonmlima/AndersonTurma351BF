//
//  main.swift
//  POO351BF
//
//  Created by Anderson Moura on 29/08/23.
//

import Foundation

class Aviao {
    var nome: String = "Jato"
    var companhia: String = "Airbus"
    var capacidade: Int = 80
    
    func voar() {
        print("\(nome) da \(companhia) está voando com capacidade para \(capacidade) passageiros!")
    }
    
    func pousar() {
        print("\(nome) da \(companhia) está pousando.")
    }
}

class Museu {
    var nome: String = "Louvre"
    var localizacao: String = "Paris"
    var numeroExibicoes: Int = 50000
    
    func exibirExposicao() {
        print("Bem vindo ao \(nome) em \(localizacao)! Temos \(numeroExibicoes) exposições para você conhecer.")
    }
    
    func fechar() {
        print("\(nome) em \(localizacao) está fechando suas portas por hoje.")
    }
}

class Foguete {
    var nome: String = "Apolo"
    var fabricante: String = "Nasa"
    var combustivel: String = "Hidrazina"
    
    func lancar() {
        print("\(nome) fabricado pela \(fabricante) está sendo lançado ao espaço com combustível \(combustivel)!")
    }
    
    func abortarLancamento() {
        print("\(nome) teve o lançamento abortado.")
    }
}
