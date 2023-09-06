//
//  ViewController.swift
//  DesafioAppNome
//
//  Created by Anderson Moura on 05/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var displayNameButton: UIButton!
    
    @IBOutlet weak var resultNameLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configName()
        
    }
    
    @IBAction func tappedDisplayName(_ sender: UIButton) {
        var firstName = firstNameTextField.text ?? ""
        var lastName = lastNameTextField.text ?? ""
        var fullName = "\(firstName) \(lastName)"
        
        resultNameLable.text = fullName
    }
    
    func configName() {
        view.backgroundColor = .lightGray
        resultNameLable.textColor = .red
        displayNameButton.backgroundColor = .blue
        displayNameButton.tintColor = .white
        displayNameButton.setTitle("Exibir Nomes", for: .normal)
    }


}

