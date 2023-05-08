//
//  ProfileViewModel.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/8/23.
//

import SwiftUI

class ProfileViewModel: ObservableObject {
    //MARK: -
    let user: User
    
    //MARK: -
    init(user: User){
        self.user = user
    }
    
    
    func folow(){
        print("DEBUG: - follow user..")
    }
    
    func unfollow(){
        print("DEBUG: - Unfollow user..")
    }
    
    func checkIfUserisFollowed(){
        
    }
    
}
