//
//  ProfileViewModel.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/8/23.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
    //MARK: -
    @Published var user: User
    
    //MARK: -
    init(user: User){
        self.user = user
    }
    
    
    func folow(){
        guard let uid = user.id else { return }
        UserService.follow(uid: uid) { _ in
            self.user.isFollowed = true
        }
    }
    
    func unfollow(){
        guard let uid = user.id else { return }
        UserService.unfollow(uid: uid) { _ in
            self.user.isFollowed  = false
        }
    }
    
    func checkIfUserisFollowed(){
        
    }
    
}
