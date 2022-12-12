//
//  API.swift
//  star-wars-characters
//
//  Created by Thiago Martins on 11/12/22.
//

import Foundation

class API {
    let url = URL(string: "https://swapi.dev/api/people/")
    
    public func getCharacters(completion: @escaping(_ characters: [Character]?) -> ()) {
        guard let url = url
        else {
            completion(nil)
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: { data, response, error in
            
            guard error == nil else {
                print(error?.localizedDescription)
                completion(nil)
                return
            }
            
            guard let jsonData = data else {
                print("Data return is empty")
                completion(nil)
                return
            }
            
            guard let result = try? JSONDecoder().decode(Result.self, from: jsonData) else {
                print("Serialization Error")
                completion(nil)
                return
            }
            
            completion(result.results)
        })
        
        task.resume()
    }
    
}
