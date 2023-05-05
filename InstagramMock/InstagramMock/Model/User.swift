//
//  User.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/5/23.
//

import FirebaseFirestoreSwift

struct User : Decodable {
    let username: String
    let email:String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
}
