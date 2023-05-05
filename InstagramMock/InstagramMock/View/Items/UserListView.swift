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
    
    //MARK: -
    
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(vm.users){ user in
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
