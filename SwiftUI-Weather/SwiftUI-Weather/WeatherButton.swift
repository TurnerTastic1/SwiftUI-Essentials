//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Turner Naef on 11/8/23.
//

import SwiftUI

struct WeatherButtonView: View {

    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10.0)
            .opacity(0.8)
    }
}
