//
//  ContentView.swift
//  the big bang theory
//
//  Created by luis david diaz ramirez on 15/11/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var bigbangVM: BigBangViewModel
    var body: some View {
        NavigationStack{
            List{
                ForEach(bigbangVM.filterSeasons){ season in
                    NavigationLink(value: season) {
                        Image("season\(season.number)")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(12)
                            .shadow(radius: 5)
                    }
                    
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Big Bang Theory")
            .navigationDestination(for: Season.self) { season in
                Text("\(season.number)")
            }
            .searchable(text: $bigbangVM.search, prompt: "Buscar Temporada")
        }
    }
}

#Preview {
    ContentView.preview
}
