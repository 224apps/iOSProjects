//
//  InstagramMockApp.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI
import Firebase

@main
struct InstagramMockApp: App {
  
    init(){
        FirebaseApp.configure()
    }
   
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel.shared)
        }
    }
}
