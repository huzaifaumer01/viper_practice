//
//  MockDataGenerator.swift
//  Viper Practice
//
//  Created by Huzaifa-Umer on 18/04/2024.
//

import Foundation

final class MockDataGenerator {
    func mockFruitesData() -> (Result<[Fruit], Error>) {
        let mockData =  JSONFileManager.get(fileName: Strings.JSONFiles.fruites, model: [Fruit].self)
        switch mockData {
        case .success(let user):
            return (.success(user))
        case .failure(let error):
            return (.failure(error))
        }
    }
}
