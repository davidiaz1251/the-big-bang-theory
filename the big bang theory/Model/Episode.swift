//
//  BigBang.swift
//  the big bang theory
//
//  Created by luis david diaz ramirez on 15/11/24.
//

import Foundation

struct Season: Codable, Identifiable, Hashable{
    let id: Int
    let number: Int
}

struct Episode: Codable, Identifiable{
    let id: Int
    let url: URL
    let name: String
    let season: Int
    let number: Int
    let airdate: String
    let runtime: Int
    let image: String
    let summary: String
}

typealias Episodes = [Episode]

