//
//  ViewController.swift
//  AppMVC
//
//  Created by Anderson Moura on 25/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var data: [DataModel] = [] // Preencha esta array com dados apropriados
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        loadData()
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "knowMoreCell", bundle: nil), forCellReuseIdentifier: "FirstCell")
        tableView.register(UINib(nibName: "userViewCell", bundle: nil), forCellReuseIdentifier: "SecondCell")
    }
    
    func loadData() {
        // Preencha a array data com os dados apropriados aqui
        data = [
            DataModel(title: "Título Célula 1", paragraph: "Texto Célula 1", imageName: "imagem1", additionalProperty: "Propriedade1"),
            DataModel(title: "Título Célula 2", paragraph: "Texto Célula 2", imageName: "imagem2", additionalProperty: "Propriedade2"),
            // Adicione mais instâncias de DataModel conforme necessário
        ]
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = data[indexPath.row]
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath) as! knowMoreCell
            cell.titleLabel.text = model.title
            cell.paragraphTextView.text = model.paragraph
            cell.lockerImageView.image = UIImage(named: model.imageName)
            // Configurar outros elementos da primeira célula
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as! userViewCell
            cell.nameLabel.text = model.title
            // Configurar outros elementos da segunda célula
            return cell
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension // Para altura dinâmica baseada no conteúdo
    }
}
