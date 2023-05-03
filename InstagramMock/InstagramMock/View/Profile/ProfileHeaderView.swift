//
//  ProfileHeaderView.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/1/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ///profile image
                Image("jackie")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                Spacer()
                
                /// attributes
                HStack(alignment: .center, spacing: 16) {
                    UserStatView(value: 1, title: "Posts")
                    UserStatView(value: 3, title: "Followers")
                    UserStatView(value: 1, title: "Following")
                }
                .padding(.trailing, 32)
            }
            
            Text("Bruce Lee")
                .font(.system(size: 16, weight: .semibold))
                .padding([.leading, .top])
            
            
            Text("Kung Fu Mater || Master")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            
            HStack {
                Spacer()
                ProfileActionButtonView()

                Spacer()
            }
            .padding(.top)
            
            
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
