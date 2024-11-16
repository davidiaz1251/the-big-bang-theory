//
//  BigBangViewModel.swift
//  the big bang theory
//
//  Created by luis david diaz ramirez on 15/11/24.
//

import Foundation

final class BigBangViewModel: ObservableObject{
    let repository: RepositoryProtocol
    
    @Published var episodes: Episodes{
        didSet{
            try? repository.saveJSON(seasons)
        }
    }
    
    @Published var search = ""
    
    var filterSeasons: [Season]{
        seasons.filter{ season in
            if search.isEmpty{
                true
            }else{
                "\(season.number)".localizedCaseInsensitiveContains(search)
            }
        }
    }
    
    var seasons: [Season]{
        Array(Set(episodes.map(\.season)))
            .sorted()
            .map{
                Season(id: $0, number: $0)
            }
    }
    
    init(repository: RepositoryProtocol = Repository()) {
        self.repository = repository
        do{
            self.episodes = try repository.getJSON()
        }catch{
            self.episodes = []
        }
    }
    
}
