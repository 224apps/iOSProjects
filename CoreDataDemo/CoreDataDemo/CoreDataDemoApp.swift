//
//  CoreDataDemoApp.swift
//  CoreDataDemo
//
//  Created by Abdoulaye Diallo on 12/1/20.
//

import SwiftUI
import UIKit

@main
struct CoreDataDemoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct CoreDataDemoApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
