//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Turner Naef on 11/8/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                    // .label is system call for opposite of the system color (dark mode = white and vice versa)
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

//struct FrameworkDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        FrameworkDetailView(framework: MockData.sampleFramework,
//                            isShowingDetailView: .constant(false))
//    }
//}
