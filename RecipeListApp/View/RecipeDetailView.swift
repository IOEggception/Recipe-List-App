//
//  RecipeDetailView.swift
//  RecipeListApp
//
//  Created by Sean.Lacey on 3/8/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                VStack(alignment: .leading){
                    Text("Ingredients").font(.headline).padding(.vertical, 5)
                    
                    ForEach(recipe.ingredients) { item in
                        Text("- " + item.name)
                            .padding(.bottom, 1.0)
                            
                            
                    }
                }
                .padding(.horizontal)
                
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Directions").font(.headline).padding(.vertical, 5)
                    
                    ForEach(0..<recipe.directions.count, id:\.self) {index in
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5.0)
                    }
                }
                .padding(.horizontal)
            }
            
        }.navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        //Create a dummy recipe and pas it into the detail view so that we can see it
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
