//
//  NotificationCell.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI

struct NotificationCell: View {
    //MARK: -
    
    @State private var showPostImage = false
    
    //MARK: -
    var body: some View {
        HStack {
            Image("jackie")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            Text("batman ").font(.system(size: 14, weight: .semibold)) + Text("liked one of your posts. ")
                .font(.system(size: 15))
            Spacer()
            
            if showPostImage {
                Image("jackie")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
        
            } else {
                Button(action: {}) {
                    Text("Following")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(.blue)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                }
            }
            
            
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
