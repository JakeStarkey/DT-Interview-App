//
//  OrdersScrollView.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

import SwiftUI

struct OrdersScrollView: View {
    
    @EnvironmentObject var viewModel: OrderViewModel
        
    var body: some View {
        VStack {
            switch viewModel.isWaiting {
                case .notWaiting:
                    orderSearch
                case .waiting:
                    ProgressView()
                case .failed:
                        Text("There was an error while searching. Try again later.")
            }
        }
        
    }
    
    private var orderSearch: some View {
        ScrollView {
                ForEach(viewModel.orders) { order in
                    OrderListItem(order: order)
                }
            
            
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 8)
    }
    
}

