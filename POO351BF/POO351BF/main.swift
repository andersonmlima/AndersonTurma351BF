//
//  main.swift
//  POO351BF
//
//  Created by Anderson Moura on 29/08/23.
//

import Foundation

//MARK: Classe

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

//MARK: Classe + Construtores

// Construtores
// Os construtores tem a finalidade de indicar oque a sua classe necessita de uma valor inicial para seus atributos.
// Caso o seu atributo não tenha um valor inicial, você será obrigado a passar ele atraves do init
// Caso seu atributo TENHA um valor inicial, você não é obrigado a ter que utilizar o init

class Pessoa {
    var nome: String
    var idade: Int
    var peso: Double
    var temCabelo: Bool = true

    init(nome: String, idade: Int, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.peso = peso
    }
}

var caio: Pessoa = Pessoa(nome: "Caio", idade: 21, peso: 80)

print(caio.nome)
print(caio.idade)

var felipe: Pessoa = Pessoa(nome: "Felipe", idade: 31, peso: 70)

print(felipe.nome)
print(felipe.idade)

var alencar: Pessoa = Pessoa(nome: "Alencar", idade: 57, peso: 80)

//MARK: DESAFIO 2

class Smartphone {
    var capacidade: Int
    var modelo: String
    var cor: String
    
    init(capacidade: Int, modelo: String, cor: String) {
        self.capacidade = capacidade
        self.modelo = modelo
        self.cor = cor
    }
    
    func tirarFoto() {
        print("Estou tirando essa foto do meu \(modelo).")
    }
    
    func ligacao() {
        print("A cor do meu iPhone é \(cor).")
    }
}

class PlayStation {
    var versao: String
    var armazenamento: Int
    var cor: String
    
    init(versao: String, armazenamento: Int, cor: String) {
        self.versao = versao
        self.armazenamento = armazenamento
        self.cor = cor
    }
    
    func jogar() {
        print("Estou no meu \(versao) jogando FIFA.")
    }
    
    func reproduzirVideo() {
        print("O armazenamento do meu \(versao) é \(armazenamento)")
    }
}

class Fogao {
    var marca: String
    var numeroBocas: Int
    var tipo: String = "Gás"
    
    init(marca: String, numeroBocas: Int) {
        self.marca = marca
        self.numeroBocas = numeroBocas
    }
    
    func ligar() {
        print("O fogão da \(marca) está ligando...")
    }
    
    func cozinhar() {
        print("Meu fogão do tipo \(tipo) tem \(numeroBocas) bocas para cozinhar!")
    }
}

// Reference Type

//var caio: Pessoa = Pessoa(nome: "Caio", idade: 21, peso: 80)
//var felipe: Pessoa = Pessoa(nome: "Felipe", idade: 31, peso: 70)

//caio = felipe

//print(caio.nome)
//print(caio.idade)

//caio.idade = 40

//print(caio.idade)
//print(felipe.idade)

// CLASSE PAI

class Estadio {
    var nome: String
    var capacidade: Int
    var localizacao: String
    
    init(nome: String, capacidade: Int, localizacao: String) {
        self.nome = nome
        self.capacidade = capacidade
        self.localizacao = localizacao
    }
    
    func descricao() {
        print("Estádio \(nome), Capacidade: \(capacidade), Localização: \(localizacao)")
    }
    
    func realizarEvento() {
        print("Este evento será realizado no estádio \(nome)")
    }
}

// CLASSE FILHA 1

class EstadioFutebol: Estadio {
    var timeCasa: String = "Palmeiras"
    var gramaSintetica: Bool = true
    var quantidadeTorcedores: Int = 45000
    
    func anuncioDoJogo() {
        print("Hoje tem jogo do \(timeCasa) no estádio \(nome)!")
    }
}

// CLASSE FILHA 2

class EstadioShows: Estadio {
    var artistaPrincipal: String
    var generoMusical: String
    var dataShow: String
    
    init(nome: String, capacidade: Int, localizacao: String, artistaPrincipal: String, generoMusical: String, dataShow: String) {
        self.artistaPrincipal = artistaPrincipal
        self.generoMusical = generoMusical
        self.dataShow = dataShow
        
        super.init(nome: nome, capacidade: capacidade, localizacao: localizacao)
    }
    
    func anunciarShows() {
        print("Não perca o show de \(artistaPrincipal) no estádio \(nome) em \(dataShow)!")
    }
}
