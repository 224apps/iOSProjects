//
//  SearchView.swift
//  InstagramMock
//
//  Created by Abdoulaye Diallo on 4/29/23.
//

import SwiftUI

struct SearchView: View {
    
    //MARK: -
    @State private var searchText = ""
    
    
    //MARK: -
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
           // PostGridView()
            
            UserListView()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
