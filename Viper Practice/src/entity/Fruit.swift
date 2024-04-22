//
//  Fruit.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 02/04/2024.
//

import Foundation

struct Fruit: Codable {

  var name: String?
  var id: Int?
  var family: String?
  var order: String?
  var genus: String?
  var nutritions: Nutritions?

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    name = try values.decodeIfPresent(String.self, forKey: .name)
    id = try values.decodeIfPresent(Int.self, forKey: .id)
    family = try values.decodeIfPresent(String.self, forKey: .family)
    order = try values.decodeIfPresent(String.self, forKey: .order)
    genus = try values.decodeIfPresent(String.self, forKey: .genus)
    nutritions = try values.decodeIfPresent(Nutritions.self, forKey: .nutritions)
  }

  init() {
  }
}
