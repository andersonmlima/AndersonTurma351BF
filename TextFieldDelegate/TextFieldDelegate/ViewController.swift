//
//  ViewController.swift
//  TextFieldDelegate
//
//  Created by Anderson Moura on 05/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
        
    @IBOutlet weak var myLastNameLable: UILabel!
    
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configName()
    }
    
    @IBAction func tappedChangeName(_ sender: UIButton) {
        nameLabel.text = "Tâmara"
        myLastNameLable.text = "Moura"
        nameLabel.backgroundColor = .black
        nameLabel.textColor = .white
        myLastNameLable.textColor = .white
        myLastNameLable.backgroundColor = .blue
    }
    func configName() {
        nameLabel.text = "Anderson"
        myLastNameLable.text = "Lima"
        changeButton.setTitle("Trocar Nomes", for: .normal)
    }
}

