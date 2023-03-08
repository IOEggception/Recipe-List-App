//
//  RecipeModel.swift
//  RecipeListApp
//
//  Created by Sean.Lacey on 3/7/23.
//

import Foundation

class RecipeModel:ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService.getLocalData()
    }
    
}
