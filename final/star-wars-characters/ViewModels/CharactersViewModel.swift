//
//  CharactersViewModel.swift
//  star-wars-characters
//
//  Created by Thiago Martins on 13/12/22.
//

import Foundation

class CharactersViewModel {

    var characters: [Character] = []
    
    func fetchData(completion: @escaping(() -> ())) {
        API.getCharacters(completion: { characters in
            guard let charactersList = characters else { return }
            self.characters = charactersList
            completion()
        })
    }
}
