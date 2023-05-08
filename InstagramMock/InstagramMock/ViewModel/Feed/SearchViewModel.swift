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
    func fetchUsers(){
        COLLECTION_USERS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents  else {
                print("No Document")
                return
            }
            
            self.users = documents.compactMap {  return try? $0.data(as: User.self)}
        }
    }
    
    func filteredUsers(_ query: String) -> [User] {
        let lowercasedQuery = query.lowercased()
        return users.filter{
            $0.fullName.lowercased().contains(lowercasedQuery) ||
            $0.username.lowercased().contains(lowercasedQuery)
        }
    }
}
