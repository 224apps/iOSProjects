//
//  ContentView.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: -
    @EnvironmentObject var vm: AuthViewModel
    @State var selectedIndex: Int = 0
    //MARK: -
    var body: some View {
        Group {
            if  vm.userUsession == nil {
                LoginView()
            } else{
                if let user = vm.currentUser {
                    MainTabView(user: user, selectedIndex: $selectedIndex)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
