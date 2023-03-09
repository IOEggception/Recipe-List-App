//
//  ContentView.swift
//  RecipeListApp
//
//  Created by Sean.Lacey on 3/7/23.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var recipeModel = RecipeModel()
    
    var body: some View {
        NavigationView {
            List(recipeModel.recipes) { r in
                
                NavigationLink(destination: RecipeDetailView(recipe: r)) {
                    HStack(spacing: 20.0) {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                        
                    }
                }
            }.navigationBarTitle("All Recipes")
        }
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
