//
//  OrderView.swift
//  Appetizers
//
//  Created by Turner Naef on 12/20/23.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        let total = 0.0
        
        NavigationView {
            VStack {
                List {
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())
                
                Button {
                    print("order placed")
                } label: {
                    APButton(title: "$9.99 - Place Order")
                }
                .padding(.bottom, 25)
            }
                .navigationTitle("Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
