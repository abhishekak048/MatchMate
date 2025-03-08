//
//  WebService.swift
//  MatchMate
//
//  Created by Abhishek Kumar on 06/03/25.
//

import Foundation

enum NetworkError:Error {
    case badUrl
    case NoInternet
    case badRequest
    case decodingError
}


class WebService {
    
    private var baseURL :URL
    
    init(baseURL: URL) {
        self.baseURL = baseURL
    }
    
    
    func getUserInfo() async throws -> [Result] {
        guard let getapi  = URL(string: Endpoints.userinfo.path, relativeTo: baseURL) else {
            throw NetworkError.badUrl
        }
        let (data, response) = try await URLSession.shared.data(from:getapi)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.badRequest
        }
        if let responseString = String(data: data, encoding: .utf8) {
            print("Response Data: \(responseString)")
        } else {
            print("Failed to convert data to string")
        }
        do {
            let decodedResponse = try JSONDecoder().decode(UserInfo.self, from: data)
            return decodedResponse.results
        } catch {
            print("Error decoding response: \(error)")
            throw NetworkError.decodingError
        }
    }
}
