//
//  AuthViewModel.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/4/23.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    @Published var userUsession: FirebaseAuth.User?
    
    static let shared = AuthViewModel()
    
    private init(){
        userUsession = Auth.auth().currentUser
    }
    
    func register(withEmail email: String, password: String, image: UIImage?, fullName: String, username: String){
        
        guard let image = image else { return }
        
        ImageUploader.upload(image: image) { imageUrl in
            
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                guard let user = result?.user else { return }
                self.userUsession = user
                print("Successfully Registered a user")
                
                let data = [ "email" : email, "username" : username, "fullName": fullName, "profileImageUrl": imageUrl ]
                
                Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                    print("Successfully uploaded a user data")
                    self.userUsession = user
                }
            }
        }
        
    }
    
    func login(){
        print("Login")
    }
    
    func signout(){
        userUsession = nil
        try? Auth.auth().signOut()
    }
    
    func fetchUser(){
        print("fetch User")
    }
    
    func resetPassword(){
        print("Reset Password")
    }
}

