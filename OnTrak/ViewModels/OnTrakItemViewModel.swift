//
//  OnTrakItemViewModel.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

//view model for single on trak list item (each row in trak)
class OnTrakItemViewModel: ObservableObject {
    init(){}
    
    //allows user to complete tasks
    func toggleIsDone(item: OnTrakItem) {
        var itemCopy = item
        itemCopy.toggleDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        //saves completion update or incompletion
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("traks")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
