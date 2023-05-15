//
//  UserService.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/8/23.
//

import Foundation
import Firebase

struct UserService {
    
    static func follow(uid: String, completion: ((Error?) -> Void)?){
        guard let currentUid = AuthViewModel.shared.userUsession?.uid else { return  }
        COLLECTION_FOLLOWING.document(currentUid).collection("user-following").document(uid).setData([:]) {_ in
            COLLECTION_FOLLOWERS.document(uid).collection("user-followers").document(currentUid).setData([:], completion: completion)
        }
    }
    
    static func unfollow(uid: String, completion: ((Error?) -> Void)?){
        guard let currentUid = AuthViewModel.shared.userUsession?.uid else { return  }
        COLLECTION_FOLLOWING.document(currentUid).collection("user-following").document(uid).delete { _ in
            COLLECTION_FOLLOWERS.document(uid).collection("user-followers").document(currentUid).delete(completion: completion)
        }
    }
    
    static func checkIfUserisFollowed(){
        
    }
}
