//
//  Nutritions.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 02/04/2024.
//

import Foundation

struct Nutritions: Codable {

  var calories: Float?
  var fat: Float?
  var sugar: Float?
  var carbohydrates: Float?
  var protein: Float?

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    calories = try values.decodeIfPresent(Float.self , forKey: .calories)
    fat = try values.decodeIfPresent(Float.self , forKey: .fat)
    sugar = try values.decodeIfPresent(Float.self , forKey: .sugar)
    carbohydrates = try values.decodeIfPresent(Float.self , forKey: .carbohydrates)
    protein = try values.decodeIfPresent(Float.self , forKey: .protein)
 
  }

  init() {
  }
}
