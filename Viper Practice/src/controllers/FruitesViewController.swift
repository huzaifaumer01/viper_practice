//
//  FruitesViewController.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import UIKit

class FruitesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var presenter : FruitesPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        presenter?.loadView()
    }

}

extension FruitesViewController : FruitesViewProtocol {
    func displayFruites() {
        DispatchQueue.main.async {[weak self] in
            self?.tableView.reloadData()
        }
    }
}

extension FruitesViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getFruites().count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.register(FruitesTableViewCell.self, indexPath: indexPath)
        let fruites = presenter!.getFruites()
        cell.configureCell(fruit: fruites[indexPath.row])
        return cell
    }
}
