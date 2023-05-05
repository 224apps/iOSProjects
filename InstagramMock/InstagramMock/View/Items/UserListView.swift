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
                ForEach(vm.users){ _ in
                    NavigationLink {
                        ProfileView()
                    } label: {
                        UserCell()
                            .padding(.leading)
                    }

                }
            }
        }
    }
}
