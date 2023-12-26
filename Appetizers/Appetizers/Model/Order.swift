//
//  Order.swift
//  Appetizers
//
//  Created by Turner Naef on 12/25/23.
//

import SwiftUI

//final class Order: ObservableObject {
//    
//    @Published var items: [Appetizer] = []
//    
//    var totalPrice: Double {
//        items.reduce(0) { $0 + $1.price }
//    }
//    
//    func add(_ appetizer: Appetizer) {
//        items.append(appetizer)
//    }
//    
//    func deleteItems(at offsets: IndexSet) {
//        items.remove(atOffsets: offsets)
//    }
//}

final class Order: ObservableObject {
    
    @Published var items: [Appetizer: Int] = [:]
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.key.price * Double($1.value) }
    }
    
    func add(_ appetizer: Appetizer) {
        if let count = items[appetizer] {
            items[appetizer] = count + 1
        } else {
            items[appetizer] = 1
        }
    }
    
    func delete(_ appetizer: Appetizer) {
        if let count = items[appetizer], count > 1 {
            items[appetizer] = count - 1
        } else {
            items.removeValue(forKey: appetizer)
        }
    }
}
