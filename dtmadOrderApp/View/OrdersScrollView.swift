//
//  OrdersScrollView.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

import SwiftUI

struct OrdersScrollView: View {
    
    @State var isWaiting: OrderViewModel.APIWait
        
    @State var orders: [Order]
    
    var body: some View {
        VStack {
            switch isWaiting {
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
            ForEach(orders) { order in
                OrderListItem(order: order)
            }
        }
    }
    
}

