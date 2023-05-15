//
//  ImageUploader.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/4/23.
//

import UIKit
import FirebaseStorage


enum UploadType {
    
    case profile
    case post
    
    var  filePath: StorageReference {
        let fileName = NSUUID().uuidString
        switch self  {
            case .profile:
                return Storage.storage().reference(withPath: "/profile_images/\(fileName)")
            case .post:
                return Storage.storage().reference(withPath: "/post_images/\(fileName)")
                
        }
    }
}

struct ImageUploader {
    
    static func upload(image: UIImage, type: UploadType, completion: @escaping (String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        let ref = type.filePath
        
        ref.putData(imageData, metadata: nil) { _, error in
            if let error = error  {
                print("DEBUG: - Failed to upload image \(error.localizedDescription)")
                return
            }
            
            print("Successfully Uploaded an image...")
            
            
            ref.downloadURL { url, _ in
                guard let imageURL = url?.absoluteString else { return }
                completion(imageURL)
            }
        }
    }
}
