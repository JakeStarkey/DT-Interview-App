//
//  DoublePlusTotalCost.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/16/23.
//

import Foundation

extension Double {
    
    static func addTotal(items: [Item]) -> Double {
        let totalCost = items.reduce(0.0) { (result, item) in
            return result + item.cost
        }
        return totalCost
    }
}
