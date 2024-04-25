//
//  HTTPClient.swift
//  NetworkLayer
//
//  Created by Malek TRABELSI on 06/01/2023.
//

import Foundation

protocol HTTPClientProtocol {
    func request<T: Decodable>(request: URLRequest,
                               completion: @escaping (Result<T, HTTPError>) -> Void)
}

final class APIFetcher: HTTPClientProtocol {
    
    // MARK: - HTTPClientProtocol
    
    func request<T: Decodable>(request: URLRequest, completion: @escaping (Result<T, HTTPError>) -> Void) {

        URLSession.shared.dataTask(with: request) { data, urlResponse, error in

            // 1 check the response
            guard let urlResponse = urlResponse as? HTTPURLResponse, (200...299).contains(urlResponse.statusCode) else {
                completion(.failure(.failedResponse))
                return
            }

            // 2 check the data
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }

            // 3 Decode the data
            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedData))
            } catch let error {
                print(error)
                completion(.failure(.failedDecoding))
            }
        }.resume()
    }
}
