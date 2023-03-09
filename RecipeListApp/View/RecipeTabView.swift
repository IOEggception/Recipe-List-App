//
//  RecipeTabView.swift
//  RecipeListApp
//
//  Created by Sean.Lacey on 3/8/23.
//

import SwiftUI

struct RecipeTabView: View {
    
    var body: some View {
        
        TabView {
            RecipeFeatureView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("Recipe List View")
                    }
                }
        }.environmentObject(RecipeModel())
    }
    
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
