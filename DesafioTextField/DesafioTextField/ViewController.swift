//
//  ViewController.swift
//  DesafioTextField
//
//  Created by Anderson Moura on 12/09/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    @IBAction func tappedRegisterButton(_ sender: UIButton) {
        if nameTextField.text?.isEmpty == false && addressTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false{
            print("Cadastro realizado!")
        }
    }
    
    func config() {
        view.backgroundColor = .systemPurple
        registerButton.backgroundColor = .systemBlue
        registerButton.tintColor = .black
        registerButton.setTitle("Cadastrar", for: .normal)
        nameTextField.placeholder = "Digite seu nome:"
        addressTextField.placeholder = "Digite seu endereço:"
        passwordTextField.placeholder = "Digite sua senha:"
        passwordTextField.keyboardType = .numberPad
        nameTextField.delegate = self
        addressTextField.delegate = self
        passwordTextField.delegate = self
        
        registerButton.isEnabled = false
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 2.0
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let text = textField.text, text.isEmpty {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 2.0
            } else {
                textField.layer.borderColor = UIColor.lightGray.cgColor
                textField.layer.borderWidth = 1.0
            }
        if nameTextField.hasText && addressTextField.hasText && passwordTextField.hasText {
            registerButton.isEnabled = true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}
