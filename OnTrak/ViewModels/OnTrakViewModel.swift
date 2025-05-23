//
//  OnTrakItemViewModel.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//
import FirebaseFirestore
import Foundation

//view for all traks
class OnTrakViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    //Delete to do list item
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("traks")
            .document(id)
            .delete()
            
    }
    
}
