//
//  OrderView.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

import SwiftUI

struct OrderView: View {
    
    @ObservedObject var viewModel: OrderViewModel
    
    var body: some View {
        VStack {
            GetOrdersButton(getOrders: viewModel.getOrders)
            Spacer()
            OrdersScrollView(
                isWaiting: viewModel.isWaiting,
                orders: viewModel.orders
            )
            Spacer()
        }
    }
}
