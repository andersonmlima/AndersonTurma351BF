//
//  ViewController.swift
//  DesafioAppNome
//
//  Created by Anderson Moura on 05/09/23.
//

import UIKit

class ViewController: UIViewController {
    
// Declaração de outlets para elementos de interface gráfica
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var displayNameButton: UIButton!
    
    @IBOutlet weak var resultNameLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
// Chamando a função para configurar a interface de usuário
        configName()
        
    }
// Ação executada quando o botão "Exibir Nomes" é tocado
    @IBAction func tappedDisplayName(_ sender: UIButton) {
// Obtendo o texto dos campos de texto de nome e sobrenome ou usando uma string vazia se estiverem nulos
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
// Concatenando o nome completo
        let fullName = "\(firstName) \(lastName)"
        
        resultNameLable.text = fullName
// Verificando se ambos os campos de texto não estão vazios
        if !firstName.isEmpty && !lastName.isEmpty {
// Exibindo o nome completo na etiqueta de resultado
            resultNameLable.text = fullName
        } else {
// Se algum dos campos estiver vazio, exiba uma mensagem de erro
            resultNameLable.text = "Informe todos os campos"
        }
    }
// Função para configurar a aparência inicial dos elementos da interface de usuário
    func configName() {
// Definindo a cor de fundo da visualização principal
        view.backgroundColor = .lightGray
// Definindo a cor do texto da etiqueta de resultado
        resultNameLable.textColor = .red
// Definindo as dicas nos campos de texto
        firstNameTextField.placeholder = "Digite seu nome"
        lastNameTextField.placeholder = "Digite seu sobrenome"
// Configurando a aparência do botão "Exibir Nomes"
        displayNameButton.backgroundColor = .blue
        displayNameButton.tintColor = .white
        displayNameButton.setTitle("Exibir Nomes", for: .normal)
    }


}

