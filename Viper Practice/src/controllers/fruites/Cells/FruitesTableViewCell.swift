//
//  FruitesTableViewCell.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import UIKit

final class FruitesTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.layer.cornerRadius = 16
    }
    
    // MARK: - Public Methods
    
    func configureCell(fruit: Fruit){
        titleLabel.text = fruit.name
        detailLabel.text = fruit.family
    }
}
