//
//  RepositoryProtocol.swift
//  the big bang theory
//
//  Created by luis david diaz ramirez on 15/11/24.
//

import Foundation


protocol RepositoryProtocol {
    var url: URL { get }
    var urlSave: URL { get }
}

extension RepositoryProtocol {
    
    func getJSON<T>() throws -> T where T : Decodable {
        var urlJson = url
        if FileManager.default.fileExists(atPath: urlSave.path){
            urlJson = urlSave
        }
        let data = try Data(contentsOf: urlJson)
        return try JSONDecoder().decode(T.self, from: data)
    }
    
    func saveJSON<T>(_ data: T) throws where T : Encodable {
        let encode = try JSONEncoder().encode(data)
        try encode.write(to: urlSave, options: [.atomic, .completeFileProtection])
    }
}
