//
//  ContentView.swift
//  RecipeListApp
//
//  Created by Sean.Lacey on 3/7/23.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var recipeModel:RecipeModel
    
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading){
                Text("All Recipes")
                    .padding(.top, 40)
                    .font(.largeTitle)
                    .bold()
                
                ScrollView{
                    LazyVStack(alignment: .leading) {
                        ForEach (recipeModel.recipes) { r in
                            NavigationLink(destination: RecipeDetailView(recipe: r)) {
                                HStack(spacing: 20.0) {
                                    Image(r.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .clipped()
                                        .cornerRadius(5)
                                    Text(r.name).foregroundColor(.black)
                                    
                                }
                            }
                        }
                    }
                    
                }
            }
            .navigationBarHidden(true)
            .padding(.leading)
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
