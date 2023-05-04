//
//  ImageUploader.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/4/23.
//

import UIKit
import FirebaseStorage

struct ImageUploader {
    
    static func upload(image: UIImage, completion: @escaping (String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        let fileName = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_images/\(fileName)")
        
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
