//
//  PreviewViews.swift
//  the big bang theory
//
//  Created by luis david diaz ramirez on 16/11/24.
//

import SwiftUI

extension ContentView{
    static var preview: some View{
        ContentView()
            .environmentObject(BigBangViewModel(repository: RepositoryTest()))
    }
}
