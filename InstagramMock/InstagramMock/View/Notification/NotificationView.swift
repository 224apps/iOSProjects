//
//  NotificationView.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/1/23.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 20){
                ForEach(0..<20) { item in
                    NotificationCell()
                        .padding(.top)
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
