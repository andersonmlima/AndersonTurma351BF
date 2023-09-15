//
//  ViewController.swift
//  Navegation
//
//  Created by Anderson Moura on 14/09/23.
//

import UIKit

class Tela01ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tappedScreenButton(_ sender: UIButton) {
        let screen2 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
//        screen2?.modalPresentationStyle = .fullScreen
//        present(screen2 ?? UIViewController(), animated: true)
        navigationController?.pushViewController(screen2 ?? UIViewController(), animated: true)
    }
}

