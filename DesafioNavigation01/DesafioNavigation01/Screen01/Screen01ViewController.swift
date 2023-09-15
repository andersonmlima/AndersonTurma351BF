//
//  ViewController.swift
//  DesafioNavigation01
//
//  Created by Anderson Moura on 14/09/23.
//

import UIKit

class Screen01ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedNextButton(_ sender: UIButton) {
        let screen02 = UIStoryboard(name: "Screen02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Screen02ViewController") as? Screen02ViewController
        
        screen02?.modalPresentationStyle = .fullScreen
        present(screen02 ?? UIViewController(), animated: true)
    }
    
    @IBAction func tappedNextDefaultButton(_ sender: UIButton) {
        let screen02 = UIStoryboard(name: "Screen02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Screen02ViewController") as? Screen02ViewController
        
        present(screen02 ?? UIViewController(), animated: true)
    }
}

