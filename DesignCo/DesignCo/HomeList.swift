//
//  HomeList.swift
//  DesignCo
//
//  Created by Abdoulaye Diallo on 12/24/19.
//  Copyright © 2019 Abdoulaye Diallo. All rights reserved.
//

import SwiftUI

struct HomeList: View {
    @State var isPresented = false
    var courses = courseData
    var body: some View {
        ScrollView(showsIndicators: false) {
            HStack(spacing:30) {
                ForEach(courses){ item in
                    Button(action: {self.isPresented = true}) {
                        CourseView(title: item.title ,
                                   image: item.image,
                                   color: item.color,
                                   shadowColor: item.shadowColor)
                    }.sheet(isPresented: self.$isPresented) {
                        ContentView()
                    }
                }
            }
        }
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        HomeList()
    }
}

struct CourseView: View {
    var title = ""
    var image = "Illustration1"
    var color = Color("background3")
    var shadowColor = Color("backgroundShawdow3")
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(20)
                .lineLimit(4)
                .padding(.trailing, 50)
            Spacer()
            Image(image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 246, height: 200)
        }
        .background(color)
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: shadowColor, radius: 20, x: 0, y: 20)
    }
}


struct Course: Identifiable {
    var id = UUID()
    var title: String
    var image : String
    var color: Color
    var shadowColor: Color
}


let courseData = [
    Course(
        title: "Build an App with SwiftUI",
        image: "Illustration1",
        color: Color("background3"),
        shadowColor: Color("backgroundShawdow3")
    ),
    Course(
        title: "Design Course",
        image: "Illustration2",
        color: Color("background4"),
        shadowColor: Color("backgroundShawdow4")
    ),
]
