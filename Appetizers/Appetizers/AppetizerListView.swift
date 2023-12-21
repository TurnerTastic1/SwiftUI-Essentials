//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Turner Naef on 12/20/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView{
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
