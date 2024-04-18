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
    
    func fetchFruitesRepository(isMockData: Bool, completion: @escaping (Result<[Fruit], Error>) -> Void) {
        
        if isMockData {
            let mockData = MockDataGenerator().mockFruitesData()
            completion(mockData)
        } else {
            let apiConfig = APIConfig(scheme: kApiScheme,
                                              host: kApiHost)
            let apiFetcher = APIFetcher()
            let api = API(apiConfig: apiConfig, apiFetcher: apiFetcher)

            api.getFruites { result in
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
