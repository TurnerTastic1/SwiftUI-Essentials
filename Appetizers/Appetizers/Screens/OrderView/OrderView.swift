//
//  OrderView.swift
//  Appetizers
//
//  Created by Turner Naef on 12/20/23.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items.keys.sorted(by: { $0.name < $1.name }), id: \.self) { appetizer in
                            AppetizerListCell(appetizer: appetizer, appetizerCount: order.items[appetizer] ?? 0)
                        }
                        .onDelete { indexSet in
                            indexSet.forEach { index in
                                let appetizer = order.items.keys.sorted(by: { $0.name < $1.name })[index]
                                order.delete(appetizer)
                            }
                        }
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "It seems lonely in here...")
                }
            }
                .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView()
}
