//
//  SearchBar.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI

struct SearchBar: View {
    //MARK: -
    @Binding var text: String
    @Binding var isEditing: Bool
    
    //MARK: -
    
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    }
                )
                .onTapGesture {
                    isEditing.toggle()
                }
            
                if isEditing {
                    withAnimation {
                    Button(action: {
                        isEditing.toggle()
                        text = ""
                        UIApplication.shared.endEditing()
                    }) {
                        Text("Cancel")
                            .foregroundColor(.black)
                    }
                    .padding(.trailing, 8)
                    .transition(.move(edge: .trailing))
                }
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("Search..."), isEditing: .constant(true))
    }
}
