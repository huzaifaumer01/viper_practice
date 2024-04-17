//
//  Nutritions.swift
//  Viper Practice
//
//  Created by ahsan shabir on 02/04/2024.
//

import Foundation

struct Nutritions: Codable {

  var calories      : Float? = nil
  var fat           : Float? = nil
  var sugar         : Float? = nil
  var carbohydrates : Float? = nil
  var protein       : Float? = nil

  enum CodingKeys: String, CodingKey {

    case calories      = "calories"
    case fat           = "fat"
    case sugar         = "sugar"
    case carbohydrates = "carbohydrates"
    case protein       = "protein"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    calories      = try values.decodeIfPresent(Float.self , forKey: .calories)
    fat           = try values.decodeIfPresent(Float.self , forKey: .fat)
    sugar         = try values.decodeIfPresent(Float.self , forKey: .sugar)
    carbohydrates = try values.decodeIfPresent(Float.self , forKey: .carbohydrates)
    protein       = try values.decodeIfPresent(Float.self , forKey: .protein)
 
  }

  init() {

  }
}