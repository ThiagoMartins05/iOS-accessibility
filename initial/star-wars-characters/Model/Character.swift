//
//  Character.swift
//  star-wars-characters
//
//  Created by Thiago Martins on 11/12/22.
//

import Foundation

struct Character: Codable {
    let name: String
    let birthYear: String
    let eyeColor: String
    let height: String
    let mass: String
    let films: [String]
    let species: [String]
    
    enum CodingKeys: String, CodingKey {
        case name
        case birthYear = "birth_year"
        case eyeColor = "eye_color"
        case height
        case mass
        case films
        case species
    }
}
