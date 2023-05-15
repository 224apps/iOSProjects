//
//  ProfileActionView.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/2/23.
//

import SwiftUI

struct ProfileActionButtonView: View {
    
    //MARK: -
    @ObservedObject var vm: ProfileViewModel
    
    var isFollowed:Bool { return vm.user.isFollowed ??  false }
    
    //MARK: -
    var body: some View {
        if vm.user.isCurrentUser {
                Button(action: {}) {
                    
                    Text("Edit Profile")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
        } else {
            HStack{
                Button(action: {  isFollowed ? vm.unfollow() :  vm.folow()}) {
                    
                    Text( isFollowed ? "Following" : "Follow")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor( isFollowed ? .black: .white)
                        .background(isFollowed ? .white : .blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: isFollowed ? 1 : 0)
                        )
                }
                Button(action: {}) {
                    
                    Text("Message")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
            }
        }
    }
}

