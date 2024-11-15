//
//  RepositoryTest.swift
//  the big bang theory
//
//  Created by luis david diaz ramirez on 15/11/24.
//

import Foundation


struct RepositoryTest: RepositoryProtocol{
    
    var url: URL{
        Bundle.main.url(forResource: "BigBangTest", withExtension: "json")!
    }
    
    var urlSave: URL{
        .documentsDirectory.appending(path: "BigBangTest.json")
    }
    
}
