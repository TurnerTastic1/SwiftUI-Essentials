//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Turner Naef on 12/21/23.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    var appetizerCount: Int
    
    init(appetizer: Appetizer, appetizerCount: Int = -1) {
        self.appetizer = appetizer
        self.appetizerCount = appetizerCount
    }
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(appetizer.name)
                        .font(.title2)
                        .fontWeight(.medium)
                    
                    Text("$\(appetizer.price, specifier: "%.2f")")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                }
                .padding()
                
                if appetizerCount != -1 {
                    Spacer()
                    Text("x\(appetizerCount)")
                        .fontWeight(.medium)
                }
            }.padding(.trailing, appetizerCount != -1 ? 20 : 0)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer, appetizerCount: 1)
}
