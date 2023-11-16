//
//  GetOrdersButton.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

import SwiftUI

struct GetOrdersButton: View {
    
    let getOrders: () -> Void
    
    var body: some View {
        Button("Get 50 Orders") {
            getOrders()
        }
        .buttonStyle(.borderedProminent)
    }
}
