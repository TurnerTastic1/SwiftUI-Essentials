//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Turner Naef on 12/23/23.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        Button {
            isShowingDetail = false
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    XDismissButton(isShowingDetail: .constant(true))
}
