//
//  OrderListItem.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

import SwiftUI

struct OrderListItem: View {
    
    let order: Order
    
    var body: some View {
        VStack {
            Text(order.id)
                .font(.title3)
            Text("\(order.items.count) Orders")
            HStack {
                Image(systemName: "person.crop.circle")
                VStack {
                    Text(order.purchaser.name)
                    Text(order.purchaser.address)
                    Text(order.purchaser.emailAddress)
                }
            }
            
        }
    }
}
