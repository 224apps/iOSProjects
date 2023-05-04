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
    
    //MARK: -
    var body: some View {
        Group {
            if  vm.userUsession == nil {
                LoginView()
            } else{
                MainTabView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
