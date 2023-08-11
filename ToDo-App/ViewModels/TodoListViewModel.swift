//
//  TodoListViewModel.swift
//  ToDo-App
//
//  Created by Aerologix Aerologix on 8/9/23.
//

import Foundation
import FirebaseFirestore

class TodoListViewModel: ObservableObject{
    @Published var showingNewItemView = false
    private let userId: String
    init(userId: String){
        self.userId = userId
    }
    
    func delete(itemId: TodoListItem.ID){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(self.userId)
            .collection("todos")
            .document(itemId)
            .delete()
    }
}
