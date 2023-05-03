//
//  ProfileView.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                /// Header
                ProfileHeaderView()
                PostGridView()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
