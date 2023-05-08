//
//  User.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/5/23.
//

import FirebaseFirestoreSwift

struct User : Decodable, Identifiable {
    let username: String
    let email:String
    let profileImageUrl: String
    let fullName: String
    @DocumentID var id: String?
}
