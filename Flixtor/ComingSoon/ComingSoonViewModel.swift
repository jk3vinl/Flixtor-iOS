//
//  ComingSoonViewModel.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-13.
//

import Foundation

class ComingSoonViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
