//
//  UploadPostViewModel.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/15/23.
//

import SwiftUI
import Firebase

class UploadPostViewModel: ObservableObject {
    
    func uploadPost(caption: String, image: UIImage, completion: FirestoreCompletion){
        guard let user = AuthViewModel.shared.currentUser else { return }
        
        ImageUploader.upload(image: image, type: .post) { imageUrl in
            let data = [ "caption": caption,
                         "timestamp" : Timestamp(date:Date()),
                         "likes" : 0,
                         "imageUrl" : imageUrl,
                         "ownerUid" : user.id ?? "",
                         "ownerImageUrl" : user.profileImageUrl,
                         "ownerUsername" : user.username ] as  [String : Any]
            
            COLLECTION_POSTS.addDocument(data: data) { _ in
                print("DEBUG: - upload data")
            }
        }
    }
    
}
