//
//  Repository.swift
//  the big bang theory
//
//  Created by luis david diaz ramirez on 15/11/24.
//

import Foundation


struct Repository: RepositoryProtocol{
    var url: URL{
        Bundle.main.url(forResource: "BigBang", withExtension: "json")!
    }
    
    var urlSave: URL{
        .documentsDirectory.appending(path: "BigBang.json")
    }
}
