//
//  UploadPostView.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI

struct UploadPostView: View {
    //MARK: -
    @State private var selectedImage: UIImage?
    @State private var postImage: Image?
    @State private var captionText: String =  ""
    @State private var imagePickerPresented = false
    
    //MARK: -
    var body: some View {
        VStack {
            
            if postImage == nil {
                Button(action: {imagePickerPresented.toggle()}) {
                    Image("plus_photo")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 180, height: 180)
                        .clipped()
                        .padding(.top, 56)
                        .foregroundColor(.black)
                }
                .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage) {
                    ImagePicker(image: $selectedImage)
                }
            } else {
                HStack(alignment: .top) {
                    if let image = postImage {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 96, height: 96)
                            .clipped()
                            .cornerRadius(5)
                    } else {
                        Image("jetli")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 96, height: 96)
                            .clipped()
                            .cornerRadius(5)
                    }
                
                    TextField("Enter your caption...", text: $captionText)
                }
                .padding()
                
                Button(action: {}) {
                    Text("Share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                .padding()
                
            }
            
            Spacer()
        }
        
        
    }
}

//MARK: - Extension

extension  UploadPostView {
    func loadImage(){
        guard let selectedIamge = selectedImage else { return }
        postImage = Image(uiImage: selectedIamge)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
