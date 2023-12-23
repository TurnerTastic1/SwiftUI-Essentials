//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Turner Naef on 12/23/23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthdate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    
    @Published var alertItem: AlertItem?
    @Published var showingAlert = false
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            showingAlert = true
            return false
        }
        
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            showingAlert = true
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        
        print("Changes saved successfully")
    }
}
