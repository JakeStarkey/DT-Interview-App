//
//  Order.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

import Foundation

// MARK: - Result
struct Order: Codable, Identifiable {
    
    let id: String
    let items: [Item]
    let purchaser: Purchaser
}

// MARK: - Item
struct Item: Codable {
    let id, productName: String
    let cost: Double

    enum CodingKeys: String, CodingKey {
        case id
        case productName = "product_name"
        case cost
    }
}

// MARK: - Purchaser
struct Purchaser: Codable {
    let id, name, address: String
    let phoneNumber: String
    let emailAddress: String

    enum CodingKeys: String, CodingKey {
        case id, name, address
        case phoneNumber = "phone_number"
        case emailAddress = "email_address"
    }
}
