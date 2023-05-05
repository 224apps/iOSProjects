//
//  SearchViewModel.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/5/23.
//

import SwiftUI

class SearchViewModel: ObservableObject {
    
    //MARK: -
    @Published var users = [User]()
    
    //MARK: -
    
    init(){
        fetchUsers()
    }
    
    //MARK: -
    func  fetchUsers(){
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents  else { return }
            self.users =  documents.compactMap {  try? $0.data(as: User.self)}
        }
    }
}
