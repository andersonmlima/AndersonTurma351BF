//
//  Tela02ViewController.swift
//  Navegation
//
//  Created by Anderson Moura on 14/09/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        dismiss(animated: true)
        let screen1 = UIStoryboard(name: "Tela01ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela01ViewController") as? Tela01ViewController
//        screen2?.modalPresentationStyle = .fullScreen
//        present(screen2 ?? UIViewController(), animated: true)
        navigationController?.pushViewController(screen1 ?? UIViewController(), animated: true)
    }
    
    @IBAction func tappedNextButton(_ sender: UIButton) {
        let screen3 = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        
        navigationController?.pushViewController(screen3 ?? UIViewController(), animated: true)
    }
    
}
