//
//  MainTabView.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI

struct MainTabView: View {
    //MARK: -
    let user: User
    
    //MARK: - Life Cycle
    var body: some View {
        NavigationStack {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                UploadPostView()
                    .tabItem {
                        Image(systemName: "plus.square")
                    }
                NotificationView()
                    .tabItem {
                        Image(systemName: "heart")
                    }
                ProfileView(user: user)
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
            .accentColor(.black)
            .navigationTitle("Home")
            .navigationBarItems(leading: logoutButton)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    var logoutButton: some View {
        Button(action: { AuthViewModel.shared.signout() }) {
            Text("Logout")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.black)
            
        }
    }
}
