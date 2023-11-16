//
//  GetOrdersButton.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

import SwiftUI

struct GetOrdersButton: View {
    
    @EnvironmentObject var viewModel: OrderViewModel
        
    var body: some View {
        Button("Get 50 Orders") {
            viewModel.getOrders()
        }
        .buttonStyle(.borderedProminent)
    }
}
