//
//  LoginViewModel.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login(){
        
        guard validate() else {
            return
        }
        
        //Log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,  !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please enter both an email and password."
            
            return false
        }
        
        //email must have @ and .
        guard email.contains( "@" ) && email.contains( "." ) else {
            errorMessage = "Please enter a valid email address."
            return false
        }
        return true
    }
}
