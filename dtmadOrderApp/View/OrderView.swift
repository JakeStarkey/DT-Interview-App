//
//  OrderView.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var viewModel: OrderViewModel
    
    var body: some View {
        VStack {
            GetOrdersButton()
            Spacer()
            OrdersScrollView()
            Spacer()
        }
    }
}
