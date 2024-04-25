//
//  API.swift
//  NetworkLayer
//
//  Created by Malek TRABELSI on 08/01/2023.
//

import Foundation

protocol APIProtocol {
   func get<T: Decodable>(completion: @escaping (Result<T ,HTTPError>) -> Void)
}

final class API: APIProtocol {
    private let apiConfig: APIConfig
    private let apiFetcher: HTTPClientProtocol
    private let apiPath: String

    init(apiConfig: APIConfig, apiFetcher: HTTPClientProtocol, apiPath: String) {
        self.apiConfig = apiConfig
        self.apiFetcher = apiFetcher
        self.apiPath = apiPath
    }
    
    // MARK: - APIProtocol
    
    func get<T: Decodable>(completion: @escaping (Result<T ,HTTPError>) -> Void) {

        var components = URLComponents()
        components.scheme = apiConfig.scheme
        components.host = apiConfig.host
        components.path = apiPath

        guard let url = components.url else {
            completion(.failure(.invalidUrl))
            return
        }

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = HTTPMethod.GET.callAsFunction()

        apiFetcher.request(request: urlRequest) { result in
            completion(result)
        }
    }
}
