//
//  Fruit.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 02/04/2024.
//

import Foundation

struct Fruit: Codable {

  var name: String? = nil
  var id: Int? = nil
  var family: String? = nil
  var order: String? = nil
  var genus: String? = nil
  var nutritions: Nutritions?

  enum CodingKeys: String, CodingKey {

    case name = "name"
    case id = "id"
    case family = "family"
    case order = "order"
    case genus = "genus"
    case nutritions = "nutritions"
  
  }

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
