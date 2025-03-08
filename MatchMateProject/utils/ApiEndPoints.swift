//
//  ApiEndPoints.swift
//  MatchMate
//
//  Created by Abhishek Kumar on 06/03/25.
//

import Foundation

enum Endpoints {
    
    case userinfo
    
    var path: String {
        switch self {
            case .userinfo:
            return "/api/?results=10"
        }
    }
}

struct Configuration {
    
    lazy var environment: AppEnvironment = {
        
        // read value from environment variable
        guard let env = ProcessInfo.processInfo.environment["ENV"] else {
            return AppEnvironment.dev
        }
        return AppEnvironment.dev
        
    }()
    
}

enum AppEnvironment: String {
    
    case dev
    
    var baseURL: URL {
        switch self {
            case .dev:
                return URL(string: "https://randomuser.me")!
        }
    }
    
}
