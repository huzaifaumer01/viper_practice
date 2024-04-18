//
//  AppConfiguration.swift
//  Viper Practice
//
//  Created by Huzaifa-Umer on 18/04/2024.
//

import Foundation

final class AppConfiguration {
    
    class var domain: String {
        return "com.huzaifa.Viper-Practice.mock"
    }
    
    class var requestTimeout: Double {
        return 30.0
    }
    
    class var environment: APIConfig {
        return APIConfig(scheme: kApiScheme, host: kApiHost)
    }
}
