//
//  Screen02ViewController.swift
//  DesafioNavigation02
//
//  Created by Anderson Moura on 14/09/23.
//

import UIKit

class Screen02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    

    @IBAction func tappedNextButton(_ sender: UIButton) {
        let screen03 = UIStoryboard(name: "Screen03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Screen03ViewController") as? Screen03ViewController
        navigationController?.pushViewController(screen03 ?? UIViewController(), animated: true)
    }
    
}
