//
//  JokesData.swift
//  Jokes
//
//  Created by İhsan Elkatmış on 20.08.2022.
//

import Foundation

// MARK: - Sfs
struct Welcome: Identifiable,Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable,Codable {
    let id: Int
    let joke: String
    let categories: [String]
}


