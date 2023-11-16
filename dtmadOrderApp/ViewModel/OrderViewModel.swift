//
//  OrderViewModel.swift
//  dtmadOrderApp
//
//  Created by jacob starkey on 11/15/23.
//

import Foundation

class OrderViewModel: ObservableObject {
    
    @Published var orders = [Order]()
    @Published var isWaiting: APIWait = .notWaiting
    
    func getOrders() {
        isWaiting = .waiting
        
        Task { [weak self] in
            do {
                let orders = try await OrderAPIHandler.getOrders()
                    await MainActor.run { [weak self] in
                        self!.isWaiting = .notWaiting
                        self?.orders = orders
                    }
                }
            catch {
                await MainActor.run { [weak self] in
                    print(error)
                    self?.isWaiting = .failed
                    
                }
            }
        }
    }
    
    
    
    
}

extension OrderViewModel {
    
    enum APIWait {
        case notWaiting
        case waiting
        case failed
    }
    
}
