//
//  APButton.swift
//  Appetizers
//
//  Created by Turner Naef on 12/23/23.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Button {
            print("tapped")
        } label: {
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 250, height: 60)
                .foregroundColor(.white)
                .background(Color.brandPrimary)
                .cornerRadius(10)
        }
        .padding(.bottom, 30)
    }
}

#Preview {
    APButton(title: "test title")
}
