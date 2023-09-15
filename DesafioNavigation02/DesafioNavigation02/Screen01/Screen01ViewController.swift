//
//  ViewController.swift
//  DesafioNavigation02
//
//  Created by Anderson Moura on 14/09/23.
//

import UIKit

class Screen01ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedNextButton(_ sender: UIButton) {
        let screen02 = UIStoryboard(name: "Screen02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Screen02ViewController") as? Screen02ViewController
        navigationController?.pushViewController(screen02 ?? UIViewController(), animated: true)
    }
    
}

