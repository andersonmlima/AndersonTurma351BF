//
//  ViewController.swift
//  PrimeiroAppLoginAnderson
//
//  Created by Anderson Moura on 19/10/23.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register User
        
        //        Auth.auth().createUser(withEmail: "anderson@icloud.com", password: "123456") { result, error in
        //            if let error = error {
        //                print("Deu ruim emm -> (error.localizedDescription)")
        //            } else {
        //                print("Usuário cadastrado com sucesso!!!")
        //            }
        //        }
        
        // Login
        
        Auth.auth().signIn(withEmail: "anderson@icloud.com", password: "123456") { result, error in
            if let error = error {
                print("Deu ruim no login emm -> (error.localizedDescription)")
            } else {
                print("Usuário logado com sucesso!!!")
            }
        }
        
    }
    
}

