//
//  RegisterViewModel.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

//user registration page
class RegisterViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    //registers user in firebase
    func register(){
        guard validate() else{
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) {[ weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userId)
        }
    }
    
    //store registered user in firebase
    private func insertUserRecord (id: String) {
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    //check if user entered valid data for all fields
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard email.contains( "@" ) && email.contains( "." ) else {
            return false
        }
        
        guard password.count >= 6 else {
            return false // password more than 6 characters
        }
        
        return true
        
    }
    
}
