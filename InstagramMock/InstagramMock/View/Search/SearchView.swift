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
    @State private var inSearchMode = false
    @ObservedObject var vm = SearchViewModel()
    
    //MARK: -
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText, isEditing: $inSearchMode)
                .padding()
            
            ZStack {
                if inSearchMode {
                    UserListView(vm: vm, searchText: $searchText)
                }else {
                    PostGridView()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
