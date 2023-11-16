//
//  URLSession.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

import Foundation

extension URLSession {
    
    func object<Object: Codable>(for url: URLRequest) async throws -> Object {
        let (data, _) = try await data(for: url)
        return try JSONDecoder().decode(Object.self, from: data)
    }
    
}
