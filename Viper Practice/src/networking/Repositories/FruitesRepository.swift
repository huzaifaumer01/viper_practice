//
//  FruitesRepository.swift
//  Viper Practice
//
//  Created by Huzaifa-Umer on 18/04/2024.
//

import Foundation

protocol FruitesRepositoryProtocol: AnyObject {
    func fetchFruitesRepository(isMockData: Bool,
                                   completion: @escaping (Result<[Fruit], Error>) -> Void)
}

final class FruitesRepository: FruitesRepositoryProtocol {
    
    let fruitesApi = FruitesApi()
    
    // MARK: - FruitesRepositoryProtocol
    
    func fetchFruitesRepository(isMockData: Bool, completion: @escaping (Result<[Fruit], Error>) -> Void) {
        
        if isMockData {
            let mockData = MockDataGenerator().mockFruitesData()
            completion(mockData)
        } else {
            
            fruitesApi.getFruites { result in
                switch result {
                case .success(let response):
                    completion(.success(response))
                case .failure(let error):
                    completion(.failure(error))
                    print(error.localizedDescription)
                }
            }
        }
    }
}
