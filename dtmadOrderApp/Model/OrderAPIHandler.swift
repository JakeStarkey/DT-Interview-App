//
//  OrderAPIHandler.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

// Could set URLQueryParameters, but when you're only getting one that never changes there shouldn't be too much to worry about

import Foundation

struct OrderAPIHandler {
    
    static func getOrders() async throws -> [Order] {
        
        enum OrderAPIError: Error {
            case invalidURL
        }
        
        guard let url = URL(string:
            "http://dtmad-store.up.railway.app/api/v1/orders?count=50")
        else { throw OrderAPIError.invalidURL}
        
        var request = URLRequest(url: url)
        request.setValue("UndYxaTF7VnzVGQRYjAvzgtwvKXbrbBrDtZ5KQQbj0j6GXW1BU1BRk7aTrcvATHu", forHTTPHeaderField: "X-Api-Key")
                
        struct ResultWrapper<Object: Codable>: Codable {
            let results: [Order]
        }
        
        let result: ResultWrapper<Order> = try await URLSession.shared.object(for: request)
        return result.results
    }
}
