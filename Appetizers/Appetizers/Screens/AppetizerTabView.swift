//
//  ContentView.swift
//  Appetizers
//
//  Created by Turner Naef on 12/20/23.
//

import SwiftUI

// Network ideas: Alamo fire?

struct AppetizerTabView: View {
    var body: some View {
        TabView() {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerTabView()
}
