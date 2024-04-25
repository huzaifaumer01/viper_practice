//
//  FruitDetailViewController.swift
//  Viper Practice
//
//  Created by Huzaifa-Umer on 22/04/2024.
//

import UIKit

class FruitDetailViewController: 
    UIViewController,
    UITableViewDataSource,
    FruitDetailViewProtocol {
    
    

    @IBOutlet weak var tableView: UITableView!
    var presenter : FruitDetailPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Strings.Title.fruiteDetail
        tableView.dataSource = self
        presenter?.loadData()
    }
    
    // MARK: - FruitDetailViewProtocol
    
    func displayFruitDetail() {
        tableView.reloadData()
    }
    
    // MARK: - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 4 : 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.register(FruitDetailRowTableViewCell.self, indexPath: indexPath)
            switch indexPath.row {
            case 0:
                cell.leftLabel.text = "Name"
                cell.rightLabel.text = presenter?.fruit.name
            case 1:
                cell.leftLabel.text = "Family"
                cell.rightLabel.text = presenter?.fruit.family
            case 2:
                cell.leftLabel.text = "Order"
                cell.rightLabel.text = presenter?.fruit.order
            default:
                cell.leftLabel.text = "Genus"
                cell.rightLabel.text = presenter?.fruit.genus
            }
            return cell
        default:
            let cell = tableView.register(FruitDetailRowTableViewCell.self, indexPath: indexPath)
            switch indexPath.row {
            case 0:
                cell.leftLabel.text = "Calories"
                cell.rightLabel.text = String(format: "%.2f", presenter?.fruit.nutritions?.calories ?? 0.0)
            case 1:
                cell.leftLabel.text = "Fat"
                cell.rightLabel.text = String(format: "%.2f", presenter?.fruit.nutritions?.fat ?? 0.0)
            case 2:
                cell.leftLabel.text = "Sugar"
                cell.rightLabel.text = String(format: "%.2f", presenter?.fruit.nutritions?.sugar ?? 0.0)
            case 3:
                cell.leftLabel.text = "Carbohydrates"
                cell.rightLabel.text = String(format: "%.2f", presenter?.fruit.nutritions?.carbohydrates ?? 0.0)
            default:
                cell.leftLabel.text = "Protein"
                cell.rightLabel.text = String(format: "%.2f", presenter?.fruit.nutritions?.protein ?? 0.0)
            }
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Attributes" : "Nutritions"
    }
}
