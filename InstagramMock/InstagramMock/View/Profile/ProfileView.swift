//
//  ProfileView.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI

struct ProfileView: View {

    //MARK: -
    let user: User
    @ObservedObject var vm: ProfileViewModel
    
    //MARK: -
    init(user: User) {
        self.user = user
        self.vm = ProfileViewModel(user: user)
    }
    
    //MARK: - Life Cycle
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                /// Header
                ProfileHeaderView(vm: vm)
                PostGridView()
            }
        }
    }
}
