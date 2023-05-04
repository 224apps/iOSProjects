//
//  CustomTextField.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/4/23.
//

import SwiftUI

struct CustomTextField: View {
    
    //MARK: -
    @Binding var text: String
    var placeholder: Text
    var imageName: String = ""
    
    //MARK: -
    var body: some View {
        ZStack(alignment: .leading)  {
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 30)
            }
            
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                
                TextField("", text: $text)
            }
        }

    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant("email"), placeholder: Text("Email"), imageName: "envelope")
    }
}
