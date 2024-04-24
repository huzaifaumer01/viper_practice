//
//  FruitesViewController.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import UIKit

final class FruitesViewController: 
    UIViewController,
    UITableViewDataSource,
    UITableViewDelegate,
    FruitesViewProtocol{
    
    @IBOutlet weak var tableView: UITableView!
    var presenter : FruitesPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Strings.Title.fruites
        tableView.dataSource = self
        tableView.delegate = self
        presenter?.loadData()
    }

    // MARK: - FruitesViewProtocol
    
    func displayFruites() {
        DispatchQueue.main.async {[weak self] in
            self?.tableView.reloadData()
        }
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.fruites.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.register(FruitesTableViewCell.self, indexPath: indexPath)
        if let fruit = presenter?.fruites {
            cell.configureCell(fruit: fruit[indexPath.row])
        }
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {        
        if let fruit = presenter?.fruites {
            presenter?.didSelectFruit(with: fruit[indexPath.row], fromView: self)
        }
    }
}
