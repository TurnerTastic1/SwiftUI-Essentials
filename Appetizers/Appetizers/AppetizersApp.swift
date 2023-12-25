//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Turner Naef on 12/20/23.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
