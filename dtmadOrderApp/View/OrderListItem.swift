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
        VStack(alignment: .leading) {
            headerSection
            
            customerSection
            
            Text("Total: $\(String(format: "%.2f", Double.addTotal(items: order.items)))")
                .padding(8)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(.gray.opacity(0.25))
        .cornerRadius(8)
        .multilineTextAlignment(.leading)
    }
    
    var headerSection: some View {
        VStack(alignment: .leading) {
            Text("ID: \(order.id)")
                .font(.caption)
            Text("\(order.items.count) Orders")
                .font(.callout)
        }
        .frame(maxWidth: .infinity)
        .padding(8)
        .background(Color.gray.opacity(0.5))
    }
    
    var customerSection: some View {
        HStack(spacing: 16) {
            Image(systemName: "person.crop.circle")
                .font(.system(size: 50))
            VStack(alignment: .leading) {
                Text(order.purchaser.name)
                Text(order.purchaser.address)
                Text(order.purchaser.emailAddress)
            }
        }
        .frame(maxWidth: .infinity)
    }
    
}
