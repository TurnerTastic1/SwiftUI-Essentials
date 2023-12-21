//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Turner Naef on 12/20/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }
}

#Preview {
    AppetizerListView()
}
