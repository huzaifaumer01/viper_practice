//
//  FruitesApi.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 21/04/2024.
//

import Foundation

protocol FruitesApiProtocol {
   func getFruites(completion: @escaping (Result<[Fruit],HTTPError>) -> Void)
}

final class FruitesApi: FruitesApiProtocol {
    
    // MARK: - FruitesApiProtocol
    func getFruites(completion: @escaping (Result<[Fruit],HTTPError>) -> Void) {
        let apiConfig = APIConfig(scheme: kApiScheme,
                                          host: kApiHost)
        let apiFetcher = APIFetcher()
        let api = API(apiConfig: apiConfig, apiFetcher: apiFetcher, apiPath: Routes.fruites.callAsFunction())
        
        api.get { result in
            completion(result)
        }
    }
}
