//
//  UserListView.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI

struct UserListView: View {
    //MARK: -
    @ObservedObject var vm: SearchViewModel
    @Binding var searchText: String
    
    //MARK: -
    
    var users: [User] {
        return searchText.isEmpty ? vm.users : vm.filteredUsers(searchText)
    }
    //MARK: -
    
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(users){ user in
                    NavigationLink {
                        ProfileView()
                    } label: {
                        UserCell(user: user)
                            .padding(.leading)
                    }

                }
            }
        }
    }
}
