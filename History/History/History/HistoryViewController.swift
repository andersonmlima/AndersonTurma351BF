//
//  ViewController.swift
//  History
//
//  Created by Anderson Moura on 09/11/23.
//

import UIKit

class HistoryViewController: UIViewController {
    
    var viewModel: HistoryViewModel = HistoryViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchHistory()
    }


}

