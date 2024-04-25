//
//  JSONFileManager.swift
//  Viper Practice
//
//  Created by Huzaifa-Umer on 18/04/2024.
//

import Foundation

final class JSONFileManager {
    
    class func get<T: Codable>(fileName name: String?, model: T.Type) ->  Result<T,Error> {
        
        guard let fileName = name,
              !fileName.isEmpty else {
                  return .failure(NSError(domain: AppConfiguration.domain, code: 404, userInfo: [NSLocalizedDescriptionKey : Strings.Error.errorWhileReadingMockFile]))
              }
        do {
            if let bundlePath = Bundle.main.path(forResource: name, ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let decodedObject = try decoder.decode(T.self, from: jsonData)
                return .success(decodedObject)
                
            } else {
                return .failure(NSError(domain: AppConfiguration.domain, code: 404, userInfo: [NSLocalizedDescriptionKey : Strings.Error.errorWhileReadingMockFile]))
            }
        } catch {
            print(error)
            return .failure(error)
        }
    }
}
