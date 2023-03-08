//
//  DataService.swift
//  RecipeListApp
//
//  Created by Sean.Lacey on 3/7/23.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        // Parse local json path
        let filePath = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        
        guard filePath != nil else {
            return [Recipe]()
        }
        
        //create url
        let url = URL(filePath: filePath!)
        
        //create data object
        do {
            let data = try Data(contentsOf: url)
        
            //decode the data
            let decoder = JSONDecoder()
            do{
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                recipeData.forEach { recipe in
                    recipe.id = UUID()
                }
                
                return recipeData
            }
            catch {
                print("Error decoding data to object")
            }
            
            //add the unique id
            
            
            //return the recipes
        }
        catch {
            print("Error getting data from url")
        }
        
        return [Recipe]()
    }
    
}
