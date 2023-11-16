//
//  Order.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

import Foundation

// MARK: - Order
struct Orders: Codable {
    let responseCode, count: Int
    let errorMessage: String
    let results: [Order]
//    let orders: Int?

    enum CodingKeys: String, CodingKey {
        case responseCode = "response_code"
        case count
        case errorMessage = "error_message"
        case results
//        case orders
    }
}

// MARK: - Result
struct Order: Codable, Identifiable {
    
    let id: String
    let items: [Item]
    let purchaser: Purchaser
//    let orders: Int?
}

// MARK: - Item
struct Item: Codable {
    let id, productName: String
    let cost: Double
    let orders: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case productName = "product_name"
        case cost
        case orders
    }
}

// MARK: - Purchaser
struct Purchaser: Codable {
    let id, name, address, phoneNumber: String
    let emailAddress: String
    let orders: Int?

    enum CodingKeys: String, CodingKey {
        case id, name, address
        case phoneNumber = "phone_number"
        case emailAddress = "email_address"
        case orders
    }
}
