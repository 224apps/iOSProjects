//
//  LoginView.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 5/3/23.
//

import SwiftUI

struct LoginView: View {
    
//MARK: -
    @State private var email = ""
    @State private var password = ""
    
    //MARK: -
    var body: some View {
        NavigationStack {
            ZStack {
                /// background color
                LinearGradient(
                    gradient: Gradient(colors:[Color.purple, Color.blue]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    
                    Image("instagram_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 100)
                        .foregroundColor(.white)
                    /// email
                    CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    
                    /// password
                    CustomSecureField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal, 32)
                    
                    /// forgot password
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {}) {
                            Text("Forgot password ?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.trailing, 28)
                        }
                    }
                    /// sign in
                    Button(action: {}) {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .clipShape(Capsule())
                            .padding()
                    }
                    
                    Spacer()
                    
                    /// Do not have an account
                    
                    Button(action: {}) {
                        HStack {
                            Text("Don't have an account?")
                                .font(.system(size: 14))
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                            
                        }
                        .foregroundColor(.white)
                    }
                    .padding(.bottom, 32)
                    
                }
            }
            
        }
    }
}






struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
