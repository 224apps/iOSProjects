//
//  ContentView.swift
//  CoreDataDemo
//
//  Created by Abdoulaye Diallo on 12/1/20.
//

import SwiftUI

struct ContentView: View {
    @State var isShowingListModal = false
    var body: some View {
        NavigationView{
            RemindersView()
                .navigationBarTitle(Text("Reminders"))
                .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
