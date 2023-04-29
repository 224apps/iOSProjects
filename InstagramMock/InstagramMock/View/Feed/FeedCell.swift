//
//  FeedCell.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0){
            HStack {
                Image("jetli")
                    .resizable()
                    .scaledToFill()
                    .frame(width:36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("Jet Li")
                    .font(.system(size:14, weight: .semibold))
            }

            
            //Post Image
            HStack {
                Image("sunset")
                    .resizable()
                    .scaledToFill()
                    .frame(maxHeight: 240)
                    .clipped()
                    .cornerRadius(8)
            }
            
            //Action Buttons
            
            HStack(spacing: 16){
                ///heart
                Button(action: {}) {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                }
                ///comment
                
                Button(action: {}) {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                }
                
                /// send
                Button(action: {}) {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .padding(4)
                }
                
            }
            .foregroundColor(.black)
            
            /// caption
            Text("3 likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 2)
            HStack{
                Text("batman ").font(.system(size: 14, weight: .semibold)) + Text("All men have limits. They learn and grow by pushing past those limits, but they will always have limitations to their abilities, knowledge, and understanding. ")
                    .font(.system(size: 15))
            }
            .padding(.horizontal, 8)
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, -2)
            
        }
        .padding(.horizontal, 8)
    }
    
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
