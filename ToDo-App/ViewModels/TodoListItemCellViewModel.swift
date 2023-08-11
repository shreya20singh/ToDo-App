//
//  TodoListItemCellViewModel.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class TodoListItemCellViewModel: ObservableObject{
    
    init() {
        
    }
    
    func toggleIsDone(item: TodoListItem){
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else{
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
    }
    
}
