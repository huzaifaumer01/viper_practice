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
    var fruites = [Fruit]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        presenter?.loadView()
    }

}

extension FruitesViewController : FruitesViewProtocol {
    func displayFruites(_ fruites: [Fruit]) {
        self.fruites.append(contentsOf: fruites)
        DispatchQueue.main.async {[weak self] in
            self?.tableView.reloadData()
        }
    }
}

extension FruitesViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruites.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.register(FruitesTableViewCell.self, indexPath: indexPath)
        cell.configureCell(fruit: fruites[indexPath.row])
        return cell
    }
}
