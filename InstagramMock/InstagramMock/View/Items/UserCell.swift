//
//  UserCell.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI
import Kingfisher

struct UserCell: View {
    //MARK: -
    let user: User
    
    //MARK: -
    var body: some View {
        HStack {
            
            KFImage(URL(string: user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            ///Vstack username , fullname
            VStack(alignment: .leading) {
                Text(user.username)
                    .font(.system(size: 14, weight: .semibold))
                
                Text(user.fullname)
                    .font(.system(size: 14))
            }
            Spacer()
        }
    }
}
